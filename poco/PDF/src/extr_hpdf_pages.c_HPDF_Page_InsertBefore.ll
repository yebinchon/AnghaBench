; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pages.c_HPDF_Page_InsertBefore.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pages.c_HPDF_Page_InsertBefore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }

@.str = private unnamed_addr constant [25 x i8] c" HPDF_Page_InsertBefore\0A\00", align 1
@HPDF_INVALID_PARAMETER = common dso_local global i32 0, align 4
@HPDF_PAGE_CANNOT_SET_PARENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Parent\00", align 1
@HPDF_OCLASS_DICT = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"Kids\00", align 1
@HPDF_OCLASS_ARRAY = common dso_local global i32 0, align 4
@HPDF_PAGES_MISSING_KIDS_ENTRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HPDF_Page_InsertBefore(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %10 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = icmp ne %struct.TYPE_11__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @HPDF_INVALID_PARAMETER, align 4
  store i32 %14, i32* %3, align 4
  br label %70

15:                                               ; preds = %2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %9, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %6, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = icmp ne %struct.TYPE_11__* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* @HPDF_PAGE_CANNOT_SET_PARENT, align 4
  store i32 %26, i32* %3, align 4
  br label %70

27:                                               ; preds = %15
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = load i32, i32* @HPDF_OCLASS_DICT, align 4
  %30 = call i64 @HPDF_Dict_GetItem(%struct.TYPE_11__* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @HPDF_PAGE_CANNOT_SET_PARENT, align 4
  %37 = call i32 @HPDF_SetError(i32 %35, i32 %36, i32 0)
  store i32 %37, i32* %3, align 4
  br label %70

38:                                               ; preds = %27
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = call i32 @HPDF_Dict_Add(%struct.TYPE_11__* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_11__* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* @HPDF_OK, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %70

46:                                               ; preds = %38
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = load i32, i32* @HPDF_OCLASS_ARRAY, align 4
  %49 = call i64 @HPDF_Dict_GetItem(%struct.TYPE_11__* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @HPDF_PAGES_MISSING_KIDS_ENTRY, align 4
  %57 = call i32 @HPDF_SetError(i32 %55, i32 %56, i32 0)
  store i32 %57, i32* %3, align 4
  br label %70

58:                                               ; preds = %46
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %62, %struct.TYPE_10__** %9, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  store %struct.TYPE_11__* %63, %struct.TYPE_11__** %65, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = call i32 @HPDF_Array_Insert(i64 %66, %struct.TYPE_11__* %67, %struct.TYPE_11__* %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %58, %52, %44, %32, %25, %13
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_Dict_GetItem(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @HPDF_SetError(i32, i32, i32) #1

declare dso_local i32 @HPDF_Dict_Add(%struct.TYPE_11__*, i8*, %struct.TYPE_11__*) #1

declare dso_local i32 @HPDF_Array_Insert(i64, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
