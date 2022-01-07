; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_bootmagic.c_bootmagic.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_bootmagic.c_bootmagic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"bootmagic scan: ... \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@BOOTMAGIC_KEY_SKIP = common dso_local global i32 0, align 4
@BOOTMAGIC_KEY_EEPROM_CLEAR = common dso_local global i32 0, align 4
@BOOTMAGIC_KEY_BOOTLOADER = common dso_local global i32 0, align 4
@debug_config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@BOOTMAGIC_KEY_DEBUG_ENABLE = common dso_local global i32 0, align 4
@BOOTMAGIC_KEY_DEBUG_MATRIX = common dso_local global i32 0, align 4
@BOOTMAGIC_KEY_DEBUG_KEYBOARD = common dso_local global i32 0, align 4
@BOOTMAGIC_KEY_DEBUG_MOUSE = common dso_local global i32 0, align 4
@keymap_config = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@BOOTMAGIC_KEY_SWAP_CONTROL_CAPSLOCK = common dso_local global i32 0, align 4
@BOOTMAGIC_KEY_CAPSLOCK_TO_CONTROL = common dso_local global i32 0, align 4
@BOOTMAGIC_KEY_SWAP_LALT_LGUI = common dso_local global i32 0, align 4
@BOOTMAGIC_KEY_SWAP_RALT_RGUI = common dso_local global i32 0, align 4
@BOOTMAGIC_KEY_NO_GUI = common dso_local global i32 0, align 4
@BOOTMAGIC_KEY_SWAP_GRAVE_ESC = common dso_local global i32 0, align 4
@BOOTMAGIC_KEY_SWAP_BACKSLASH_BACKSPACE = common dso_local global i32 0, align 4
@BOOTMAGIC_HOST_NKRO = common dso_local global i32 0, align 4
@BOOTMAGIC_KEY_DEFAULT_LAYER_0 = common dso_local global i32 0, align 4
@BOOTMAGIC_KEY_DEFAULT_LAYER_1 = common dso_local global i32 0, align 4
@BOOTMAGIC_KEY_DEFAULT_LAYER_2 = common dso_local global i32 0, align 4
@BOOTMAGIC_KEY_DEFAULT_LAYER_3 = common dso_local global i32 0, align 4
@BOOTMAGIC_KEY_DEFAULT_LAYER_4 = common dso_local global i32 0, align 4
@BOOTMAGIC_KEY_DEFAULT_LAYER_5 = common dso_local global i32 0, align 4
@BOOTMAGIC_KEY_DEFAULT_LAYER_6 = common dso_local global i32 0, align 4
@BOOTMAGIC_KEY_DEFAULT_LAYER_7 = common dso_local global i32 0, align 4
@BOOTMAGIC_KEY_EE_HANDS_LEFT = common dso_local global i32 0, align 4
@BOOTMAGIC_KEY_EE_HANDS_RIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bootmagic() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @eeconfig_is_enabled()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = call i32 (...) @eeconfig_init()
  br label %7

7:                                                ; preds = %5, %0
  %8 = call i32 @print(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 100, i32* %1, align 4
  br label %9

9:                                                ; preds = %13, %7
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %1, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = call i32 (...) @matrix_scan()
  %15 = call i32 @wait_ms(i32 10)
  br label %9

16:                                               ; preds = %9
  %17 = call i32 @print(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @BOOTMAGIC_KEY_SKIP, align 4
  %19 = call i64 @bootmagic_scan_keycode(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %231

22:                                               ; preds = %16
  %23 = load i32, i32* @BOOTMAGIC_KEY_EEPROM_CLEAR, align 4
  %24 = call i64 @bootmagic_scan_keycode(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (...) @eeconfig_init()
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i32, i32* @BOOTMAGIC_KEY_BOOTLOADER, align 4
  %30 = call i64 @bootmagic_scan_keycode(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 (...) @bootloader_jump()
  br label %34

34:                                               ; preds = %32, %28
  %35 = call i32 (...) @eeconfig_read_debug()
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @debug_config, i32 0, i32 4), align 4
  %36 = load i32, i32* @BOOTMAGIC_KEY_DEBUG_ENABLE, align 4
  %37 = call i64 @bootmagic_scan_keycode(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %74

39:                                               ; preds = %34
  %40 = load i32, i32* @BOOTMAGIC_KEY_DEBUG_MATRIX, align 4
  %41 = call i64 @bootmagic_scan_keycode(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @debug_config, i32 0, i32 0), align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @debug_config, i32 0, i32 0), align 4
  br label %73

48:                                               ; preds = %39
  %49 = load i32, i32* @BOOTMAGIC_KEY_DEBUG_KEYBOARD, align 4
  %50 = call i64 @bootmagic_scan_keycode(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @debug_config, i32 0, i32 1), align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @debug_config, i32 0, i32 1), align 4
  br label %72

57:                                               ; preds = %48
  %58 = load i32, i32* @BOOTMAGIC_KEY_DEBUG_MOUSE, align 4
  %59 = call i64 @bootmagic_scan_keycode(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @debug_config, i32 0, i32 2), align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @debug_config, i32 0, i32 2), align 4
  br label %71

66:                                               ; preds = %57
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @debug_config, i32 0, i32 3), align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @debug_config, i32 0, i32 3), align 4
  br label %71

