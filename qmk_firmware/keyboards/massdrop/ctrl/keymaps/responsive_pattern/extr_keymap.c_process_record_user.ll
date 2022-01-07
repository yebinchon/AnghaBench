; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/ctrl/keymaps/responsive_pattern/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/ctrl/keymaps/responsive_pattern/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@process_record_user.key_timer = internal global i8* null, align 8
@LED_GCR_STEP = common dso_local global i64 0, align 8
@LED_GCR_MAX = common dso_local global i64 0, align 8
@gcr_desired = common dso_local global i64 0, align 8
@led_animation_breathing = common dso_local global i32 0, align 4
@gcr_breathe = common dso_local global i64 0, align 8
@led_animation_id = common dso_local global i32 0, align 4
@led_setups_count = common dso_local global i32 0, align 4
@ANIMATION_SPEED_STEP = common dso_local global i32 0, align 4
@led_animation_speed = common dso_local global i32 0, align 4
@led_lighting_mode = common dso_local global i32 0, align 4
@LED_MODE_MAX_INDEX = common dso_local global i32 0, align 4
@LED_MODE_NORMAL = common dso_local global i32 0, align 4
@led_enabled = common dso_local global i32 0, align 4
@BREATHE_MIN_STEP = common dso_local global i32 0, align 4
@led_animation_breathe_cur = common dso_local global i32 0, align 4
@breathe_dir = common dso_local global i32 0, align 4
@led_animation_direction = common dso_local global i32 0, align 4
@MODS_SHIFT = common dso_local global i32 0, align 4
@MODS_CTRL = common dso_local global i32 0, align 4
@usb_extra_manual = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"USB extra port manual mode\00", align 1
@usb_gcr_auto = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"USB GCR auto mode\00", align 1
@debug_enable = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Debug mode\00", align 1
@debug_matrix = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"Debug matrix\00", align 1
@debug_keyboard = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Debug keyboard\00", align 1
@debug_mouse = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"Debug mouse\00", align 1
@USER_CONFIG = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@KEY_STROKES_LENGTH = common dso_local global i32 0, align 4
@KEY_STROKES = common dso_local global %struct.TYPE_9__* null, align 8
@COLOR_PATTERNS_COUNT = common dso_local global i32 0, align 4
@PATTERN_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %401 [
    i32 149, label %14
    i32 150, label %39
    i32 142, label %61
    i32 141, label %78
    i32 143, label %95
    i32 144, label %106
    i32 133, label %121
    i32 132, label %137
    i32 145, label %151
    i32 146, label %161
    i32 134, label %171
    i32 131, label %189
    i32 128, label %201
    i32 129, label %217
    i32 151, label %233
    i32 152, label %243
    i32 154, label %253
    i32 153, label %263
    i32 130, label %273
    i32 137, label %289
    i32 139, label %289
    i32 135, label %335
    i32 138, label %335
    i32 140, label %356
    i32 136, label %356
    i32 147, label %378
    i32 148, label %378
  ]

14:                                               ; preds = %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %14
  %21 = load i64, i64* @LED_GCR_STEP, align 8
  %22 = load i64, i64* @LED_GCR_MAX, align 8
  %23 = load i64, i64* @gcr_desired, align 8
  %24 = sub nsw i64 %22, %23
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i64, i64* @LED_GCR_MAX, align 8
  store i64 %27, i64* @gcr_desired, align 8
  br label %32

28:                                               ; preds = %20
  %29 = load i64, i64* @LED_GCR_STEP, align 8
  %30 = load i64, i64* @gcr_desired, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* @gcr_desired, align 8
  br label %32

32:                                               ; preds = %28, %26
  %33 = load i32, i32* @led_animation_breathing, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i64, i64* @gcr_desired, align 8
  store i64 %36, i64* @gcr_breathe, align 8
  br label %37

37:                                               ; preds = %35, %32
  br label %38

38:                                               ; preds = %37, %14
  store i32 0, i32* %3, align 4
  br label %450

39:                                               ; preds = %2
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = load i64, i64* @LED_GCR_STEP, align 8
  %47 = load i64, i64* @gcr_desired, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i64 0, i64* @gcr_desired, align 8
  br label %54

