; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/ctrl/keymaps/mac_md/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/ctrl/keymaps/mac_md/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

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
@usb_gcr_auto = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"USB GCR auto mode\00", align 1
@debug_enable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Debug mode\00", align 1
@debug_matrix = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Debug matrix\00", align 1
@debug_keyboard = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Debug keyboard\00", align 1
@debug_mouse = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"Debug mouse\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %266 [
    i32 140, label %7
    i32 141, label %32
    i32 135, label %54
    i32 134, label %71
    i32 136, label %88
    i32 137, label %99
    i32 132, label %114
    i32 131, label %130
    i32 138, label %144
    i32 139, label %154
    i32 133, label %164
    i32 130, label %182
    i32 128, label %194
    i32 142, label %210
    i32 143, label %220
    i32 145, label %230
    i32 144, label %240
    i32 129, label %250
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %7
  %14 = load i64, i64* @LED_GCR_STEP, align 8
  %15 = load i64, i64* @LED_GCR_MAX, align 8
  %16 = load i64, i64* @gcr_desired, align 8
  %17 = sub nsw i64 %15, %16
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i64, i64* @LED_GCR_MAX, align 8
  store i64 %20, i64* @gcr_desired, align 8
  br label %25

21:                                               ; preds = %13
  %22 = load i64, i64* @LED_GCR_STEP, align 8
  %23 = load i64, i64* @gcr_desired, align 8
  %24 = add nsw i64 %23, %22
  store i64 %24, i64* @gcr_desired, align 8
  br label %25

25:                                               ; preds = %21, %19
  %26 = load i32, i32* @led_animation_breathing, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i64, i64* @gcr_desired, align 8
  store i64 %29, i64* @gcr_breathe, align 8
  br label %30

30:                                               ; preds = %28, %25
  br label %31

31:                                               ; preds = %30, %7
  store i32 0, i32* %3, align 4
  br label %267

32:                                               ; preds = %2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load i64, i64* @LED_GCR_STEP, align 8
  %40 = load i64, i64* @gcr_desired, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i64 0, i64* @gcr_desired, align 8
  br label %47

43:                                               ; preds = %38
  %44 = load i64, i64* @LED_GCR_STEP, align 8
  %45 = load i64, i64* @gcr_desired, align 8
  %46 = sub nsw i64 %45, %44
  store i64 %46, i64* @gcr_desired, align 8
  br label %47

47:                                               ; preds = %43, %42
  %48 = load i32, i32* @led_animation_breathing, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i64, i64* @gcr_desired, align 8
  store i64 %51, i64* @gcr_breathe, align 8
  br label %52

52:                                               ; preds = %50, %47
  br label %53

53:                                               ; preds = %52, %32
  store i32 0, i32* %3, align 4
  br label %267

54:                                               ; preds = %2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load i32, i32* @led_animation_id, align 4
  %62 = load i32, i32* @led_setups_count, align 4
  %63 = sub nsw i32 %62, 1
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 0, i32* @led_animation_id, align 4
  br label %69

66:                                               ; preds = %60
  %67 = load i32, i32* @led_animation_id, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @led_animation_id, align 4
  br label %69

69:                                               ; preds = %66, %65
  br label %70

70:                                               ; preds = %69, %54
  store i32 0, i32* %3, align 4
  br label %267

71:                                               ; preds = %2
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load i32, i32* @led_animation_id, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* @led_setups_count, align 4
  %82 = sub nsw i32 %81, 1
  store i32 %82, i32* @led_animation_id, align 4
  br label %86

83:                                               ; preds = %77
  %84 = load i32, i32* @led_animation_id, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* @led_animation_id, align 4
  br label %86

86:                                               ; preds = %83, %80
  br label %87

87:                                               ; preds = %86, %71
  store i32 0, i32* %3, align 4
  br label %267

88:                                               ; preds = %2
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, i32* @ANIMATION_SPEED_STEP, align 4
  %96 = load i32, i32* @led_animation_speed, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* @led_animation_speed, align 4
  br label %98

98:                                               ; preds = %94, %88
  store i32 0, i32* %3, align 4
  br label %267

99:                                               ; preds = %2
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %99
  %106 = load i32, i32* @ANIMATION_SPEED_STEP, align 4
  %107 = load i32, i32* @led_animation_speed, align 4
  %108 = sub nsw i32 %107, %106
  store i32 %108, i32* @led_animation_speed, align 4
  %109 = load i32, i32* @led_animation_speed, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  store i32 0, i32* @led_animation_speed, align 4
  br label %112

112:                                              ; preds = %111, %105
  br label %113

113:                                              ; preds = %112, %99
  store i32 0, i32* %3, align 4
  br label %267

114:                                              ; preds = %2
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %114
  %121 = load i32, i32* @led_lighting_mode, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* @led_lighting_mode, align 4
  %123 = load i32, i32* @led_lighting_mode, align 4
  %124 = load i32, i32* @LED_MODE_MAX_INDEX, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* @LED_MODE_NORMAL, align 4
  store i32 %127, i32* @led_lighting_mode, align 4
  br label %128

