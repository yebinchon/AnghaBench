; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/alt/keymaps/reywood/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/alt/keymaps/reywood/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@process_record_user.key_timer = internal global i32 0, align 4
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = call i32 @rgb_matrix_record_key_press(%struct.TYPE_6__* %6)
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %284 [
    i32 141, label %9
    i32 142, label %34
    i32 136, label %56
    i32 135, label %73
    i32 137, label %90
    i32 138, label %101
    i32 133, label %116
    i32 132, label %132
    i32 139, label %146
    i32 140, label %156
    i32 134, label %166
    i32 131, label %184
    i32 128, label %196
    i32 129, label %212
    i32 143, label %228
    i32 144, label %238
    i32 146, label %248
    i32 145, label %258
    i32 130, label %268
  ]

9:                                                ; preds = %2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %9
  %16 = load i64, i64* @LED_GCR_STEP, align 8
  %17 = load i64, i64* @LED_GCR_MAX, align 8
  %18 = load i64, i64* @gcr_desired, align 8
  %19 = sub nsw i64 %17, %18
  %20 = icmp sgt i64 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i64, i64* @LED_GCR_MAX, align 8
  store i64 %22, i64* @gcr_desired, align 8
  br label %27

23:                                               ; preds = %15
  %24 = load i64, i64* @LED_GCR_STEP, align 8
  %25 = load i64, i64* @gcr_desired, align 8
  %26 = add nsw i64 %25, %24
  store i64 %26, i64* @gcr_desired, align 8
  br label %27

27:                                               ; preds = %23, %21
  %28 = load i32, i32* @led_animation_breathing, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i64, i64* @gcr_desired, align 8
  store i64 %31, i64* @gcr_breathe, align 8
  br label %32

32:                                               ; preds = %30, %27
  br label %33

33:                                               ; preds = %32, %9
  store i32 0, i32* %3, align 4
  br label %285

34:                                               ; preds = %2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %34
  %41 = load i64, i64* @LED_GCR_STEP, align 8
  %42 = load i64, i64* @gcr_desired, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i64 0, i64* @gcr_desired, align 8
  br label %49

45:                                               ; preds = %40
  %46 = load i64, i64* @LED_GCR_STEP, align 8
  %47 = load i64, i64* @gcr_desired, align 8
  %48 = sub nsw i64 %47, %46
  store i64 %48, i64* @gcr_desired, align 8
  br label %49

49:                                               ; preds = %45, %44
  %50 = load i32, i32* @led_animation_breathing, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i64, i64* @gcr_desired, align 8
  store i64 %53, i64* @gcr_breathe, align 8
  br label %54

54:                                               ; preds = %52, %49
  br label %55

55:                                               ; preds = %54, %34
  store i32 0, i32* %3, align 4
  br label %285

56:                                               ; preds = %2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load i32, i32* @led_animation_id, align 4
  %64 = load i32, i32* @led_setups_count, align 4
  %65 = sub nsw i32 %64, 1
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* @led_animation_id, align 4
  br label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @led_animation_id, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @led_animation_id, align 4
  br label %71

71:                                               ; preds = %68, %67
  br label %72

72:                                               ; preds = %71, %56
  store i32 0, i32* %3, align 4
  br label %285

73:                                               ; preds = %2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load i32, i32* @led_animation_id, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* @led_setups_count, align 4
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* @led_animation_id, align 4
  br label %88

85:                                               ; preds = %79
  %86 = load i32, i32* @led_animation_id, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* @led_animation_id, align 4
  br label %88

88:                                               ; preds = %85, %82
  br label %89

89:                                               ; preds = %88, %73
  store i32 0, i32* %3, align 4
  br label %285

90:                                               ; preds = %2
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i32, i32* @ANIMATION_SPEED_STEP, align 4
  %98 = load i32, i32* @led_animation_speed, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* @led_animation_speed, align 4
  br label %100

100:                                              ; preds = %96, %90
  store i32 0, i32* %3, align 4
  br label %285

101:                                              ; preds = %2
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = load i32, i32* @ANIMATION_SPEED_STEP, align 4
  %109 = load i32, i32* @led_animation_speed, align 4
  %110 = sub nsw i32 %109, %108
  store i32 %110, i32* @led_animation_speed, align 4
  %111 = load i32, i32* @led_animation_speed, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i32 0, i32* @led_animation_speed, align 4
  br label %114

114:                                              ; preds = %113, %107
  br label %115

115:                                              ; preds = %114, %101
  store i32 0, i32* %3, align 4
  br label %285

116:                                              ; preds = %2
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %116
  %123 = load i32, i32* @led_lighting_mode, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* @led_lighting_mode, align 4
  %125 = load i32, i32* @led_lighting_mode, align 4
  %126 = load i32, i32* @LED_MODE_MAX_INDEX, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32, i32* @LED_MODE_NORMAL, align 4
  store i32 %129, i32* @led_lighting_mode, align 4
  br label %130

130:                                              ; preds = %128, %122
  br label %131

131:                                              ; preds = %130, %116
  store i32 0, i32* %3, align 4
  br label %285