50:                                               ; preds = %45
  %51 = load i64, i64* @LED_GCR_STEP, align 8
  %52 = load i64, i64* @gcr_desired, align 8
  %53 = sub nsw i64 %52, %51
  store i64 %53, i64* @gcr_desired, align 8
  br label %54

54:                                               ; preds = %50, %49
  %55 = load i32, i32* @led_animation_breathing, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i64, i64* @gcr_desired, align 8
  store i64 %58, i64* @gcr_breathe, align 8
  br label %59

59:                                               ; preds = %57, %54
  br label %60

60:                                               ; preds = %59, %39
  store i32 0, i32* %3, align 4
  br label %450

61:                                               ; preds = %2
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load i32, i32* @led_animation_id, align 4
  %69 = load i32, i32* @led_setups_count, align 4
  %70 = sub nsw i32 %69, 1
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 0, i32* @led_animation_id, align 4
  br label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @led_animation_id, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @led_animation_id, align 4
  br label %76

76:                                               ; preds = %73, %72
  br label %77

77:                                               ; preds = %76, %61
  store i32 0, i32* %3, align 4
  br label %450

78:                                               ; preds = %2
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %78
  %85 = load i32, i32* @led_animation_id, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* @led_setups_count, align 4
  %89 = sub nsw i32 %88, 1
  store i32 %89, i32* @led_animation_id, align 4
  br label %93

90:                                               ; preds = %84
  %91 = load i32, i32* @led_animation_id, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* @led_animation_id, align 4
  br label %93

93:                                               ; preds = %90, %87
  br label %94

94:                                               ; preds = %93, %78
  store i32 0, i32* %3, align 4
  br label %450

95:                                               ; preds = %2
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32, i32* @ANIMATION_SPEED_STEP, align 4
  %103 = load i32, i32* @led_animation_speed, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* @led_animation_speed, align 4
  br label %105

105:                                              ; preds = %101, %95
  store i32 0, i32* %3, align 4
  br label %450

106:                                              ; preds = %2
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %106
  %113 = load i32, i32* @ANIMATION_SPEED_STEP, align 4
  %114 = load i32, i32* @led_animation_speed, align 4
  %115 = sub nsw i32 %114, %113
  store i32 %115, i32* @led_animation_speed, align 4
  %116 = load i32, i32* @led_animation_speed, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  store i32 0, i32* @led_animation_speed, align 4
  br label %119

119:                                              ; preds = %118, %112
  br label %120

120:                                              ; preds = %119, %106
  store i32 0, i32* %3, align 4
  br label %450

121:                                              ; preds = %2
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %121
  %128 = load i32, i32* @led_lighting_mode, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* @led_lighting_mode, align 4
  %130 = load i32, i32* @led_lighting_mode, align 4
  %131 = load i32, i32* @LED_MODE_MAX_INDEX, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = load i32, i32* @LED_MODE_NORMAL, align 4
  store i32 %134, i32* @led_lighting_mode, align 4
  br label %135

135:                                              ; preds = %133, %127
  br label %136

136:                                              ; preds = %135, %121
  store i32 0, i32* %3, align 4
  br label %450

137:                                              ; preds = %2
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %137
  %144 = load i32, i32* @led_enabled, align 4
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  store i32 %147, i32* @led_enabled, align 4
  %148 = load i32, i32* @led_enabled, align 4
  %149 = call i32 @I2C3733_Control_Set(i32 %148)
  br label %150

150:                                              ; preds = %143, %137
  store i32 0, i32* %3, align 4
  br label %450

151:                                              ; preds = %2
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  store i32 1, i32* @led_enabled, align 4
  %158 = load i32, i32* @led_enabled, align 4
  %159 = call i32 @I2C3733_Control_Set(i32 %158)
  br label %160

160:                                              ; preds = %157, %151
  store i32 0, i32* %3, align 4
  br label %450

161:                                              ; preds = %2
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %161
  store i32 0, i32* @led_enabled, align 4
  %168 = load i32, i32* @led_enabled, align 4
  %169 = call i32 @I2C3733_Control_Set(i32 %168)
  br label %170

170:                                              ; preds = %167, %161
  store i32 0, i32* %3, align 4
  br label %450

171:                                              ; preds = %2
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %188

