; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/grahampheath/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/grahampheath/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"mode just switched to qwerty and this is a huge string\0A\00", align 1
@_QWERTY = common dso_local global i32 0, align 4
@_COLEMAK = common dso_local global i32 0, align 4
@_DVORAK = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@_EMOJI = common dso_local global i32 0, align 4
@_PLOVER = common dso_local global i32 0, align 4
@keymap_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"&fliptable;\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c":-\\\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"&shit; \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c":'-( \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"&llap; \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c":-D \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c":-P \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c":-) \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c":-( \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"<3 \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"&shrug; \00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"&thumbup; \00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"&thumbdown; \00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"&fingerleft; \00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"&fingerright; \00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c";-) \00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"&above; \00", align 1
@plover_gb_song = common dso_local global i32 0, align 4
@plover_song = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %282 [
    i32 135, label %7
    i32 150, label %18
    i32 147, label %28
    i32 137, label %38
    i32 134, label %59
    i32 151, label %80
    i32 136, label %93
    i32 146, label %119
    i32 145, label %129
    i32 149, label %138
    i32 133, label %147
    i32 148, label %156
    i32 138, label %165
    i32 141, label %174
    i32 129, label %183
    i32 139, label %192
    i32 142, label %201
    i32 140, label %210
    i32 132, label %219
    i32 130, label %228
    i32 131, label %237
    i32 144, label %246
    i32 143, label %255
    i32 128, label %264
    i32 152, label %273
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = call i32 @print(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @_QWERTY, align 4
  %16 = call i32 @set_single_persistent_default_layer(i32 %15)
  br label %17

17:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %283

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @_COLEMAK, align 4
  %26 = call i32 @set_single_persistent_default_layer(i32 %25)
  br label %27

27:                                               ; preds = %24, %18
  store i32 0, i32* %3, align 4
  br label %283

28:                                               ; preds = %2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @_DVORAK, align 4
  %36 = call i32 @set_single_persistent_default_layer(i32 %35)
  br label %37

37:                                               ; preds = %34, %28
  store i32 0, i32* %3, align 4
  br label %283

38:                                               ; preds = %2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i32, i32* @_LOWER, align 4
  %46 = call i32 @layer_on(i32 %45)
  %47 = load i32, i32* @_LOWER, align 4
  %48 = load i32, i32* @_RAISE, align 4
  %49 = load i32, i32* @_ADJUST, align 4
  %50 = call i32 @update_tri_layer(i32 %47, i32 %48, i32 %49)
  br label %58

51:                                               ; preds = %38
  %52 = load i32, i32* @_LOWER, align 4
  %53 = call i32 @layer_off(i32 %52)
  %54 = load i32, i32* @_LOWER, align 4
  %55 = load i32, i32* @_RAISE, align 4
  %56 = load i32, i32* @_ADJUST, align 4
  %57 = call i32 @update_tri_layer(i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %44
  store i32 0, i32* %3, align 4
  br label %283

59:                                               ; preds = %2
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i32, i32* @_RAISE, align 4
  %67 = call i32 @layer_on(i32 %66)
  %68 = load i32, i32* @_LOWER, align 4
  %69 = load i32, i32* @_RAISE, align 4
  %70 = load i32, i32* @_ADJUST, align 4
  %71 = call i32 @update_tri_layer(i32 %68, i32 %69, i32 %70)
  br label %79

72:                                               ; preds = %59
  %73 = load i32, i32* @_RAISE, align 4
  %74 = call i32 @layer_off(i32 %73)
  %75 = load i32, i32* @_LOWER, align 4
  %76 = load i32, i32* @_RAISE, align 4
  %77 = load i32, i32* @_ADJUST, align 4
  %78 = call i32 @update_tri_layer(i32 %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %72, %65
  store i32 0, i32* %3, align 4
  br label %283

80:                                               ; preds = %2
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* @KC_RSFT, align 4
  %88 = call i32 @register_code(i32 %87)
  br label %92

89:                                               ; preds = %80
  %90 = load i32, i32* @KC_RSFT, align 4
  %91 = call i32 @unregister_code(i32 %90)
  br label %92

92:                                               ; preds = %89, %86
  store i32 0, i32* %3, align 4
  br label %283

93:                                               ; preds = %2
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %118

99:                                               ; preds = %93
  %100 = load i32, i32* @_RAISE, align 4
  %101 = call i32 @layer_off(i32 %100)
  %102 = load i32, i32* @_LOWER, align 4
  %103 = call i32 @layer_off(i32 %102)
  %104 = load i32, i32* @_ADJUST, align 4
  %105 = call i32 @layer_off(i32 %104)
  %106 = load i32, i32* @_EMOJI, align 4
  %107 = call i32 @layer_off(i32 %106)
  %108 = load i32, i32* @_PLOVER, align 4
  %109 = call i32 @layer_on(i32 %108)
  %110 = call i32 (...) @eeconfig_is_enabled()
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %99
  %113 = call i32 (...) @eeconfig_init()
  br label %114

114:                                              ; preds = %112, %99
  %115 = call i32 (...) @eeconfig_read_keymap()
  store i32 %115, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 0), align 4
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 1), align 4
  %117 = call i32 @eeconfig_update_keymap(i32 %116)
  br label %118

118:                                              ; preds = %114, %93
  store i32 0, i32* %3, align 4
  br label %283

119:                                              ; preds = %2
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i32, i32* @_PLOVER, align 4
  %127 = call i32 @layer_off(i32 %126)
  br label %128

128:                                              ; preds = %125, %119
  store i32 0, i32* %3, align 4
  br label %283

129:                                              ; preds = %2
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = call i32 @SEND_STRING(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %129
  store i32 0, i32* %3, align 4
  br label %283

138:                                              ; preds = %2
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = call i32 @SEND_STRING(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %138
  store i32 0, i32* %3, align 4
  br label %283

147:                                              ; preds = %2
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = call i32 @SEND_STRING(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %147
  store i32 0, i32* %3, align 4
  br label %283

156:                                              ; preds = %2
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = call i32 @SEND_STRING(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %156
  store i32 0, i32* %3, align 4
  br label %283

165:                                              ; preds = %2
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %165
  %172 = call i32 @SEND_STRING(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %173

173:                                              ; preds = %171, %165
  store i32 0, i32* %3, align 4
  br label %283

174:                                              ; preds = %2
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = call i32 @SEND_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %174
  store i32 0, i32* %3, align 4
  br label %283

183:                                              ; preds = %2
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %183
  %190 = call i32 @SEND_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %191

191:                                              ; preds = %189, %183
  store i32 0, i32* %3, align 4
  br label %283

192:                                              ; preds = %2
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %192
  %199 = call i32 @SEND_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %200

200:                                              ; preds = %198, %192
  store i32 0, i32* %3, align 4
  br label %283

201:                                              ; preds = %2
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %201
  %208 = call i32 @SEND_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %209

209:                                              ; preds = %207, %201
  store i32 0, i32* %3, align 4
  br label %283

210:                                              ; preds = %2
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %210
  %217 = call i32 @SEND_STRING(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %218

218:                                              ; preds = %216, %210
  store i32 0, i32* %3, align 4
  br label %283

219:                                              ; preds = %2
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %219
  %226 = call i32 @SEND_STRING(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %227

227:                                              ; preds = %225, %219
  store i32 0, i32* %3, align 4
  br label %283

228:                                              ; preds = %2
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %228
  %235 = call i32 @SEND_STRING(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  br label %236

236:                                              ; preds = %234, %228
  store i32 0, i32* %3, align 4
  br label %283

237:                                              ; preds = %2
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %237
  %244 = call i32 @SEND_STRING(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  br label %245

245:                                              ; preds = %243, %237
  store i32 0, i32* %3, align 4
  br label %283

246:                                              ; preds = %2
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %246
  %253 = call i32 @SEND_STRING(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  br label %254

254:                                              ; preds = %252, %246
  store i32 0, i32* %3, align 4
  br label %283

255:                                              ; preds = %2
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %255
  %262 = call i32 @SEND_STRING(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  br label %263

263:                                              ; preds = %261, %255
  store i32 0, i32* %3, align 4
  br label %283

264:                                              ; preds = %2
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %264
  %271 = call i32 @SEND_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  br label %272

272:                                              ; preds = %270, %264
  store i32 0, i32* %3, align 4
  br label %283

273:                                              ; preds = %2
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %273
  %280 = call i32 @SEND_STRING(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  br label %281

281:                                              ; preds = %279, %273
  store i32 0, i32* %3, align 4
  br label %283

282:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %283

283:                                              ; preds = %282, %281, %272, %263, %254, %245, %236, %227, %218, %209, %200, %191, %182, %173, %164, %155, %146, %137, %128, %118, %92, %79, %58, %37, %27, %17
  %284 = load i32, i32* %3, align 4
  ret i32 %284
}

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @set_single_persistent_default_layer(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @eeconfig_is_enabled(...) #1

declare dso_local i32 @eeconfig_init(...) #1

declare dso_local i32 @eeconfig_read_keymap(...) #1

declare dso_local i32 @eeconfig_update_keymap(i32) #1

declare dso_local i32 @SEND_STRING(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
