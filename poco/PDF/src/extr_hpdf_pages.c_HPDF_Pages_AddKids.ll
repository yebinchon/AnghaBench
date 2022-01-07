; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pages.c_HPDF_Pages_AddKids.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pages.c_HPDF_Pages_AddKids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }

@.str = private unnamed_addr constant [21 x i8] c" HPDF_Pages_AddKids\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Parent\00", align 1
@HPDF_OCLASS_DICT = common dso_local global i32 0, align 4
@HPDF_PAGE_CANNOT_SET_PARENT = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"Kids\00", align 1
@HPDF_OCLASS_ARRAY = common dso_local global i32 0, align 4
@HPDF_PAGES_MISSING_KIDS_ENTRY = common dso_local global i32 0, align 4
@HPDF_OSUBCLASS_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HPDF_Pages_AddKids(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %9 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %11 = load i32, i32* @HPDF_OCLASS_DICT, align 4
  %12 = call i64 @HPDF_Dict_GetItem(%struct.TYPE_12__* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HPDF_PAGE_CANNOT_SET_PARENT, align 4
  %19 = call i32 @HPDF_SetError(i32 %17, i32 %18, i32 0)
  store i32 %19, i32* %3, align 4
  br label %62

20:                                               ; preds = %2
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = call i32 @HPDF_Dict_Add(%struct.TYPE_12__* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @HPDF_OK, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %62

28:                                               ; preds = %20
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = load i32, i32* @HPDF_OCLASS_ARRAY, align 4
  %31 = call i64 @HPDF_Dict_GetItem(%struct.TYPE_12__* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @HPDF_PAGES_MISSING_KIDS_ENTRY, align 4
  %39 = call i32 @HPDF_SetError(i32 %37, i32 %38, i32 0)
  store i32 %39, i32* %3, align 4
  br label %62

40:                                               ; preds = %28
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @HPDF_OCLASS_DICT, align 4
  %46 = load i32, i32* @HPDF_OSUBCLASS_PAGE, align 4
  %47 = or i32 %45, %46
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %40
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %8, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %57, align 8
  br label %58

58:                                               ; preds = %49, %40
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %61 = call i32 @HPDF_Array_Add(i64 %59, %struct.TYPE_12__* %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %34, %26, %14
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_Dict_GetItem(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @HPDF_SetError(i32, i32, i32) #1

declare dso_local i32 @HPDF_Dict_Add(%struct.TYPE_12__*, i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @HPDF_Array_Add(i64, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
