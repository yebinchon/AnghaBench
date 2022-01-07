; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encoder_jp.c_MSP_RKSJ_H_Init.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encoder_jp.c_MSP_RKSJ_H_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i32*, i64, i64, i32, i32 }

@HPDF_OK = common dso_local global i64 0, align 8
@CMAP_ARRAY_90msp_RKSJ_H = common dso_local global i32 0, align 4
@MSP_RKSJ_NOTDEF_RANGE = common dso_local global i32 0, align 4
@CP932_UNICODE_ARRAY = common dso_local global i32 0, align 4
@RKSJ_IsLeadByte = common dso_local global i32 0, align 4
@RKSJ_IsTrialByte = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Adobe\00", align 1
@HPDF_LIMIT_MAX_NAME_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"Japan1\00", align 1
@HPDF_ENCODER_TYPE_DOUBLE_BYTE = common dso_local global i32 0, align 4
@JWW_LINE_HEAD_SJIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*)* @MSP_RKSJ_H_Init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @MSP_RKSJ_H_Init(%struct.TYPE_12__* %0) #0 {
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
  br label %94

12:                                               ; preds = %1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %4, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = load i32, i32* @CMAP_ARRAY_90msp_RKSJ_H, align 4
  %19 = call i64 @HPDF_CMapEncoder_AddCMap(%struct.TYPE_12__* %17, i32 %18)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* @HPDF_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load i64, i64* %5, align 8
  store i64 %23, i64* %2, align 8
  br label %94

24:                                               ; preds = %12
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = call i64 @RKSJ_AddCodeSpaceRange(%struct.TYPE_12__* %25)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* @HPDF_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i64, i64* %5, align 8
  store i64 %30, i64* %2, align 8
  br label %94

31:                                               ; preds = %24
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = load i32, i32* @MSP_RKSJ_NOTDEF_RANGE, align 4
  %34 = call i64 @HPDF_CMapEncoder_AddNotDefRange(%struct.TYPE_12__* %32, i32 %33)
  %35 = load i64, i64* @HPDF_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %2, align 8
  br label %94

43:                                               ; preds = %31
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = load i32, i32* @CP932_UNICODE_ARRAY, align 4
  %46 = call i32 @HPDF_CMapEncoder_SetUnicodeArray(%struct.TYPE_12__* %44, i32 %45)
  %47 = load i32, i32* @RKSJ_IsLeadByte, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @RKSJ_IsTrialByte, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @HPDF_LIMIT_MAX_NAME_LEN, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @HPDF_StrCpy(i64 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @HPDF_LIMIT_MAX_NAME_LEN, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @HPDF_StrCpy(i64 %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  store i32 2, i32* %72, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  store i32 950, i32* %74, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 1, i32* %78, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 10, i32* %82, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  store i32 25445, i32* %86, align 4
  %87 = load i32, i32* @HPDF_ENCODER_TYPE_DOUBLE_BYTE, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %91 = load i32, i32* @JWW_LINE_HEAD_SJIS, align 4
  %92 = call i32 @HPDF_CMapEncoder_AddJWWLineHead(%struct.TYPE_12__* %90, i32 %91)
  %93 = load i64, i64* @HPDF_OK, align 8
  store i64 %93, i64* %2, align 8
  br label %94

94:                                               ; preds = %43, %37, %29, %22, %10
  %95 = load i64, i64* %2, align 8
  ret i64 %95
}

declare dso_local i64 @HPDF_CMapEncoder_InitAttr(%struct.TYPE_12__*) #1

declare dso_local i64 @HPDF_CMapEncoder_AddCMap(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @RKSJ_AddCodeSpaceRange(%struct.TYPE_12__*) #1

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
