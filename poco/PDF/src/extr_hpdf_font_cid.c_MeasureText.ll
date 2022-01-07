; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_cid.c_MeasureText.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_font_cid.c_MeasureText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_18__*, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, i32)* }
%struct.TYPE_17__ = type { i64* }

@HPDF_BYTE_TYPE_TRIAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c" HPDF_Type0Font_MeasureText\0A\00", align 1
@HPDF_FONTDEF_TYPE_CID = common dso_local global i64 0, align 8
@HPDF_BYTE_TYPE_LEAD = common dso_local global i64 0, align 8
@HPDF_BYTE_TYPE_SINGLE = common dso_local global i64 0, align 8
@HPDF_WMODE_HORIZONTAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, i32*, i64, i32, i32, i32, i32, i32, i32*)* @MeasureText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @MeasureText(%struct.TYPE_15__* %0, i32* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_14__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_16__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca %struct.TYPE_17__*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %11, align 8
  store i32* %1, i32** %12, align 8
  store i64 %2, i64* %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  store i32 0, i32* %20, align 4
  store i64 0, i64* %21, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %23, align 8
  %41 = load i64, i64* @HPDF_BYTE_TYPE_TRIAL, align 8
  store i64 %41, i64* %24, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  store %struct.TYPE_16__* %44, %struct.TYPE_16__** %25, align 8
  %45 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @HPDF_FONTDEF_TYPE_CID, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %9
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %60, %struct.TYPE_17__** %28, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %27, align 8
  br label %80

66:                                               ; preds = %9
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %72, %78
  store i64 %79, i64* %27, align 8
  br label %80

80:                                               ; preds = %66, %53
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = load i64, i64* %13, align 8
  %84 = call i32 @HPDF_Encoder_SetParseText(%struct.TYPE_16__* %81, i32* %26, i32* %82, i64 %83)
  store i64 0, i64* %22, align 8
  br label %85

85:                                               ; preds = %239, %80
  %86 = load i64, i64* %22, align 8
  %87 = load i64, i64* %13, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %242

89:                                               ; preds = %85
  %90 = load i32*, i32** %12, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %12, align 8
  %92 = load i32, i32* %90, align 4
  store i32 %92, i32* %29, align 4
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %30, align 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %96 = call i64 @HPDF_Encoder_ByteType(%struct.TYPE_16__* %95, i32* %26)
  store i64 %96, i64* %31, align 8
  %97 = load i32, i32* %29, align 4
  store i32 %97, i32* %33, align 4
  store i32 0, i32* %34, align 4
  %98 = load i64, i64* %31, align 8
  %99 = load i64, i64* @HPDF_BYTE_TYPE_LEAD, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %89
  %102 = load i32, i32* %33, align 4
  %103 = shl i32 %102, 8
  store i32 %103, i32* %33, align 4
  %104 = load i32, i32* %33, align 4
  %105 = load i32, i32* %30, align 4
  %106 = add nsw i32 %104, %105
  store i32 %106, i32* %33, align 4
  br label %107

107:                                              ; preds = %101, %89
  %108 = load i32, i32* %18, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %141, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %29, align 4
  %112 = call i64 @HPDF_IS_WHITE_SPACE(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = load i64, i64* %22, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %21, align 8
  %117 = load i32*, i32** %19, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i32, i32* %20, align 4
  %121 = load i32*, i32** %19, align 8
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %119, %114
  br label %140

123:                                              ; preds = %110
  %124 = load i64, i64* %31, align 8
  %125 = load i64, i64* @HPDF_BYTE_TYPE_SINGLE, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i64, i64* %31, align 8
  %129 = load i64, i64* @HPDF_BYTE_TYPE_LEAD, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %127, %123
  %132 = load i64, i64* %22, align 8
  store i64 %132, i64* %21, align 8
  %133 = load i32*, i32** %19, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i32, i32* %20, align 4
  %137 = load i32*, i32** %19, align 8
  store i32 %136, i32* %137, align 4
  br label %138

138:                                              ; preds = %135, %131
  br label %139

139:                                              ; preds = %138, %127
  br label %140

140:                                              ; preds = %139, %122
  br label %155

141:                                              ; preds = %107
  %142 = load i32, i32* %29, align 4
  %143 = call i64 @HPDF_IS_WHITE_SPACE(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %141
  %146 = load i64, i64* %22, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %21, align 8
  %148 = load i32*, i32** %19, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load i32, i32* %20, align 4
  %152 = load i32*, i32** %19, align 8
  store i32 %151, i32* %152, align 4
  br label %153

153:                                              ; preds = %150, %145
  br label %154

154:                                              ; preds = %153, %141
  br label %155

155:                                              ; preds = %154, %140
  %156 = load i32, i32* %29, align 4
  %157 = call i64 @HPDF_IS_WHITE_SPACE(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* %20, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %20, align 4
  br label %163

163:                                              ; preds = %159, %155
  %164 = load i64, i64* %31, align 8
  %165 = load i64, i64* @HPDF_BYTE_TYPE_TRIAL, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %215

167:                                              ; preds = %163
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @HPDF_WMODE_HORIZONTAL, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %203

173:                                              ; preds = %167
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @HPDF_FONTDEF_TYPE_CID, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %190

181:                                              ; preds = %173
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %183 = load i32, i32* %33, align 4
  %184 = call i32 @HPDF_CMapEncoder_ToCID(%struct.TYPE_16__* %182, i32 %183)
  store i32 %184, i32* %35, align 4
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %186, align 8
  %188 = load i32, i32* %35, align 4
  %189 = call i32 @HPDF_CIDFontDef_GetCIDWidth(%struct.TYPE_18__* %187, i32 %188)
  store i32 %189, i32* %34, align 4
  br label %202

190:                                              ; preds = %173
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 0
  %193 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %192, align 8
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %195 = load i32, i32* %33, align 4
  %196 = call i32 %193(%struct.TYPE_16__* %194, i32 %195)
  store i32 %196, i32* %32, align 4
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %198, align 8
  %200 = load i32, i32* %32, align 4
  %201 = call i32 @HPDF_TTFontDef_GetCharWidth(%struct.TYPE_18__* %199, i32 %200)
  store i32 %201, i32* %34, align 4
  br label %202

202:                                              ; preds = %190, %181
  br label %207

203:                                              ; preds = %167
  %204 = load i64, i64* %27, align 8
  %205 = sub nsw i64 0, %204
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %34, align 4
  br label %207

207:                                              ; preds = %203, %202
  %208 = load i64, i64* %22, align 8
  %209 = icmp sgt i64 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %207
  %211 = load i32, i32* %16, align 4
  %212 = load i32, i32* %20, align 4
  %213 = add nsw i32 %212, %211
  store i32 %213, i32* %20, align 4
  br label %214

214:                                              ; preds = %210, %207
  br label %215

215:                                              ; preds = %214, %163
  %216 = load i32, i32* %34, align 4
  %217 = load i32, i32* %15, align 4
  %218 = mul nsw i32 %216, %217
  %219 = sdiv i32 %218, 1000
  %220 = load i32, i32* %20, align 4
  %221 = add nsw i32 %220, %219
  store i32 %221, i32* %20, align 4
  %222 = load i32, i32* %20, align 4
  %223 = load i32, i32* %14, align 4
  %224 = icmp sgt i32 %222, %223
  br i1 %224, label %228, label %225

225:                                              ; preds = %215
  %226 = load i32, i32* %29, align 4
  %227 = icmp eq i32 %226, 10
  br i1 %227, label %228, label %230

228:                                              ; preds = %225, %215
  %229 = load i64, i64* %21, align 8
  store i64 %229, i64* %10, align 8
  br label %250

230:                                              ; preds = %225
  %231 = load i32, i32* %29, align 4
  %232 = call i64 @HPDF_IS_WHITE_SPACE(i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %230
  %235 = load i64, i64* @HPDF_BYTE_TYPE_TRIAL, align 8
  store i64 %235, i64* %24, align 8
  br label %238

236:                                              ; preds = %230
  %237 = load i64, i64* %31, align 8
  store i64 %237, i64* %24, align 8
  br label %238

238:                                              ; preds = %236, %234
  br label %239

239:                                              ; preds = %238
  %240 = load i64, i64* %22, align 8
  %241 = add nsw i64 %240, 1
  store i64 %241, i64* %22, align 8
  br label %85

242:                                              ; preds = %85
  %243 = load i32*, i32** %19, align 8
  %244 = icmp ne i32* %243, null
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  %246 = load i32, i32* %20, align 4
  %247 = load i32*, i32** %19, align 8
  store i32 %246, i32* %247, align 4
  br label %248

248:                                              ; preds = %245, %242
  %249 = load i64, i64* %13, align 8
  store i64 %249, i64* %10, align 8
  br label %250

250:                                              ; preds = %248, %228
  %251 = load i64, i64* %10, align 8
  ret i64 %251
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32 @HPDF_Encoder_SetParseText(%struct.TYPE_16__*, i32*, i32*, i64) #1

declare dso_local i64 @HPDF_Encoder_ByteType(%struct.TYPE_16__*, i32*) #1

declare dso_local i64 @HPDF_IS_WHITE_SPACE(i32) #1

declare dso_local i32 @HPDF_CMapEncoder_ToCID(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @HPDF_CIDFontDef_GetCIDWidth(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @HPDF_TTFontDef_GetCharWidth(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
