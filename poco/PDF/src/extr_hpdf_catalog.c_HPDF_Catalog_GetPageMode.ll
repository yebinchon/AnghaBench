; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_catalog.c_HPDF_Catalog_GetPageMode.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_catalog.c_HPDF_Catalog_GetPageMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"PageMode\00", align 1
@HPDF_OCLASS_NAME = common dso_local global i32 0, align 4
@HPDF_PAGE_MODE_USE_NONE = common dso_local global i32 0, align 4
@HPDF_PAGE_MODE_NAMES = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HPDF_Catalog_GetPageMode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 0, i64* %5, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @HPDF_OCLASS_NAME, align 4
  %8 = call i64 @HPDF_Dict_GetItem(i32 %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = inttoptr i64 %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %4, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @HPDF_PAGE_MODE_USE_NONE, align 4
  store i32 %13, i32* %2, align 4
  br label %39

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %34, %14
  %16 = load i64*, i64** @HPDF_PAGE_MODE_NAMES, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64*, i64** @HPDF_PAGE_MODE_NAMES, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @HPDF_StrCmp(i32 %24, i64 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load i64, i64* %5, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %39

34:                                               ; preds = %21
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %5, align 8
  br label %15

37:                                               ; preds = %15
  %38 = load i32, i32* @HPDF_PAGE_MODE_USE_NONE, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %31, %12
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @HPDF_Dict_GetItem(i32, i8*, i32) #1

declare dso_local i64 @HPDF_StrCmp(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
