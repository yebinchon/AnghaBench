; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encoder_jp.c_EUC_V_Init.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encoder_jp.c_EUC_V_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i32*, i32, i64, i64, i32, i32 }

@HPDF_OK = common dso_local global i64 0, align 8
@CMAP_ARRAY_EUC_H = common dso_local global i32 0, align 4
@CMAP_ARRAY_EUC_V = common dso_local global i32 0, align 4
@EUC_NOTDEF_RANGE = common dso_local global i32 0, align 4
@EUC_UNICODE_ARRAY = common dso_local global i32 0, align 4
@EUC_IsLeadByte = common dso_local global i32 0, align 4
@EUC_IsTrialByte = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Adobe\00", align 1
@HPDF_LIMIT_MAX_NAME_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"Japan1\00", align 1
@HPDF_WMODE_VERTICAL = common dso_local global i32 0, align 4
@HPDF_ENCODER_TYPE_DOUBLE_BYTE = common dso_local global i32 0, align 4
@JWW_LINE_HEAD_EUC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*)* @EUC_V_Init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @EUC_V_Init(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = call i64 @HPDF_CMapEncoder_InitAttr(%struct.TYPE_12__* %6)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* @HPDF_OK, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* %5, align 8
  store i64 %11, i64* %2, align 8
  br label %113

12:                                               ; preds = %1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %4, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = load i32, i32* @CMAP_ARRAY_EUC_H, align 4
  %19 = call i64 @HPDF_CMapEncoder_AddCMap(%struct.TYPE_12__* %17, i32 %18)
  %20 = load i64, i64* @HPDF_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %12
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %2, align 8
  br label %113

28:                                               ; preds = %12
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = load i32, i32* @CMAP_ARRAY_EUC_V, align 4
  %31 = call i64 @HPDF_CMapEncoder_AddCMap(%struct.TYPE_12__* %29, i32 %30)
  %32 = load i64, i64* @HPDF_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %2, align 8
  br label %113

40:                                               ; preds = %28
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = call i64 @EUC_AddCodeSpaceRange(%struct.TYPE_12__* %41)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* @HPDF_OK, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i64, i64* %5, align 8
  store i64 %46, i64* %2, align 8
  br label %113

47:                                               ; preds = %40
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = load i32, i32* @EUC_NOTDEF_RANGE, align 4
  %50 = call i64 @HPDF_CMapEncoder_AddNotDefRange(%struct.TYPE_12__* %48, i32 %49)
  %51 = load i64, i64* @HPDF_OK, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %2, align 8
  br label %113

59:                                               ; preds = %47
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %61 = load i32, i32* @EUC_UNICODE_ARRAY, align 4
  %62 = call i32 @HPDF_CMapEncoder_SetUnicodeArray(%struct.TYPE_12__* %60, i32 %61)
  %63 = load i32, i32* @EUC_IsLeadByte, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 7
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @EUC_IsTrialByte, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @HPDF_LIMIT_MAX_NAME_LEN, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @HPDF_StrCpy(i64 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %76)
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @HPDF_LIMIT_MAX_NAME_LEN, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @HPDF_StrCpy(i64 %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %85)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load i32, i32* @HPDF_WMODE_VERTICAL, align 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  store i32 800, i32* %93, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 1, i32* %97, align 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  store i32 10, i32* %101, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  store i32 25330, i32* %105, align 4
  %106 = load i32, i32* @HPDF_ENCODER_TYPE_DOUBLE_BYTE, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %110 = load i32, i32* @JWW_LINE_HEAD_EUC, align 4
  %111 = call i32 @HPDF_CMapEncoder_AddJWWLineHead(%struct.TYPE_12__* %109, i32 %110)
  %112 = load i64, i64* @HPDF_OK, align 8
  store i64 %112, i64* %2, align 8
  br label %113

113:                                              ; preds = %59, %53, %45, %34, %22, %10
  %114 = load i64, i64* %2, align 8
  ret i64 %114
}

declare dso_local i64 @HPDF_CMapEncoder_InitAttr(%struct.TYPE_12__*) #1

declare dso_local i64 @HPDF_CMapEncoder_AddCMap(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @EUC_AddCodeSpaceRange(%struct.TYPE_12__*) #1

declare dso_local i64 @HPDF_CMapEncoder_AddNotDefRange(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @HPDF_CMapEncoder_SetUnicodeArray(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @HPDF_StrCpy(i64, i8*, i64) #1

declare dso_local i32 @HPDF_CMapEncoder_AddJWWLineHead(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