128:                                              ; preds = %126, %120
  br label %129

129:                                              ; preds = %128, %114
  store i32 0, i32* %3, align 4
  br label %267

130:                                              ; preds = %2
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %130
  %137 = load i32, i32* @led_enabled, align 4
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  store i32 %140, i32* @led_enabled, align 4
  %141 = load i32, i32* @led_enabled, align 4
  %142 = call i32 @I2C3733_Control_Set(i32 %141)
  br label %143

143:                                              ; preds = %136, %130
  store i32 0, i32* %3, align 4
  br label %267

144:                                              ; preds = %2
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  store i32 1, i32* @led_enabled, align 4
  %151 = load i32, i32* @led_enabled, align 4
  %152 = call i32 @I2C3733_Control_Set(i32 %151)
  br label %153

153:                                              ; preds = %150, %144
  store i32 0, i32* %3, align 4
  br label %267

154:                                              ; preds = %2
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  store i32 0, i32* @led_enabled, align 4
  %161 = load i32, i32* @led_enabled, align 4
  %162 = call i32 @I2C3733_Control_Set(i32 %161)
  br label %163

163:                                              ; preds = %160, %154
  store i32 0, i32* %3, align 4
  br label %267

164:                                              ; preds = %2
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %164
  %171 = load i32, i32* @led_animation_breathing, align 4
  %172 = icmp ne i32 %171, 0
  %173 = xor i1 %172, true
  %174 = zext i1 %173 to i32
  store i32 %174, i32* @led_animation_breathing, align 4
  %175 = load i32, i32* @led_animation_breathing, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %170
  %178 = load i64, i64* @gcr_desired, align 8
  store i64 %178, i64* @gcr_breathe, align 8
  %179 = load i32, i32* @BREATHE_MIN_STEP, align 4
  store i32 %179, i32* @led_animation_breathe_cur, align 4
  store i32 1, i32* @breathe_dir, align 4
  br label %180

180:                                              ; preds = %177, %170
  br label %181

181:                                              ; preds = %180, %164
  store i32 0, i32* %3, align 4
  br label %267

182:                                              ; preds = %2
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %182
  %189 = load i32, i32* @led_animation_direction, align 4
  %190 = icmp ne i32 %189, 0
  %191 = xor i1 %190, true
  %192 = zext i1 %191 to i32
  store i32 %192, i32* @led_animation_direction, align 4
  br label %193

193:                                              ; preds = %188, %182
  store i32 0, i32* %3, align 4
  br label %267

194:                                              ; preds = %2
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %194
  %201 = load i32, i32* @MODS_SHIFT, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %200
  %204 = load i32, i32* @MODS_CTRL, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load i32, i32* @usb_gcr_auto, align 4
  %208 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %207, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %209

209:                                              ; preds = %206, %203, %200, %194
  store i32 0, i32* %3, align 4
  br label %267

210:                                              ; preds = %2
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %210
  %217 = load i32, i32* @debug_enable, align 4
  %218 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %217, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %219

219:                                              ; preds = %216, %210
  store i32 0, i32* %3, align 4
  br label %267

220:                                              ; preds = %2
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %220
  %227 = load i32, i32* @debug_matrix, align 4
  %228 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %227, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %229

229:                                              ; preds = %226, %220
  store i32 0, i32* %3, align 4
  br label %267

230:                                              ; preds = %2
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %230
  %237 = load i32, i32* @debug_keyboard, align 4
  %238 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %237, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %239

239:                                              ; preds = %236, %230
  store i32 0, i32* %3, align 4
  br label %267

240:                                              ; preds = %2
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %240
  %247 = load i32, i32* @debug_mouse, align 4
  %248 = call i32 @TOGGLE_FLAG_AND_PRINT(i32 %247, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %249

249:                                              ; preds = %246, %240
  store i32 0, i32* %3, align 4
  br label %267

250:                                              ; preds = %2
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %250
  %257 = call i32 (...) @timer_read32()
  store i32 %257, i32* @process_record_user.key_timer, align 4
  br label %265

258:                                              ; preds = %250
  %259 = load i32, i32* @process_record_user.key_timer, align 4
  %260 = call i32 @timer_elapsed32(i32 %259)
  %261 = icmp sge i32 %260, 500
  br i1 %261, label %262, label %264

262:                                              ; preds = %258
  %263 = call i32 (...) @reset_keyboard()
  br label %264

264:                                              ; preds = %262, %258
  br label %265

265:                                              ; preds = %264, %256
  store i32 0, i32* %3, align 4
  br label %267

266:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %267

267:                                              ; preds = %266, %265, %249, %239, %229, %219, %209, %193, %181, %163, %153, %143, %129, %113, %98, %87, %70, %53, %31
  %268 = load i32, i32* %3, align 4
  ret i32 %268
}

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