71:                                               ; preds = %66, %61
  br label %72

72:                                               ; preds = %71, %52
  br label %73

73:                                               ; preds = %72, %43
  br label %74

74:                                               ; preds = %73, %34
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @debug_config, i32 0, i32 4), align 4
  %76 = call i32 @eeconfig_update_debug(i32 %75)
  %77 = call i32 (...) @eeconfig_read_keymap()
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @keymap_config, i32 0, i32 8), align 4
  %78 = load i32, i32* @BOOTMAGIC_KEY_SWAP_CONTROL_CAPSLOCK, align 4
  %79 = call i64 @bootmagic_scan_keycode(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @keymap_config, i32 0, i32 0), align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @keymap_config, i32 0, i32 0), align 4
  br label %86

86:                                               ; preds = %81, %74
  %87 = load i32, i32* @BOOTMAGIC_KEY_CAPSLOCK_TO_CONTROL, align 4
  %88 = call i64 @bootmagic_scan_keycode(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @keymap_config, i32 0, i32 1), align 4
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  store i32 %94, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @keymap_config, i32 0, i32 1), align 4
  br label %95

95:                                               ; preds = %90, %86
  %96 = load i32, i32* @BOOTMAGIC_KEY_SWAP_LALT_LGUI, align 4
  %97 = call i64 @bootmagic_scan_keycode(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @keymap_config, i32 0, i32 2), align 4
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  store i32 %103, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @keymap_config, i32 0, i32 2), align 4
  br label %104

104:                                              ; preds = %99, %95
  %105 = load i32, i32* @BOOTMAGIC_KEY_SWAP_RALT_RGUI, align 4
  %106 = call i64 @bootmagic_scan_keycode(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @keymap_config, i32 0, i32 3), align 4
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  store i32 %112, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @keymap_config, i32 0, i32 3), align 4
  br label %113

113:                                              ; preds = %108, %104
  %114 = load i32, i32* @BOOTMAGIC_KEY_NO_GUI, align 4
  %115 = call i64 @bootmagic_scan_keycode(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @keymap_config, i32 0, i32 4), align 4
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  store i32 %121, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @keymap_config, i32 0, i32 4), align 4
  br label %122

122:                                              ; preds = %117, %113
  %123 = load i32, i32* @BOOTMAGIC_KEY_SWAP_GRAVE_ESC, align 4
  %124 = call i64 @bootmagic_scan_keycode(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @keymap_config, i32 0, i32 5), align 4
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  store i32 %130, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @keymap_config, i32 0, i32 5), align 4
  br label %131

131:                                              ; preds = %126, %122
  %132 = load i32, i32* @BOOTMAGIC_KEY_SWAP_BACKSLASH_BACKSPACE, align 4
  %133 = call i64 @bootmagic_scan_keycode(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @keymap_config, i32 0, i32 6), align 4
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  store i32 %139, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @keymap_config, i32 0, i32 6), align 4
  br label %140

140:                                              ; preds = %135, %131
  %141 = load i32, i32* @BOOTMAGIC_HOST_NKRO, align 4
  %142 = call i64 @bootmagic_scan_keycode(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @keymap_config, i32 0, i32 7), align 4
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  store i32 %148, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @keymap_config, i32 0, i32 7), align 4
  br label %149

