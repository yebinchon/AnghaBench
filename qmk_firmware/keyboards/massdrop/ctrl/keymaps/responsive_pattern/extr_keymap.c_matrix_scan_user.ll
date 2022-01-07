; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/ctrl/keymaps/responsive_pattern/extr_keymap.c_matrix_scan_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/ctrl/keymaps/responsive_pattern/extr_keymap.c_matrix_scan_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }

@matrix_scan_user.scan_timer = internal global i32 0, align 4
@matrix_scan_user.last_layer = internal global i32 0, align 4
@layer_state = common dso_local global i32 0, align 4
@KEY_LED_COUNT = common dso_local global i32 0, align 4
@USER_LED = common dso_local global %struct.TYPE_3__* null, align 8
@DISTANCE_FROM_LAST_KEYSTROKE = common dso_local global i32* null, align 8
@USER_CONFIG = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@COLOR_PATTERN_RGB_COUNT = common dso_local global i32 0, align 4
@COLOR_PATTERNS = common dso_local global i32*** null, align 8
@matrix_scan_user.QWEASDP = internal global [7 x i32] [i32 133, i32 130, i32 141, i32 143, i32 132, i32 142, i32 134], align 16
@matrix_scan_user.YUIOHJKL = internal global [8 x i32] [i32 129, i32 131, i32 139, i32 135, i32 140, i32 138, i32 137, i32 136], align 16
@KC_TAB = common dso_local global i32 0, align 4
@KC_CAPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_user() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %13 = load i32, i32* @layer_state, align 4
  %14 = icmp sge i32 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  store i32 2, i32* %1, align 4
  br label %21

16:                                               ; preds = %0
  %17 = load i32, i32* @layer_state, align 4
  %18 = icmp sge i32 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 1, i32* %1, align 4
  br label %20

20:                                               ; preds = %19, %16
  br label %21

21:                                               ; preds = %20, %15
  %22 = call i32 (...) @calculate_keystroke_distance()
  store i32 1, i32* %6, align 4
  br label %23

23:                                               ; preds = %111, %21
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @KEY_LED_COUNT, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %114

27:                                               ; preds = %23
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @USER_LED, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 2
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %111

37:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  %38 = load i32*, i32** @DISTANCE_FROM_LAST_KEYSTROKE, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @USER_CONFIG, i32 0, i32 0), align 8
  switch i32 %43, label %70 [
    i32 0, label %44
    i32 1, label %45
    i32 2, label %50
    i32 3, label %55
    i32 4, label %60
    i32 5, label %65
    i32 6, label %65
  ]

44:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %70

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 0, i32 1
  store i32 %49, i32* %4, align 4
  br label %70

50:                                               ; preds = %37
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  store i32 %54, i32* %4, align 4
  br label %70

55:                                               ; preds = %37
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 2, i32 1
  store i32 %59, i32* %4, align 4
  br label %70

60:                                               ; preds = %37
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 2, i32 0
  store i32 %64, i32* %4, align 4
  br label %70

65:                                               ; preds = %37, %37
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 2, i32 0
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %37, %65, %60, %55, %50, %45, %44
  %71 = load i32, i32* %4, align 4
  switch i32 %71, label %110 [
    i32 0, label %72
    i32 1, label %75
    i32 2, label %78
  ]

72:                                               ; preds = %70
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @unset_user_led_rgb(i32 %73)
  br label %110

75:                                               ; preds = %70
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @set_user_led_rgb(i32 %76, i32 0, i32 0, i32 0)
  br label %110

