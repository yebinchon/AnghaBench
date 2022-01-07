; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_catalog.c_HPDF_Catalog_GetViewerPreference.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_catalog.c_HPDF_Catalog_GetViewerPreference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c" HPDF_Catalog_GetViewerPreference\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ViewerPreferences\00", align 1
@HPDF_OCLASS_DICT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"HideToolbar\00", align 1
@HPDF_OCLASS_BOOLEAN = common dso_local global i32 0, align 4
@HPDF_HIDE_TOOLBAR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"HideMenubar\00", align 1
@HPDF_HIDE_MENUBAR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"HideWindowUI\00", align 1
@HPDF_HIDE_WINDOW_UI = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"FitWindow\00", align 1
@HPDF_FIT_WINDOW = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"CenterWindow\00", align 1
@HPDF_CENTER_WINDOW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HPDF_Catalog_GetViewerPreference(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__*, align 8
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  %7 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %8 = load i64, i64* %3, align 8
  %9 = load i32, i32* @HPDF_OCLASS_DICT, align 4
  %10 = call i64 @HPDF_Dict_GetItem(i64 %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %111

14:                                               ; preds = %1
  %15 = load i64, i64* %4, align 8
  %16 = load i32, i32* @HPDF_OCLASS_BOOLEAN, align 4
  %17 = call i64 @HPDF_Dict_GetItem(i64 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  %18 = inttoptr i64 %17 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %6, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %14
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i64, i64* @HPDF_HIDE_TOOLBAR, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %26, %21
  br label %33

33:                                               ; preds = %32, %14
  %34 = load i64, i64* %4, align 8
  %35 = load i32, i32* @HPDF_OCLASS_BOOLEAN, align 4
  %36 = call i64 @HPDF_Dict_GetItem(i64 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %37, %struct.TYPE_2__** %6, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i64, i64* @HPDF_HIDE_MENUBAR, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %45, %40
  br label %52

52:                                               ; preds = %51, %33
  %53 = load i64, i64* %4, align 8
  %54 = load i32, i32* @HPDF_OCLASS_BOOLEAN, align 4
  %55 = call i64 @HPDF_Dict_GetItem(i64 %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  %56 = inttoptr i64 %55 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %56, %struct.TYPE_2__** %6, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %58 = icmp ne %struct.TYPE_2__* %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %52
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i64, i64* @HPDF_HIDE_WINDOW_UI, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %64, %59
  br label %71

71:                                               ; preds = %70, %52
  %72 = load i64, i64* %4, align 8
  %73 = load i32, i32* @HPDF_OCLASS_BOOLEAN, align 4
  %74 = call i64 @HPDF_Dict_GetItem(i64 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %73)
  %75 = inttoptr i64 %74 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %75, %struct.TYPE_2__** %6, align 8
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %77 = icmp ne %struct.TYPE_2__* %76, null
  br i1 %77, label %78, label %90

78:                                               ; preds = %71
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i64, i64* @HPDF_FIT_WINDOW, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %83, %78
  br label %90

90:                                               ; preds = %89, %71
  %91 = load i64, i64* %4, align 8
  %92 = load i32, i32* @HPDF_OCLASS_BOOLEAN, align 4
  %93 = call i64 @HPDF_Dict_GetItem(i64 %91, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %92)
  %94 = inttoptr i64 %93 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %94, %struct.TYPE_2__** %6, align 8
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %96 = icmp ne %struct.TYPE_2__* %95, null
  br i1 %96, label %97, label %109

97:                                               ; preds = %90
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load i64, i64* @HPDF_CENTER_WINDOW, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %102, %97
  br label %109

109:                                              ; preds = %108, %90
  %110 = load i32, i32* %5, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %109, %13
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_Dict_GetItem(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
