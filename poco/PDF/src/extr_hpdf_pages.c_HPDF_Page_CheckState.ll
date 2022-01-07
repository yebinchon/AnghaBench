; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pages.c_HPDF_Page_CheckState.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pages.c_HPDF_Page_CheckState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@HPDF_INVALID_OBJECT = common dso_local global i32 0, align 4
@HPDF_OSUBCLASS_PAGE = common dso_local global i32 0, align 4
@HPDF_OCLASS_DICT = common dso_local global i32 0, align 4
@HPDF_INVALID_PAGE = common dso_local global i32 0, align 4
@HPDF_PAGE_INVALID_GMODE = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HPDF_Page_CheckState(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %7 = icmp ne %struct.TYPE_7__* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @HPDF_INVALID_OBJECT, align 4
  store i32 %9, i32* %3, align 4
  br label %39

10:                                               ; preds = %2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @HPDF_OSUBCLASS_PAGE, align 4
  %16 = load i32, i32* @HPDF_OCLASS_DICT, align 4
  %17 = or i32 %15, %16
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = load i32, i32* @HPDF_INVALID_PAGE, align 4
  store i32 %20, i32* %3, align 4
  br label %39

21:                                               ; preds = %10
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_6__*
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %21
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @HPDF_PAGE_INVALID_GMODE, align 4
  %36 = call i32 @HPDF_RaiseError(i32 %34, i32 %35, i32 0)
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %21
  %38 = load i32, i32* @HPDF_OK, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %31, %19, %8
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @HPDF_RaiseError(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
