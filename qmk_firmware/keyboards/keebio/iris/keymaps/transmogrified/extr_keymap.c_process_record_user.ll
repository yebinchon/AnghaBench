; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/iris/keymaps/transmogrified/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/iris/keymaps/transmogrified/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@_QWERTY = common dso_local global i32 0, align 4
@configOn = common dso_local global i32 0, align 4
@momentaryRBLLevel = common dso_local global i8* null, align 8
@momentaryLBLLevel = common dso_local global i8* null, align 8
@_COLEMAK = common dso_local global i32 0, align 4
@_CONFIG = common dso_local global i32 0, align 4
@_RLAYER = common dso_local global i32 0, align 4
@_LLAYER = common dso_local global i32 0, align 4
@_DUAL = common dso_local global i32 0, align 4
@layerBLStep = common dso_local global i32 0, align 4
@KC_LGUI = common dso_local global i32 0, align 4
@llocked = common dso_local global i32 0, align 4
@rlocked = common dso_local global i32 0, align 4
@lockedBLLevel = common dso_local global i8* null, align 8
@BACKLIGHT_LEVELS = common dso_local global i32 0, align 4
@blSteps = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %263 [
    i32 130, label %13
    i32 136, label %31
    i32 135, label %49
    i32 129, label %67
    i32 132, label %126
    i32 128, label %183
    i32 131, label %202
    i32 133, label %221
    i32 134, label %242
  ]

13:                                               ; preds = %2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load i32, i32* @_QWERTY, align 4
  %21 = call i32 @set_single_persistent_default_layer(i32 %20)
  store i32 0, i32* @configOn, align 4
  %22 = load i8*, i8** @momentaryRBLLevel, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** @momentaryLBLLevel, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %19
  %28 = call i32 (...) @backlight_toggle()
  br label %29

29:                                               ; preds = %27, %24
  br label %30

30:                                               ; preds = %29, %13
  store i32 0, i32* %3, align 4
  br label %264

31:                                               ; preds = %2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load i32, i32* @_COLEMAK, align 4
  %39 = call i32 @set_single_persistent_default_layer(i32 %38)
  store i32 0, i32* @configOn, align 4
  %40 = load i8*, i8** @momentaryRBLLevel, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** @momentaryLBLLevel, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42, %37
  %46 = call i32 (...) @backlight_toggle()
  br label %47

47:                                               ; preds = %45, %42
  br label %48

48:                                               ; preds = %47, %31
  store i32 0, i32* %3, align 4
  br label %264

49:                                               ; preds = %2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load i32, i32* @_CONFIG, align 4
  %57 = call i32 @set_single_persistent_default_layer(i32 %56)
  store i32 1, i32* @configOn, align 4
  %58 = load i8*, i8** @momentaryRBLLevel, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** @momentaryLBLLevel, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %60, %55
  %64 = call i32 (...) @backlight_toggle()
  br label %65

65:                                               ; preds = %63, %60
  br label %66

66:                                               ; preds = %65, %49
  store i32 0, i32* %3, align 4
  br label %264

67:                                               ; preds = %2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %67
  %74 = load i32, i32* @_RLAYER, align 4
  %75 = call i32 @layer_on(i32 %74)
  %76 = load i32, i32* @_RLAYER, align 4
  %77 = load i32, i32* @_LLAYER, align 4
  %78 = load i32, i32* @_DUAL, align 4
  %79 = call i32 @update_tri_layer(i32 %76, i32 %77, i32 %78)
  %80 = call i8* (...) @get_backlight_level()
  store i8* %80, i8** @momentaryRBLLevel, align 8
  %81 = load i8*, i8** @momentaryRBLLevel, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %73
  %84 = load i8*, i8** @momentaryLBLLevel, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %97

86:                                               ; preds = %83, %73
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %93, %86
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @layerBLStep, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = call i32 (...) @backlight_increase()
  br label %93

93:                                               ; preds = %91
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %87

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96, %83
  br label %125