149:                                              ; preds = %144, %140
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @keymap_config, i32 0, i32 8), align 4
  %151 = call i32 @eeconfig_update_keymap(i32 %150)
  store i32 0, i32* %2, align 4
  %152 = load i32, i32* @BOOTMAGIC_KEY_DEFAULT_LAYER_0, align 4
  %153 = call i64 @bootmagic_scan_keycode(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load i32, i32* %2, align 4
  %157 = or i32 %156, 1
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %155, %149
  %159 = load i32, i32* @BOOTMAGIC_KEY_DEFAULT_LAYER_1, align 4
  %160 = call i64 @bootmagic_scan_keycode(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = load i32, i32* %2, align 4
  %164 = or i32 %163, 2
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %162, %158
  %166 = load i32, i32* @BOOTMAGIC_KEY_DEFAULT_LAYER_2, align 4
  %167 = call i64 @bootmagic_scan_keycode(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load i32, i32* %2, align 4
  %171 = or i32 %170, 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %169, %165
  %173 = load i32, i32* @BOOTMAGIC_KEY_DEFAULT_LAYER_3, align 4
  %174 = call i64 @bootmagic_scan_keycode(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load i32, i32* %2, align 4
  %178 = or i32 %177, 8
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %176, %172
  %180 = load i32, i32* @BOOTMAGIC_KEY_DEFAULT_LAYER_4, align 4
  %181 = call i64 @bootmagic_scan_keycode(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = load i32, i32* %2, align 4
  %185 = or i32 %184, 16
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %183, %179
  %187 = load i32, i32* @BOOTMAGIC_KEY_DEFAULT_LAYER_5, align 4
  %188 = call i64 @bootmagic_scan_keycode(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %186
  %191 = load i32, i32* %2, align 4
  %192 = or i32 %191, 32
  store i32 %192, i32* %2, align 4
  br label %193

193:                                              ; preds = %190, %186
  %194 = load i32, i32* @BOOTMAGIC_KEY_DEFAULT_LAYER_6, align 4
  %195 = call i64 @bootmagic_scan_keycode(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load i32, i32* %2, align 4
  %199 = or i32 %198, 64
  store i32 %199, i32* %2, align 4
  br label %200

200:                                              ; preds = %197, %193
  %201 = load i32, i32* @BOOTMAGIC_KEY_DEFAULT_LAYER_7, align 4
  %202 = call i64 @bootmagic_scan_keycode(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %200
  %205 = load i32, i32* %2, align 4
  %206 = or i32 %205, 128
  store i32 %206, i32* %2, align 4
  br label %207

207:                                              ; preds = %204, %200
  %208 = load i32, i32* %2, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %207
  %211 = load i32, i32* %2, align 4
  %212 = call i32 @eeconfig_update_default_layer(i32 %211)
  %213 = load i32, i32* %2, align 4
  %214 = call i32 @default_layer_set(i32 %213)
  br label %219

215:                                              ; preds = %207
  %216 = call i32 (...) @eeconfig_read_default_layer()
  store i32 %216, i32* %2, align 4
  %217 = load i32, i32* %2, align 4
  %218 = call i32 @default_layer_set(i32 %217)
  br label %219

219:                                              ; preds = %215, %210
  %220 = load i32, i32* @BOOTMAGIC_KEY_EE_HANDS_LEFT, align 4
  %221 = call i64 @bootmagic_scan_keycode(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %219
  %224 = call i32 @eeconfig_update_handedness(i32 1)
  br label %225

225:                                              ; preds = %223, %219
  %226 = load i32, i32* @BOOTMAGIC_KEY_EE_HANDS_RIGHT, align 4
  %227 = call i64 @bootmagic_scan_keycode(i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %225
  %230 = call i32 @eeconfig_update_handedness(i32 0)
  br label %231

231:                                              ; preds = %21, %229, %225
  ret void
}

declare dso_local i32 @eeconfig_is_enabled(...) #1

declare dso_local i32 @eeconfig_init(...) #1

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @matrix_scan(...) #1

declare dso_local i32 @wait_ms(i32) #1

declare dso_local i64 @bootmagic_scan_keycode(i32) #1

declare dso_local i32 @bootloader_jump(...) #1

declare dso_local i32 @eeconfig_read_debug(...) #1

declare dso_local i32 @eeconfig_update_debug(i32) #1

declare dso_local i32 @eeconfig_read_keymap(...) #1

declare dso_local i32 @eeconfig_update_keymap(i32) #1

declare dso_local i32 @eeconfig_update_default_layer(i32) #1

declare dso_local i32 @default_layer_set(i32) #1

declare dso_local i32 @eeconfig_read_default_layer(...) #1

declare dso_local i32 @eeconfig_update_handedness(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
