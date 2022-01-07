; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_text-functionality.c_fill_vertex_buffer.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_text-functionality.c_fill_vertex_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.ft2_source = type { i32*, i32, i32*, i32, i32, i32*, i32, i32 }
%struct.gs_vb_data = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.vec2 = type { i32 }

@src_glyph = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_vertex_buffer(%struct.ft2_source* %0) #0 {
  %2 = alloca %struct.ft2_source*, align 8
  %3 = alloca %struct.gs_vb_data*, align 8
  %4 = alloca %struct.vec2*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ft2_source* %0, %struct.ft2_source** %2, align 8
  %14 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %15 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.gs_vb_data* @gs_vertexbuffer_get_data(i32 %16)
  store %struct.gs_vb_data* %17, %struct.gs_vb_data** %3, align 8
  %18 = load %struct.gs_vb_data*, %struct.gs_vb_data** %3, align 8
  %19 = icmp eq %struct.gs_vb_data* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %22 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %1
  br label %276

26:                                               ; preds = %20
  %27 = load %struct.gs_vb_data*, %struct.gs_vb_data** %3, align 8
  %28 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.vec2*
  store %struct.vec2* %33, %struct.vec2** %4, align 8
  %34 = load %struct.gs_vb_data*, %struct.gs_vb_data** %3, align 8
  %35 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %38 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %39 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %42 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %43 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i64 @wcslen(i32* %44)
  store i64 %45, i64* %11, align 8
  %46 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %47 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %26
  %51 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %52 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @bfree(i32* %53)
  %55 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %56 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %55, i32 0, i32 2
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %50, %26
  %58 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %59 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i64 @wcslen(i32* %60)
  %62 = mul i64 4, %61
  %63 = mul i64 %62, 6
  %64 = trunc i64 %63 to i32
  %65 = call i32* @bzalloc(i32 %64)
  %66 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %67 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %66, i32 0, i32 2
  store i32* %65, i32** %67, align 8
  store i64 0, i64* %12, align 8
  br label %68

68:                                               ; preds = %79, %57
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* %11, align 8
  %71 = mul i64 %70, 6
  %72 = icmp ult i64 %69, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %75 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32 -16777216, i32* %78, align 4
  br label %79

79:                                               ; preds = %73
  %80 = load i64, i64* %12, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %12, align 8
  br label %68

82:                                               ; preds = %68
  store i64 0, i64* %13, align 8
  br label %83

83:                                               ; preds = %269, %82
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* %11, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %272

87:                                               ; preds = %83
  br label %88

88:                                               ; preds = %121, %87
  %89 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %90 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* %13, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 10
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %123

97:                                               ; preds = %88
  store i32 0, i32* %7, align 4
  %98 = load i64, i64* %13, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %13, align 8
  %100 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %101 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 4
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %8, align 4
  %106 = load i64, i64* %13, align 8
  %107 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %108 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = call i64 @wcslen(i32* %109)
  %111 = icmp eq i64 %106, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %97
  br label %268

113:                                              ; preds = %97
  %114 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %115 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* %13, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 10
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  br label %88

122:                                              ; preds = %113
  br label %123

123:                                              ; preds = %122, %96
  %124 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %125 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* %13, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 13
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  br label %268

132:                                              ; preds = %123
  %133 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %134 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %137 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* %13, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @FT_Get_Char_Index(i32 %135, i32 %141)
  store i32 %142, i32* %6, align 4
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** @src_glyph, align 8
  %144 = icmp eq %struct.TYPE_4__* %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %132
  br label %268

146:                                              ; preds = %132
  %147 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %148 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = icmp slt i32 %149, 100
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %170

152:                                              ; preds = %146
  %153 = load i32, i32* %7, align 4
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** @src_glyph, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %153, %156
  %158 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %159 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = icmp sgt i32 %157, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %152
  store i32 0, i32* %7, align 4
  %163 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %164 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, 4
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %8, align 4
  br label %169

169:                                              ; preds = %162, %152
  br label %170

