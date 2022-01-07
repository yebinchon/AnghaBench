; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_cid.c_TextWidth.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_cid.c_TextWidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_15__*, %struct.TYPE_20__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_20__ = type { i64 (%struct.TYPE_20__*, i32*)*, i32 (%struct.TYPE_20__*, i32)* }
%struct.TYPE_21__ = type { i64* }

@.str = private unnamed_addr constant [27 x i8] c" HPDF_Type0Font_TextWidth\0A\00", align 1
@HPDF_FONTDEF_TYPE_CID = common dso_local global i64 0, align 8
@HPDF_BYTE_TYPE_LEAD = common dso_local global i64 0, align 8
@HPDF_BYTE_TYPE_TRIAL = common dso_local global i64 0, align 8
@HPDF_WMODE_HORIZONTAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_19__*, i32*, i64)* @TextWidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TextWidth(%struct.TYPE_17__* noalias sret %0, %struct.TYPE_19__* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i64 %3, i64* %7, align 8
  %20 = bitcast %struct.TYPE_17__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 40, i1 false)
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %8, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  store %struct.TYPE_20__* %28, %struct.TYPE_20__** %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %29 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @HPDF_FONTDEF_TYPE_CID, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %44, %struct.TYPE_21__** %14, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %12, align 8
  br label %64

50:                                               ; preds = %4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %56, %62
  store i64 %63, i64* %12, align 8
  br label %64

64:                                               ; preds = %50, %37
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @HPDF_Encoder_SetParseText(%struct.TYPE_20__* %65, i32* %9, i32* %66, i64 %67)
  br label %69

69:                                               ; preds = %151, %64
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %158

73:                                               ; preds = %69
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load i64 (%struct.TYPE_20__*, i32*)*, i64 (%struct.TYPE_20__*, i32*)** %75, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %78 = call i64 %76(%struct.TYPE_20__* %77, i32* %9)
  store i64 %78, i64* %15, align 8
  store i64 0, i64* %19, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %6, align 8
  %81 = load i32, i32* %79, align 4
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %18, align 4
  %83 = load i64, i64* %15, align 8
  %84 = load i64, i64* @HPDF_BYTE_TYPE_LEAD, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %73
  %87 = load i32, i32* %18, align 4
  %88 = shl i32 %87, 8
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %18, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %89, %91
  store i32 %92, i32* %18, align 4
  br label %93

93:                                               ; preds = %86, %73
  %94 = load i64, i64* %15, align 8
  %95 = load i64, i64* @HPDF_BYTE_TYPE_TRIAL, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %140

97:                                               ; preds = %93
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @HPDF_WMODE_HORIZONTAL, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %133

103:                                              ; preds = %97
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @HPDF_FONTDEF_TYPE_CID, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %103
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %113 = load i32, i32* %18, align 4
  %114 = call i32 @HPDF_CMapEncoder_ToCID(%struct.TYPE_20__* %112, i32 %113)
  store i32 %114, i32* %16, align 4
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %116, align 8
  %118 = load i32, i32* %16, align 4
  %119 = call i64 @HPDF_CIDFontDef_GetCIDWidth(%struct.TYPE_15__* %117, i32 %118)
  store i64 %119, i64* %19, align 8
  br label %132

120:                                              ; preds = %103
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 1
  %123 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %122, align 8
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %125 = load i32, i32* %18, align 4
  %126 = call i32 %123(%struct.TYPE_20__* %124, i32 %125)
  store i32 %126, i32* %17, align 4
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = load i32, i32* %17, align 4
  %131 = call i64 @HPDF_TTFontDef_GetCharWidth(%struct.TYPE_15__* %129, i32 %130)
  store i64 %131, i64* %19, align 8
  br label %132

132:                                              ; preds = %120, %111
  br label %136

133:                                              ; preds = %97
  %134 = load i64, i64* %12, align 8
  %135 = sub nsw i64 0, %134
  store i64 %135, i64* %19, align 8
  br label %136

136:                                              ; preds = %133, %132
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %0, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %136, %93
  %141 = load i32, i32* %18, align 4
  %142 = call i64 @HPDF_IS_WHITE_SPACE(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %0, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %0, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %144, %140
  %152 = load i64, i64* %19, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %0, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, %152
  store i64 %155, i64* %153, align 8
  %156 = load i64, i64* %11, align 8
  %157 = add nsw i64 %156, 1
  store i64 %157, i64* %11, align 8
  br label %69

158:                                              ; preds = %69
  %159 = load i32, i32* %13, align 4
  %160 = call i64 @HPDF_IS_WHITE_SPACE(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  br label %167

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %0, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 8
  br label %167

167:                                              ; preds = %163, %162
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @HPDF_PTRACE(i8*) #2

declare dso_local i32 @HPDF_Encoder_SetParseText(%struct.TYPE_20__*, i32*, i32*, i64) #2

declare dso_local i32 @HPDF_CMapEncoder_ToCID(%struct.TYPE_20__*, i32) #2

declare dso_local i64 @HPDF_CIDFontDef_GetCIDWidth(%struct.TYPE_15__*, i32) #2

declare dso_local i64 @HPDF_TTFontDef_GetCharWidth(%struct.TYPE_15__*, i32) #2

declare dso_local i64 @HPDF_IS_WHITE_SPACE(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
