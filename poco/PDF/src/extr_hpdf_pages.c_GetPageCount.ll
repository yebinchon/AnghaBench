; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pages.c_GetPageCount.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pages.c_GetPageCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"Kids\00", align 1
@HPDF_OCLASS_ARRAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c" GetPageCount\0A\00", align 1
@HPDF_OCLASS_DICT = common dso_local global i32 0, align 4
@HPDF_OSUBCLASS_PAGES = common dso_local global i32 0, align 4
@HPDF_OSUBCLASS_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @GetPageCount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GetPageCount(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %3, align 4
  store i64 0, i64* %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @HPDF_OCLASS_ARRAY, align 4
  %11 = call i32 @HPDF_Dict_GetItem(i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %6, align 8
  %14 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %65

18:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %19

19:                                               ; preds = %60, %18
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %20, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %19
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i32, i32* @HPDF_OCLASS_DICT, align 4
  %31 = call i8* @HPDF_Array_GetItem(%struct.TYPE_7__* %28, i64 %29, i32 %30)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = bitcast i8* %32 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %8, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HPDF_OCLASS_DICT, align 4
  %38 = load i32, i32* @HPDF_OSUBCLASS_PAGES, align 4
  %39 = or i32 %37, %38
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %27
  %42 = load i8*, i8** %7, align 8
  %43 = ptrtoint i8* %42 to i32
  %44 = call i64 @GetPageCount(i32 %43)
  %45 = load i64, i64* %5, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* %5, align 8
  br label %59

47:                                               ; preds = %27
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @HPDF_OCLASS_DICT, align 4
  %52 = load i32, i32* @HPDF_OSUBCLASS_PAGE, align 4
  %53 = or i32 %51, %52
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i64, i64* %5, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %55, %47
  br label %59

59:                                               ; preds = %58, %41
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %4, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %4, align 8
  br label %19

63:                                               ; preds = %19
  %64 = load i64, i64* %5, align 8
  store i64 %64, i64* %2, align 8
  br label %65

65:                                               ; preds = %63, %17
  %66 = load i64, i64* %2, align 8
  ret i64 %66
}

declare dso_local i32 @HPDF_Dict_GetItem(i32, i8*, i32) #1

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i8* @HPDF_Array_GetItem(%struct.TYPE_7__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