177:                                              ; preds = %171
  %178 = load i32, i32* @led_animation_breathing, align 4
  %179 = icmp ne i32 %178, 0
  %180 = xor i1 %179, true
  %181 = zext i1 %180 to i32
  store i32 %181, i32* @led_animation_breathing, align 4
  %182 = load i32, i32* @led_animation_breathing, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %177
  %185 = load i64, i64* @gcr_desired, align 8
  store i64 %185, i64* @gcr_breathe, align 8
  %186 = load i32, i32* @BREATHE_MIN_STEP, align 4
  store i32 %186, i32* @led_animation_breathe_cur, align 4
  store i32 1, i32* @breathe_dir, align 4
  br label %187

187:                                              ; preds = %184, %177
  br label %188

188:                                              ; preds = %187, %171
  store i32 0, i32* %3, align 4
  br label %450

189:                                              ; preds = %2
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %189
  %196 = load i32, i32* @led_animation_direction, align 4
  %197 = icmp ne i32 %196, 0
  %198 = xor i1 %197, true
  %199 = zext i1 %198 to i32
  store i32 %199, i32* @led_animation_direction, align 4
  br label %200

200:                                              ; preds = %195, %189
  store i32 0, i32* %3, align 4
  br label %450

201:                                              ; preds = %2
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %201
  %208 = load i32, i32* @MODS_SHIFT, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %207
  %211 = load i32, i32* @MODS_CTRL, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load i32, i32* @usb_extra_manual, align 4
  %215 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %214, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %216

216:                                              ; preds = %213, %210, %207, %201
  store i32 0, i32* %3, align 4
  br label %450

217:                                              ; preds = %2
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %232

223:                                              ; preds = %217
  %224 = load i32, i32* @MODS_SHIFT, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %223
  %227 = load i32, i32* @MODS_CTRL, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load i32, i32* @usb_gcr_auto, align 4
  %231 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %230, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %232

232:                                              ; preds = %229, %226, %223, %217
  store i32 0, i32* %3, align 4
  br label %450

233:                                              ; preds = %2
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %233
  %240 = load i32, i32* @debug_enable, align 4
  %241 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %240, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %242

242:                                              ; preds = %239, %233
  store i32 0, i32* %3, align 4
  br label %450

243:                                              ; preds = %2
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %243
  %250 = load i32, i32* @debug_matrix, align 4
  %251 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %250, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %252

252:                                              ; preds = %249, %243
  store i32 0, i32* %3, align 4
  br label %450

253:                                              ; preds = %2
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %253
  %260 = load i32, i32* @debug_keyboard, align 4
  %261 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %260, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %262

262:                                              ; preds = %259, %253
  store i32 0, i32* %3, align 4
  br label %450

263:                                              ; preds = %2
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %263
  %270 = load i32, i32* @debug_mouse, align 4
  %271 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %270, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %272

272:                                              ; preds = %269, %263
  store i32 0, i32* %3, align 4
  br label %450

273:                                              ; preds = %2
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %273
  %280 = call i8* (...) @timer_read32()
  store i8* %280, i8** @process_record_user.key_timer, align 8
  br label %288

281:                                              ; preds = %273
  %282 = load i8*, i8** @process_record_user.key_timer, align 8
  %283 = call i32 @timer_elapsed32(i8* %282)
  %284 = icmp sge i32 %283, 500
  br i1 %284, label %285, label %287

285:                                              ; preds = %281
  %286 = call i32 (...) @reset_keyboard()
  br label %287

287:                                              ; preds = %285, %281
  br label %288

288:                                              ; preds = %287, %279
  store i32 0, i32* %3, align 4
  br label %450

289:                                              ; preds = %2, %2
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %334

295:                                              ; preds = %289
  %296 = load i32, i32* %4, align 4
  %297 = icmp eq i32 %296, 137
  %298 = zext i1 %297 to i64
  %299 = select i1 %297, i32 6, i32 1
  store i32 %299, i32* %6, align 4
  %300 = load i32, i32* %6, align 4
  %301 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 0), align 4
  %302 = add nsw i32 %301, %300
  store i32 %302, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 0), align 4
  %303 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 0), align 4
  %304 = srem i32 %303, 7
  store i32 %304, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 0), align 4
  %305 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 0), align 4
  %306 = icmp sle i32 %305, 4
  br i1 %306, label %307, label %308