98:                                               ; preds = %67
  %99 = load i32, i32* @KC_LGUI, align 4
  %100 = call i32 @unregister_code(i32 %99)
  %101 = load i32, i32* @_RLAYER, align 4
  %102 = call i32 @layer_off(i32 %101)
  %103 = load i32, i32* @_RLAYER, align 4
  %104 = load i32, i32* @_LLAYER, align 4
  %105 = load i32, i32* @_DUAL, align 4
  %106 = call i32 @update_tri_layer(i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* @llocked, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %98
  %110 = load i32, i32* @configOn, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %109
  store i32 0, i32* %7, align 4
  br label %113

113:                                              ; preds = %119, %112
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @layerBLStep, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = call i32 (...) @backlight_decrease()
  br label %119

119:                                              ; preds = %117
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %113

122:                                              ; preds = %113
  br label %124

123:                                              ; preds = %109, %98
  br label %124

124:                                              ; preds = %123, %122
  store i32 0, i32* @rlocked, align 4
  br label %125

125:                                              ; preds = %124, %97
  store i32 0, i32* %3, align 4
  br label %264

126:                                              ; preds = %2
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %157

132:                                              ; preds = %126
  %133 = load i32, i32* @_LLAYER, align 4
  %134 = call i32 @layer_on(i32 %133)
  %135 = load i32, i32* @_RLAYER, align 4
  %136 = load i32, i32* @_LLAYER, align 4
  %137 = load i32, i32* @_DUAL, align 4
  %138 = call i32 @update_tri_layer(i32 %135, i32 %136, i32 %137)
  %139 = call i8* (...) @get_backlight_level()
  store i8* %139, i8** @momentaryLBLLevel, align 8
  %140 = load i8*, i8** @momentaryRBLLevel, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %132
  %143 = load i8*, i8** @momentaryLBLLevel, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %156

145:                                              ; preds = %142, %132
  store i32 0, i32* %8, align 4
  br label %146

146:                                              ; preds = %152, %145
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @layerBLStep, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = call i32 (...) @backlight_increase()
  br label %152

152:                                              ; preds = %150
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %8, align 4
  br label %146

155:                                              ; preds = %146
  br label %156

156:                                              ; preds = %155, %142
  br label %182

157:                                              ; preds = %126
  %158 = load i32, i32* @_LLAYER, align 4
  %159 = call i32 @layer_off(i32 %158)
  %160 = load i32, i32* @_RLAYER, align 4
  %161 = load i32, i32* @_LLAYER, align 4
  %162 = load i32, i32* @_DUAL, align 4
  %163 = call i32 @update_tri_layer(i32 %160, i32 %161, i32 %162)
  %164 = load i32, i32* @rlocked, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %180

166:                                              ; preds = %157
  %167 = load i32, i32* @configOn, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %166
  store i32 0, i32* %9, align 4
  br label %170

170:                                              ; preds = %176, %169
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* @layerBLStep, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = call i32 (...) @backlight_decrease()
  br label %176

176:                                              ; preds = %174
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %9, align 4
  br label %170

179:                                              ; preds = %170
  br label %181

180:                                              ; preds = %166, %157
  br label %181

181:                                              ; preds = %180, %179
  store i32 0, i32* @llocked, align 4
  br label %182

182:                                              ; preds = %181, %156
  store i32 0, i32* %3, align 4
  br label %264

183:                                              ; preds = %2
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %200

189:                                              ; preds = %183
  %190 = load i32, i32* @_RLAYER, align 4
  %191 = call i32 @layer_on(i32 %190)
  %192 = load i32, i32* @rlocked, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %189
  %195 = load i32, i32* @llocked, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %194
  %198 = call i8* (...) @get_backlight_level()
  store i8* %198, i8** @lockedBLLevel, align 8
  br label %199

199:                                              ; preds = %197, %194, %189
  store i32 1, i32* @rlocked, align 4
  br label %201

200:                                              ; preds = %183
  br label %201

201:                                              ; preds = %200, %199
  store i32 0, i32* %3, align 4
  br label %264

202:                                              ; preds = %2
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %219

208:                                              ; preds = %202
  %209 = load i32, i32* @_LLAYER, align 4
  %210 = call i32 @layer_on(i32 %209)
  %211 = load i32, i32* @rlocked, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %208
  %214 = load i32, i32* @llocked, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %213
  %217 = call i8* (...) @get_backlight_level()
  store i8* %217, i8** @lockedBLLevel, align 8
  br label %218

218:                                              ; preds = %216, %213, %208
  store i32 1, i32* @llocked, align 4
  br label %220

219:                                              ; preds = %202
  br label %220

220:                                              ; preds = %219, %218
  store i32 0, i32* %3, align 4
  br label %264

221:                                              ; preds = %2
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %240

227:                                              ; preds = %221
  store i32 0, i32* %10, align 4
  br label %228

228:                                              ; preds = %236, %227
  %229 = load i32, i32* %10, align 4
  %230 = load i32, i32* @BACKLIGHT_LEVELS, align 4
  %231 = load i32, i32* @blSteps, align 4
  %232 = sdiv i32 %230, %231
  %233 = icmp slt i32 %229, %232
  br i1 %233, label %234, label %239

234:                                              ; preds = %228
  %235 = call i32 (...) @backlight_increase()
  br label %236

236:                                              ; preds = %234
  %237 = load i32, i32* %10, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %10, align 4
  br label %228

239:                                              ; preds = %228
  br label %241

240:                                              ; preds = %221
  br label %241

241:                                              ; preds = %240, %239
  store i32 0, i32* %3, align 4
  br label %264

242:                                              ; preds = %2
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %261

248:                                              ; preds = %242
  store i32 0, i32* %11, align 4
  br label %249

249:                                              ; preds = %257, %248
  %250 = load i32, i32* %11, align 4
  %251 = load i32, i32* @BACKLIGHT_LEVELS, align 4
  %252 = load i32, i32* @blSteps, align 4
  %253 = sdiv i32 %251, %252
  %254 = icmp slt i32 %250, %253
  br i1 %254, label %255, label %260

255:                                              ; preds = %249
  %256 = call i32 (...) @backlight_decrease()
  br label %257

257:                                              ; preds = %255
  %258 = load i32, i32* %11, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %11, align 4
  br label %249

260:                                              ; preds = %249
  br label %262

261:                                              ; preds = %242
  br label %262

262:                                              ; preds = %261, %260
  store i32 0, i32* %3, align 4
  br label %264

263:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %264

264:                                              ; preds = %263, %262, %241, %220, %201, %182, %125, %66, %48, %30
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

declare dso_local i32 @set_single_persistent_default_layer(i32) #1

declare dso_local i32 @backlight_toggle(...) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i8* @get_backlight_level(...) #1

declare dso_local i32 @backlight_increase(...) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @backlight_decrease(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