78:                                               ; preds = %70
  %79 = load i32*, i32** @DISTANCE_FROM_LAST_KEYSTROKE, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @COLOR_PATTERN_RGB_COUNT, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @USER_CONFIG, i32 0, i32 1), align 4
  %87 = sdiv i32 %85, %86
  %88 = load i32, i32* @COLOR_PATTERN_RGB_COUNT, align 4
  %89 = srem i32 %87, %88
  store i32 %89, i32* %2, align 4
  %90 = load i32***, i32**** @COLOR_PATTERNS, align 8
  %91 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @USER_CONFIG, i32 0, i32 2), align 8
  %92 = getelementptr inbounds i32**, i32*** %90, i64 %91
  %93 = load i32**, i32*** %92, align 8
  %94 = load i32, i32* %2, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  store i32* %98, i32** %3, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i32*, i32** %3, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %3, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %3, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @set_user_led_rgb(i32 %99, i32 %102, i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %70, %78, %75, %72
  br label %111

111:                                              ; preds = %110, %36
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %23

114:                                              ; preds = %23
  %115 = load i32, i32* %1, align 4
  %116 = load i32, i32* @matrix_scan_user.last_layer, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %226

118:                                              ; preds = %114
  %119 = load i32, i32* @matrix_scan_user.last_layer, align 4
  switch i32 %119, label %170 [
    i32 1, label %120
    i32 2, label %135
  ]

120:                                              ; preds = %118
  store i32 0, i32* %7, align 4
  br label %121

121:                                              ; preds = %131, %120
  %122 = load i32, i32* %7, align 4
  %123 = icmp slt i32 %122, 7
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [7 x i32], [7 x i32]* @matrix_scan_user.QWEASDP, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @ktli(i32 %128)
  %130 = call i32 @unset_indicator_led_rgb(i32 %129, i32 1)
  br label %131

131:                                              ; preds = %124
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %7, align 4
  br label %121

134:                                              ; preds = %121
  br label %170

135:                                              ; preds = %118
  store i32 0, i32* %8, align 4
  br label %136

136:                                              ; preds = %146, %135
  %137 = load i32, i32* %8, align 4
  %138 = icmp slt i32 %137, 6
  br i1 %138, label %139, label %149

139:                                              ; preds = %136
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [7 x i32], [7 x i32]* @matrix_scan_user.QWEASDP, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @ktli(i32 %143)
  %145 = call i32 @unset_indicator_led_rgb(i32 %144, i32 2)
  br label %146

146:                                              ; preds = %139
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %136

149:                                              ; preds = %136
  store i32 0, i32* %9, align 4
  br label %150

150:                                              ; preds = %160, %149
  %151 = load i32, i32* %9, align 4
  %152 = icmp slt i32 %151, 8
  br i1 %152, label %153, label %163

153:                                              ; preds = %150
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [8 x i32], [8 x i32]* @matrix_scan_user.YUIOHJKL, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @ktli(i32 %157)
  %159 = call i32 @unset_indicator_led_rgb(i32 %158, i32 2)
  br label %160

160:                                              ; preds = %153
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %150

163:                                              ; preds = %150
  %164 = load i32, i32* @KC_TAB, align 4
  %165 = call i32 @ktli(i32 %164)
  %166 = call i32 @unset_indicator_led_rgb(i32 %165, i32 2)
  %167 = load i32, i32* @KC_CAPS, align 4
  %168 = call i32 @ktli(i32 %167)
  %169 = call i32 @unset_indicator_led_rgb(i32 %168, i32 2)
  br label %170

170:                                              ; preds = %118, %163, %134
  %171 = load i32, i32* %1, align 4
  switch i32 %171, label %222 [
    i32 1, label %172
    i32 2, label %187
  ]

172:                                              ; preds = %170
  store i32 0, i32* %10, align 4
  br label %173

173:                                              ; preds = %183, %172
  %174 = load i32, i32* %10, align 4
  %175 = icmp slt i32 %174, 7
  br i1 %175, label %176, label %186

176:                                              ; preds = %173
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [7 x i32], [7 x i32]* @matrix_scan_user.QWEASDP, i64 0, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @ktli(i32 %180)
  %182 = call i32 @set_indicator_led_rgb(i32 %181, i32 1, i32 255, i32 0, i32 0)
  br label %183

183:                                              ; preds = %176
  %184 = load i32, i32* %10, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %10, align 4
  br label %173

186:                                              ; preds = %173
  br label %222

187:                                              ; preds = %170
  store i32 0, i32* %11, align 4
  br label %188

188:                                              ; preds = %198, %187
  %189 = load i32, i32* %11, align 4
  %190 = icmp slt i32 %189, 6
  br i1 %190, label %191, label %201

191:                                              ; preds = %188
  %192 = load i32, i32* %11, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [7 x i32], [7 x i32]* @matrix_scan_user.QWEASDP, i64 0, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @ktli(i32 %195)
  %197 = call i32 @set_indicator_led_rgb(i32 %196, i32 2, i32 0, i32 255, i32 0)
  br label %198

198:                                              ; preds = %191
  %199 = load i32, i32* %11, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %11, align 4
  br label %188

201:                                              ; preds = %188
  store i32 0, i32* %12, align 4
  br label %202

202:                                              ; preds = %212, %201
  %203 = load i32, i32* %12, align 4
  %204 = icmp slt i32 %203, 8
  br i1 %204, label %205, label %215

205:                                              ; preds = %202
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [8 x i32], [8 x i32]* @matrix_scan_user.YUIOHJKL, i64 0, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @ktli(i32 %209)
  %211 = call i32 @set_indicator_led_rgb(i32 %210, i32 2, i32 0, i32 255, i32 0)
  br label %212

212:                                              ; preds = %205
  %213 = load i32, i32* %12, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %12, align 4
  br label %202

215:                                              ; preds = %202
  %216 = load i32, i32* @KC_TAB, align 4
  %217 = call i32 @ktli(i32 %216)
  %218 = call i32 @set_indicator_led_rgb(i32 %217, i32 2, i32 0, i32 255, i32 0)
  %219 = load i32, i32* @KC_CAPS, align 4
  %220 = call i32 @ktli(i32 %219)
  %221 = call i32 @set_indicator_led_rgb(i32 %220, i32 2, i32 0, i32 255, i32 0)
  br label %222

222:                                              ; preds = %170, %215, %186
  %223 = call i32 (...) @refresh_pattern_indicators()
  %224 = call i32 (...) @refresh_color_pattern_indicators()
  %225 = load i32, i32* %1, align 4
  store i32 %225, i32* @matrix_scan_user.last_layer, align 4
  br label %226

226:                                              ; preds = %222, %114
  %227 = load i32, i32* %1, align 4
  switch i32 %227, label %243 [
    i32 0, label %228
    i32 1, label %241
    i32 2, label %242
  ]

228:                                              ; preds = %226
  %229 = load i32, i32* @matrix_scan_user.scan_timer, align 4
  %230 = call i32 @timer_elapsed32(i32 %229)
  %231 = icmp sgt i32 %230, 2000
  br i1 %231, label %232, label %234

232:                                              ; preds = %228
  %233 = call i32 (...) @timer_read32()
  store i32 %233, i32* @matrix_scan_user.scan_timer, align 4
  br label %240

234:                                              ; preds = %228
  %235 = load i32, i32* @matrix_scan_user.scan_timer, align 4
  %236 = call i32 @timer_elapsed32(i32 %235)
  %237 = icmp sgt i32 %236, 1000
  br i1 %237, label %238, label %239

238:                                              ; preds = %234
  br label %239

239:                                              ; preds = %238, %234
  br label %240

240:                                              ; preds = %239, %232
  br label %243

241:                                              ; preds = %226
  br label %243

242:                                              ; preds = %226
  br label %243

243:                                              ; preds = %226, %242, %241, %240
  ret void
}

declare dso_local i32 @calculate_keystroke_distance(...) #1

declare dso_local i32 @unset_user_led_rgb(i32) #1

declare dso_local i32 @set_user_led_rgb(i32, i32, i32, i32) #1

declare dso_local i32 @unset_indicator_led_rgb(i32, i32) #1

declare dso_local i32 @ktli(i32) #1

declare dso_local i32 @set_indicator_led_rgb(i32, i32, i32, i32, i32) #1

declare dso_local i32 @refresh_pattern_indicators(...) #1

declare dso_local i32 @refresh_color_pattern_indicators(...) #1

declare dso_local i32 @timer_elapsed32(i32) #1

declare dso_local i32 @timer_read32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