307:                                              ; preds = %295
  store i32 25, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 2), align 4
  store i32 50, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 3), align 4
  br label %308

308:                                              ; preds = %307, %295
  %309 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 0), align 4
  switch i32 %309, label %317 [
    i32 0, label %310
    i32 1, label %311
    i32 2, label %312
    i32 3, label %313
    i32 4, label %314
    i32 5, label %315
    i32 6, label %316
  ]

310:                                              ; preds = %308
  br label %317

311:                                              ; preds = %308
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 4), align 4
  br label %317

312:                                              ; preds = %308
  store i32 5, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 4), align 4
  br label %317

313:                                              ; preds = %308
  store i32 10, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 4), align 4
  br label %317

314:                                              ; preds = %308
  store i32 10, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 4), align 4
  br label %317

315:                                              ; preds = %308
  store i32 10, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 4), align 4
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 2), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 1), align 4
  store i32 100, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 3), align 4
  br label %317

316:                                              ; preds = %308
  store i32 25, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 4), align 4
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 2), align 4
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 1), align 4
  store i32 10, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 3), align 4
  br label %317

317:                                              ; preds = %308, %316, %315, %314, %313, %312, %311, %310
  store i32 0, i32* %7, align 4
  br label %318

318:                                              ; preds = %328, %317
  %319 = load i32, i32* %7, align 4
  %320 = load i32, i32* @KEY_STROKES_LENGTH, align 4
  %321 = icmp slt i32 %319, %320
  br i1 %321, label %322, label %331

322:                                              ; preds = %318
  %323 = load %struct.TYPE_9__*, %struct.TYPE_9__** @KEY_STROKES, align 8
  %324 = load i32, i32* %7, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i32 0, i32 0
  store i32 0, i32* %327, align 8
  br label %328

328:                                              ; preds = %322
  %329 = load i32, i32* %7, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %7, align 4
  br label %318

331:                                              ; preds = %318
  %332 = call i32 (...) @refresh_pattern_indicators()
  %333 = call i32 (...) @refresh_color_pattern_indicators()
  br label %334

334:                                              ; preds = %331, %289
  store i32 0, i32* %3, align 4
  br label %450

335:                                              ; preds = %2, %2
  %336 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %355

341:                                              ; preds = %335
  %342 = load i32, i32* %4, align 4
  %343 = icmp eq i32 %342, 135
  %344 = zext i1 %343 to i64
  %345 = select i1 %343, i32 1, i32 -1
  %346 = trunc i32 %345 to i16
  store i16 %346, i16* %8, align 2
  %347 = load i16, i16* %8, align 2
  %348 = sext i16 %347 to i32
  %349 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 4), align 4
  %350 = add nsw i32 %349, %348
  store i32 %350, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 4), align 4
  %351 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 4), align 4
  %352 = icmp slt i32 %351, 1
  br i1 %352, label %353, label %354

353:                                              ; preds = %341
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 4), align 4
  br label %354

354:                                              ; preds = %353, %341
  br label %355

355:                                              ; preds = %354, %335
  store i32 0, i32* %3, align 4
  br label %450

356:                                              ; preds = %2, %2
  %357 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %358 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %377

362:                                              ; preds = %356
  %363 = load i32, i32* %4, align 4
  %364 = icmp eq i32 %363, 140
  %365 = zext i1 %364 to i64
  %366 = select i1 %364, i32 -1, i32 1
  %367 = trunc i32 %366 to i16
  store i16 %367, i16* %9, align 2
  %368 = load i16, i16* %9, align 2
  %369 = sext i16 %368 to i32
  %370 = mul nsw i32 10, %369
  %371 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 3), align 4
  %372 = add nsw i32 %371, %370
  store i32 %372, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 3), align 4
  %373 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 3), align 4
  %374 = icmp slt i32 %373, 10
  br i1 %374, label %375, label %376

375:                                              ; preds = %362
  store i32 10, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 3), align 4
  br label %376

376:                                              ; preds = %375, %362
  br label %377

377:                                              ; preds = %376, %356
  store i32 0, i32* %3, align 4
  br label %450