132:                                              ; preds = %2
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %132
  %139 = load i32, i32* @led_enabled, align 4
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  store i32 %142, i32* @led_enabled, align 4
  %143 = load i32, i32* @led_enabled, align 4
  %144 = call i32 @I2C3733_Control_Set(i32 %143)
  br label %145

145:                                              ; preds = %138, %132
  store i32 0, i32* %3, align 4
  br label %285

146:                                              ; preds = %2
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  store i32 1, i32* @led_enabled, align 4
  %153 = load i32, i32* @led_enabled, align 4
  %154 = call i32 @I2C3733_Control_Set(i32 %153)
  br label %155

155:                                              ; preds = %152, %146
  store i32 0, i32* %3, align 4
  br label %285

156:                                              ; preds = %2
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %156
  store i32 0, i32* @led_enabled, align 4
  %163 = load i32, i32* @led_enabled, align 4
  %164 = call i32 @I2C3733_Control_Set(i32 %163)
  br label %165

165:                                              ; preds = %162, %156
  store i32 0, i32* %3, align 4
  br label %285

166:                                              ; preds = %2
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %166
  %173 = load i32, i32* @led_animation_breathing, align 4
  %174 = icmp ne i32 %173, 0
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  store i32 %176, i32* @led_animation_breathing, align 4
  %177 = load i32, i32* @led_animation_breathing, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %172
  %180 = load i64, i64* @gcr_desired, align 8
  store i64 %180, i64* @gcr_breathe, align 8
  %181 = load i32, i32* @BREATHE_MIN_STEP, align 4
  store i32 %181, i32* @led_animation_breathe_cur, align 4
  store i32 1, i32* @breathe_dir, align 4
  br label %182

182:                                              ; preds = %179, %172
  br label %183

183:                                              ; preds = %182, %166
  store i32 0, i32* %3, align 4
  br label %285

184:                                              ; preds = %2
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %184
  %191 = load i32, i32* @led_animation_direction, align 4
  %192 = icmp ne i32 %191, 0
  %193 = xor i1 %192, true
  %194 = zext i1 %193 to i32
  store i32 %194, i32* @led_animation_direction, align 4
  br label %195

195:                                              ; preds = %190, %184
  store i32 0, i32* %3, align 4
  br label %285

196:                                              ; preds = %2
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %211

202:                                              ; preds = %196
  %203 = load i32, i32* @MODS_SHIFT, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %202
  %206 = load i32, i32* @MODS_CTRL, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = load i32, i32* @usb_extra_manual, align 4
  %210 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %209, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %211

211:                                              ; preds = %208, %205, %202, %196
  store i32 0, i32* %3, align 4
  br label %285

212:                                              ; preds = %2
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %212
  %219 = load i32, i32* @MODS_SHIFT, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %218
  %222 = load i32, i32* @MODS_CTRL, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load i32, i32* @usb_gcr_auto, align 4
  %226 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %225, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %227

227:                                              ; preds = %224, %221, %218, %212
  store i32 0, i32* %3, align 4
  br label %285

228:                                              ; preds = %2
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %228
  %235 = load i32, i32* @debug_enable, align 4
  %236 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %235, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %237

237:                                              ; preds = %234, %228
  store i32 0, i32* %3, align 4
  br label %285

238:                                              ; preds = %2
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %238
  %245 = load i32, i32* @debug_matrix, align 4
  %246 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %245, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %247

247:                                              ; preds = %244, %238
  store i32 0, i32* %3, align 4
  br label %285

248:                                              ; preds = %2
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %248
  %255 = load i32, i32* @debug_keyboard, align 4
  %256 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %255, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %257

257:                                              ; preds = %254, %248
  store i32 0, i32* %3, align 4
  br label %285

258:                                              ; preds = %2
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %258
  %265 = load i32, i32* @debug_mouse, align 4
  %266 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %265, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %267

267:                                              ; preds = %264, %258
  store i32 0, i32* %3, align 4
  br label %285

268:                                              ; preds = %2
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %268
  %275 = call i32 (...) @timer_read32()
  store i32 %275, i32* @process_record_user.key_timer, align 4
  br label %283

276:                                              ; preds = %268
  %277 = load i32, i32* @process_record_user.key_timer, align 4
  %278 = call i32 @timer_elapsed32(i32 %277)
  %279 = icmp sge i32 %278, 500
  br i1 %279, label %280, label %282

280:                                              ; preds = %276
  %281 = call i32 (...) @reset_keyboard()
  br label %282

282:                                              ; preds = %280, %276
  br label %283

283:                                              ; preds = %282, %274
  store i32 0, i32* %3, align 4
  br label %285

284:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %285

285:                                              ; preds = %284, %283, %267, %257, %247, %237, %227, %211, %195, %183, %165, %155, %145, %131, %115, %100, %89, %72, %55, %33
  %286 = load i32, i32* %3, align 4
  ret i32 %286
}

declare dso_local i32 @rgb_matrix_record_key_press(%struct.TYPE_6__*) #1

declare dso_local i32 @I2C3733_Control_Set(i32) #1

declare dso_local i32 @TOGGLE_FLAG_AND_PRINT(i32, i8*) #1

declare dso_local i32 @timer_read32(...) #1

declare dso_local i32 @timer_elapsed32(i32) #1

declare dso_local i32 @reset_keyboard(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
