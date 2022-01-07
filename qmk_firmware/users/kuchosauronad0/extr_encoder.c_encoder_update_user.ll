; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/kuchosauronad0/extr_encoder.c_encoder_update_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/kuchosauronad0/extr_encoder.c_encoder_update_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@encoder_update_user.kc = internal global i32 0, align 4
@MOD_MASK_CTRL = common dso_local global i32 0, align 4
@MOD_MASK_SHIFT = common dso_local global i32 0, align 4
@MOD_MASK_ALT = common dso_local global i32 0, align 4
@MOD_MASK_GUI = common dso_local global i32 0, align 4
@encoder_actions = common dso_local global i32** null, align 8
@KC_0 = common dso_local global i32 0, align 4
@KC_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encoder_update_user(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @get_mods()
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %282

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %144

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @MOD_MASK_CTRL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MOD_MASK_ALT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @MOD_MASK_GUI, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32**, i32*** @encoder_actions, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* @encoder_update_user.kc, align 4
  br label %143

38:                                               ; preds = %27, %22, %17, %12
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @MOD_MASK_ALT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32**, i32*** @encoder_actions, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 7
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* @encoder_update_user.kc, align 4
  br label %142

54:                                               ; preds = %43, %38
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @MOD_MASK_CTRL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32**, i32*** @encoder_actions, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 6
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* @encoder_update_user.kc, align 4
  br label %141

70:                                               ; preds = %59, %54
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @MOD_MASK_CTRL, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @MOD_MASK_ALT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load i32**, i32*** @encoder_actions, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i64 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 5
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* @encoder_update_user.kc, align 4
  br label %140

86:                                               ; preds = %75, %70
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @MOD_MASK_GUI, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load i32**, i32*** @encoder_actions, align 8
  %93 = getelementptr inbounds i32*, i32** %92, i64 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 4
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* @encoder_update_user.kc, align 4
  br label %139

97:                                               ; preds = %86
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load i32**, i32*** @encoder_actions, align 8
  %104 = getelementptr inbounds i32*, i32** %103, i64 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 3
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* @encoder_update_user.kc, align 4
  br label %138

108:                                              ; preds = %97
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @MOD_MASK_ALT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load i32**, i32*** @encoder_actions, align 8
  %115 = getelementptr inbounds i32*, i32** %114, i64 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* @encoder_update_user.kc, align 4
  br label %137

119:                                              ; preds = %108
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @MOD_MASK_CTRL, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load i32**, i32*** @encoder_actions, align 8
  %126 = getelementptr inbounds i32*, i32** %125, i64 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* @encoder_update_user.kc, align 4
  br label %136

130:                                              ; preds = %119
  %131 = load i32**, i32*** @encoder_actions, align 8
  %132 = getelementptr inbounds i32*, i32** %131, i64 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* @encoder_update_user.kc, align 4
  br label %136

136:                                              ; preds = %130, %124
  br label %137

137:                                              ; preds = %136, %113
  br label %138

138:                                              ; preds = %137, %102
  br label %139

139:                                              ; preds = %138, %91
  br label %140

140:                                              ; preds = %139, %80
  br label %141

141:                                              ; preds = %140, %64
  br label %142

142:                                              ; preds = %141, %48
  br label %143

143:                                              ; preds = %142, %32
  br label %276

144:                                              ; preds = %9
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @MOD_MASK_CTRL, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %170

149:                                              ; preds = %144
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %170

154:                                              ; preds = %149
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* @MOD_MASK_ALT, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %154
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* @MOD_MASK_GUI, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load i32**, i32*** @encoder_actions, align 8
  %166 = getelementptr inbounds i32*, i32** %165, i64 1
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 8
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* @encoder_update_user.kc, align 4
  br label %275

170:                                              ; preds = %159, %154, %149, %144
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %170
  %176 = load i32, i32* %5, align 4
  %177 = load i32, i32* @MOD_MASK_ALT, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %175
  %181 = load i32**, i32*** @encoder_actions, align 8
  %182 = getelementptr inbounds i32*, i32** %181, i64 1
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 7
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* @encoder_update_user.kc, align 4
  br label %274

186:                                              ; preds = %175, %170
  %187 = load i32, i32* %5, align 4
  %188 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %202

191:                                              ; preds = %186
  %192 = load i32, i32* %5, align 4
  %193 = load i32, i32* @MOD_MASK_CTRL, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %191
  %197 = load i32**, i32*** @encoder_actions, align 8
  %198 = getelementptr inbounds i32*, i32** %197, i64 1
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 6
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* @encoder_update_user.kc, align 4
  br label %273

202:                                              ; preds = %191, %186
  %203 = load i32, i32* %5, align 4
  %204 = load i32, i32* @MOD_MASK_CTRL, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %202
  %208 = load i32, i32* %5, align 4
  %209 = load i32, i32* @MOD_MASK_ALT, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %207
  %213 = load i32**, i32*** @encoder_actions, align 8
  %214 = getelementptr inbounds i32*, i32** %213, i64 1
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 5
  %217 = load i32, i32* %216, align 4
  store i32 %217, i32* @encoder_update_user.kc, align 4
  br label %272

218:                                              ; preds = %207, %202
  %219 = load i32, i32* %5, align 4
  %220 = load i32, i32* @MOD_MASK_GUI, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %218
  %224 = load i32**, i32*** @encoder_actions, align 8
  %225 = getelementptr inbounds i32*, i32** %224, i64 1
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 4
  %228 = load i32, i32* %227, align 4
  store i32 %228, i32* @encoder_update_user.kc, align 4
  br label %271

229:                                              ; preds = %218
  %230 = load i32, i32* %5, align 4
  %231 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %229
  %235 = load i32**, i32*** @encoder_actions, align 8
  %236 = getelementptr inbounds i32*, i32** %235, i64 1
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 3
  %239 = load i32, i32* %238, align 4
  store i32 %239, i32* @encoder_update_user.kc, align 4
  br label %270

240:                                              ; preds = %229
  %241 = load i32, i32* %5, align 4
  %242 = load i32, i32* @MOD_MASK_ALT, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %240
  %246 = load i32**, i32*** @encoder_actions, align 8
  %247 = getelementptr inbounds i32*, i32** %246, i64 1
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 2
  %250 = load i32, i32* %249, align 4
  store i32 %250, i32* @encoder_update_user.kc, align 4
  br label %269

251:                                              ; preds = %240
  %252 = load i32, i32* %5, align 4
  %253 = load i32, i32* @MOD_MASK_CTRL, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %262

256:                                              ; preds = %251
  %257 = load i32**, i32*** @encoder_actions, align 8
  %258 = getelementptr inbounds i32*, i32** %257, i64 1
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 1
  %261 = load i32, i32* %260, align 4
  store i32 %261, i32* @encoder_update_user.kc, align 4
  br label %268

262:                                              ; preds = %251
  %263 = load i32**, i32*** @encoder_actions, align 8
  %264 = getelementptr inbounds i32*, i32** %263, i64 1
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 0
  %267 = load i32, i32* %266, align 4
  store i32 %267, i32* @encoder_update_user.kc, align 4
  br label %268

268:                                              ; preds = %262, %256
  br label %269

269:                                              ; preds = %268, %245
  br label %270

270:                                              ; preds = %269, %234
  br label %271

271:                                              ; preds = %270, %223
  br label %272

272:                                              ; preds = %271, %212
  br label %273

273:                                              ; preds = %272, %196
  br label %274

274:                                              ; preds = %273, %180
  br label %275

275:                                              ; preds = %274, %164
  br label %276

276:                                              ; preds = %275, %143
  %277 = call i32 (...) @clear_mods()
  %278 = load i32, i32* @encoder_update_user.kc, align 4
  %279 = call i32 @tap_code16(i32 %278)
  %280 = load i32, i32* %5, align 4
  %281 = call i32 @set_mods(i32 %280)
  br label %296

282:                                              ; preds = %2
  %283 = load i32, i32* %3, align 4
  %284 = icmp eq i32 %283, 1
  br i1 %284, label %285, label %295

285:                                              ; preds = %282
  %286 = load i32, i32* %4, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %285
  %289 = load i32, i32* @KC_0, align 4
  %290 = call i32 @tap_code(i32 %289)
  br label %294

291:                                              ; preds = %285
  %292 = load i32, i32* @KC_1, align 4
  %293 = call i32 @tap_code(i32 %292)
  br label %294

294:                                              ; preds = %291, %288
  br label %295

295:                                              ; preds = %294, %282
  br label %296

296:                                              ; preds = %295, %276
  ret void
}

declare dso_local i32 @get_mods(...) #1

declare dso_local i32 @clear_mods(...) #1

declare dso_local i32 @tap_code16(i32) #1

declare dso_local i32 @set_mods(i32) #1

declare dso_local i32 @tap_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
