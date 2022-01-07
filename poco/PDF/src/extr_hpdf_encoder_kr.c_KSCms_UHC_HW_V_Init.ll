; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encoder_kr.c_KSCms_UHC_HW_V_Init.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encoder_kr.c_KSCms_UHC_HW_V_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i32*, i32, i64, i64, i32, i32 }

@HPDF_OK = common dso_local global i64 0, align 8
@CMAP_ARRAY_KSCms_UHC_HW_H = common dso_local global i32 0, align 4
@CMAP_ARRAY_KSCms_UHC_HW_V = common dso_local global i32 0, align 4
@KSCms_UHC_HW_NOTDEF_RANGE = common dso_local global i32 0, align 4
@CP949_UNICODE_ARRAY = common dso_local global i32 0, align 4
@KSCms_UHC_IsLeadByte = common dso_local global i32 0, align 4
@KSCms_UHC_IsTrialByte = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Adobe\00", align 1
@HPDF_LIMIT_MAX_NAME_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"Korea1\00", align 1
@HPDF_WMODE_VERTICAL = common dso_local global i32 0, align 4
@HPDF_ENCODER_TYPE_DOUBLE_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*)* @KSCms_UHC_HW_V_Init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @KSCms_UHC_HW_V_Init(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = call i64 @HPDF_CMapEncoder_InitAttr(%struct.TYPE_11__* %6)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* @HPDF_OK, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* %5, align 8
  store i64 %11, i64* %2, align 8
  br label %102

12:                                               ; preds = %1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %4, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = load i32, i32* @CMAP_ARRAY_KSCms_UHC_HW_H, align 4
  %19 = call i64 @HPDF_CMapEncoder_AddCMap(%struct.TYPE_11__* %17, i32 %18)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* @HPDF_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load i64, i64* %5, align 8
  store i64 %23, i64* %2, align 8
  br label %102

24:                                               ; preds = %12
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = load i32, i32* @CMAP_ARRAY_KSCms_UHC_HW_V, align 4
  %27 = call i64 @HPDF_CMapEncoder_AddCMap(%struct.TYPE_11__* %25, i32 %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* @HPDF_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i64, i64* %5, align 8
  store i64 %31, i64* %2, align 8
  br label %102

32:                                               ; preds = %24
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = call i64 @KSCms_UHC_AddCodeSpaceRange(%struct.TYPE_11__* %33)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* @HPDF_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i64, i64* %5, align 8
  store i64 %38, i64* %2, align 8
  br label %102

39:                                               ; preds = %32
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = load i32, i32* @KSCms_UHC_HW_NOTDEF_RANGE, align 4
  %42 = call i64 @HPDF_CMapEncoder_AddNotDefRange(%struct.TYPE_11__* %40, i32 %41)
  %43 = load i64, i64* @HPDF_OK, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %2, align 8
  br label %102

51:                                               ; preds = %39
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = load i32, i32* @CP949_UNICODE_ARRAY, align 4
  %54 = call i32 @HPDF_CMapEncoder_SetUnicodeArray(%struct.TYPE_11__* %52, i32 %53)
  %55 = load i32, i32* @KSCms_UHC_IsLeadByte, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @KSCms_UHC_IsTrialByte, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @HPDF_LIMIT_MAX_NAME_LEN, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @HPDF_StrCpy(i64 %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %68)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @HPDF_LIMIT_MAX_NAME_LEN, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @HPDF_StrCpy(i64 %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %77)
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  store i32 -1, i32* %82, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 1, i32* %86, align 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  store i32 10, i32* %90, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  store i32 25417, i32* %94, align 4
  %95 = load i32, i32* @HPDF_WMODE_VERTICAL, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @HPDF_ENCODER_TYPE_DOUBLE_BYTE, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i64, i64* @HPDF_OK, align 8
  store i64 %101, i64* %2, align 8
  br label %102

102:                                              ; preds = %51, %45, %37, %30, %22, %10
  %103 = load i64, i64* %2, align 8
  ret i64 %103
}

declare dso_local i64 @HPDF_CMapEncoder_InitAttr(%struct.TYPE_11__*) #1

declare dso_local i64 @HPDF_CMapEncoder_AddCMap(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @KSCms_UHC_AddCodeSpaceRange(%struct.TYPE_11__*) #1

declare dso_local i64 @HPDF_CMapEncoder_AddNotDefRange(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @HPDF_CMapEncoder_SetUnicodeArray(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @HPDF_StrCpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