378:                                              ; preds = %2, %2
  %379 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %400

384:                                              ; preds = %378
  %385 = load i32, i32* %4, align 4
  %386 = icmp eq i32 %385, 147
  br i1 %386, label %387, label %390

387:                                              ; preds = %384
  %388 = load i32, i32* @COLOR_PATTERNS_COUNT, align 4
  %389 = sub nsw i32 %388, 1
  br label %391

390:                                              ; preds = %384
  br label %391

391:                                              ; preds = %390, %387
  %392 = phi i32 [ %389, %387 ], [ 1, %390 ]
  store i32 %392, i32* %10, align 4
  %393 = load i32, i32* %10, align 4
  %394 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 2), align 4
  %395 = add nsw i32 %394, %393
  store i32 %395, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 2), align 4
  %396 = load i32, i32* @COLOR_PATTERNS_COUNT, align 4
  %397 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 2), align 4
  %398 = srem i32 %397, %396
  store i32 %398, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @USER_CONFIG, i32 0, i32 2), align 4
  %399 = call i32 (...) @refresh_color_pattern_indicators()
  br label %400

400:                                              ; preds = %391, %378
  store i32 0, i32* %3, align 4
  br label %450

401:                                              ; preds = %2
  %402 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %449

407:                                              ; preds = %401
  %408 = load i32, i32* %4, align 4
  %409 = call i32 @ktli(i32 %408)
  store i32 %409, i32* %11, align 4
  %410 = load i32, i32* %11, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %448

412:                                              ; preds = %407
  store i32 0, i32* %12, align 4
  br label %413

413:                                              ; preds = %444, %412
  %414 = load i32, i32* %12, align 4
  %415 = load i32, i32* @KEY_STROKES_LENGTH, align 4
  %416 = icmp slt i32 %414, %415
  br i1 %416, label %417, label %447

417:                                              ; preds = %413
  %418 = load %struct.TYPE_9__*, %struct.TYPE_9__** @KEY_STROKES, align 8
  %419 = load i32, i32* %12, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %418, i64 %420
  %422 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %443, label %425

425:                                              ; preds = %417
  %426 = load %struct.TYPE_9__*, %struct.TYPE_9__** @KEY_STROKES, align 8
  %427 = load i32, i32* %12, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %426, i64 %428
  %430 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %429, i32 0, i32 0
  store i32 1, i32* %430, align 8
  %431 = load i32, i32* %11, align 4
  %432 = load %struct.TYPE_9__*, %struct.TYPE_9__** @KEY_STROKES, align 8
  %433 = load i32, i32* %12, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %432, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %435, i32 0, i32 1
  store i32 %431, i32* %436, align 4
  %437 = call i8* (...) @timer_read32()
  %438 = load %struct.TYPE_9__*, %struct.TYPE_9__** @KEY_STROKES, align 8
  %439 = load i32, i32* %12, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %438, i64 %440
  %442 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %441, i32 0, i32 2
  store i8* %437, i8** %442, align 8
  br label %447

443:                                              ; preds = %417
  br label %444

444:                                              ; preds = %443
  %445 = load i32, i32* %12, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %12, align 4
  br label %413

447:                                              ; preds = %425, %413
  br label %448

448:                                              ; preds = %447, %407
  br label %449

449:                                              ; preds = %448, %401
  store i32 1, i32* %3, align 4
  br label %450

450:                                              ; preds = %449, %400, %377, %355, %334, %288, %272, %262, %252, %242, %232, %216, %200, %188, %170, %160, %150, %136, %120, %105, %94, %77, %60, %38
  %451 = load i32, i32* %3, align 4
  ret i32 %451
}

declare dso_local i32 @I2C3733_Control_Set(i32) #1

declare dso_local i32 @TOGGLE_FLAG_AND_PRINT(i32, i8*) #1

declare dso_local i8* @timer_read32(...) #1

declare dso_local i32 @timer_elapsed32(i8*) #1

declare dso_local i32 @reset_keyboard(...) #1

declare dso_local i32 @refresh_pattern_indicators(...) #1

declare dso_local i32 @refresh_color_pattern_indicators(...) #1

declare dso_local i32 @ktli(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