170:                                              ; preds = %169, %151
  %171 = load %struct.gs_vb_data*, %struct.gs_vb_data** %3, align 8
  %172 = getelementptr inbounds %struct.gs_vb_data, %struct.gs_vb_data* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = mul nsw i32 %174, 6
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %173, %176
  %178 = load i32, i32* %7, align 4
  %179 = sitofp i32 %178 to float
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** @src_glyph, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 8
  %182 = load i64, i64* %181, align 8
  %183 = sitofp i64 %182 to float
  %184 = fadd float %179, %183
  %185 = load i32, i32* %8, align 4
  %186 = sitofp i32 %185 to float
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** @src_glyph, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = sitofp i32 %189 to float
  %191 = fsub float %186, %190
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** @src_glyph, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 7
  %194 = load i64, i64* %193, align 8
  %195 = sitofp i64 %194 to float
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** @src_glyph, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = sitofp i32 %198 to float
  %200 = call i32 @set_v3_rect(i64 %177, float %184, float %191, float %195, float %199)
  %201 = load %struct.vec2*, %struct.vec2** %4, align 8
  %202 = load i32, i32* %10, align 4
  %203 = mul nsw i32 %202, 6
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.vec2, %struct.vec2* %201, i64 %204
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** @src_glyph, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** @src_glyph, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** @src_glyph, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** @src_glyph, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @set_v2_uv(%struct.vec2* %205, i32 %208, i32 %211, i32 %214, i32 %217)
  %219 = load i32*, i32** %5, align 8
  %220 = load i32, i32* %10, align 4
  %221 = mul nsw i32 %220, 6
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %219, i64 %222
  %224 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %225 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %224, i32 0, i32 5
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %230 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %229, i32 0, i32 5
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @set_rect_colors2(i32* %223, i32 %228, i32 %233)
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** @src_glyph, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* %7, align 4
  %239 = add nsw i32 %238, %237
  store i32 %239, i32* %7, align 4
  %240 = load i32, i32* %8, align 4
  %241 = sitofp i32 %240 to float
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** @src_glyph, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = sitofp i32 %244 to float
  %246 = fsub float %241, %245
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** @src_glyph, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = sitofp i32 %249 to float
  %251 = fadd float %246, %250
  %252 = load i32, i32* %9, align 4
  %253 = sitofp i32 %252 to float
  %254 = fcmp ogt float %251, %253
  br i1 %254, label %255, label %265

255:                                              ; preds = %170
  %256 = load i32, i32* %8, align 4
  %257 = load %struct.TYPE_4__*, %struct.TYPE_4__** @src_glyph, align 8
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = sub nsw i32 %256, %259
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** @src_glyph, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = add nsw i32 %260, %263
  store i32 %264, i32* %9, align 4
  br label %265

265:                                              ; preds = %255, %170
  %266 = load i32, i32* %10, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %10, align 4
  br label %268

268:                                              ; preds = %265, %145, %131, %112
  br label %269

269:                                              ; preds = %268
  %270 = load i64, i64* %13, align 8
  %271 = add i64 %270, 1
  store i64 %271, i64* %13, align 8
  br label %83

272:                                              ; preds = %83
  %273 = load i32, i32* %9, align 4
  %274 = load %struct.ft2_source*, %struct.ft2_source** %2, align 8
  %275 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %274, i32 0, i32 4
  store i32 %273, i32* %275, align 4
  br label %276

276:                                              ; preds = %272, %25
  ret void
}

declare dso_local %struct.gs_vb_data* @gs_vertexbuffer_get_data(i32) #1

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i32 @bfree(i32*) #1

declare dso_local i32* @bzalloc(i32) #1

declare dso_local i32 @FT_Get_Char_Index(i32, i32) #1

declare dso_local i32 @set_v3_rect(i64, float, float, float, float) #1

declare dso_local i32 @set_v2_uv(%struct.vec2*, i32, i32, i32, i32) #1

declare dso_local i32 @set_rect_colors2(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
