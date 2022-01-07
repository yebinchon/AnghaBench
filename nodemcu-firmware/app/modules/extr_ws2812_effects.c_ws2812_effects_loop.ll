; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2812_effects.c_ws2812_effects_loop.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2812_effects.c_ws2812_effects_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@state = common dso_local global %struct.TYPE_2__* null, align 8
@WS2812_EFFECT_BLINK = common dso_local global i64 0, align 8
@WS2812_EFFECT_RAINBOW = common dso_local global i64 0, align 8
@WS2812_EFFECT_RAINBOW_CYCLE = common dso_local global i64 0, align 8
@SHIFT_CIRCULAR = common dso_local global i32 0, align 4
@WS2812_EFFECT_FLICKER = common dso_local global i64 0, align 8
@EFFECT_PARAM_INVALID = common dso_local global i32 0, align 4
@WS2812_EFFECT_FIRE_FLICKER = common dso_local global i64 0, align 8
@WS2812_EFFECT_FIRE_FLICKER_SOFT = common dso_local global i64 0, align 8
@WS2812_EFFECT_FIRE_FLICKER_INTENSE = common dso_local global i64 0, align 8
@WS2812_EFFECT_RANDOM_COLOR = common dso_local global i64 0, align 8
@WS2812_EFFECT_HALLOWEEN = common dso_local global i64 0, align 8
@WS2812_EFFECT_CIRCUS_COMBUSTUS = common dso_local global i64 0, align 8
@WS2812_EFFECT_LARSON_SCANNER = common dso_local global i64 0, align 8
@WS2812_EFFECT_CYCLE = common dso_local global i64 0, align 8
@WS2812_EFFECT_COLOR_WIPE = common dso_local global i64 0, align 8
@WS2812_EFFECT_RANDOM_DOT = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ws2812_effects_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ws2812_effects_loop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @WS2812_EFFECT_BLINK, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (...) @ws2812_effects_mode_blink()
  br label %206

12:                                               ; preds = %1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WS2812_EFFECT_RAINBOW, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 (...) @ws2812_effects_mode_rainbow()
  br label %205

20:                                               ; preds = %12
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @WS2812_EFFECT_RAINBOW_CYCLE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SHIFT_CIRCULAR, align 4
  %31 = call i32 @ws2812_buffer_shift(i32 %29, i32 1, i32 %30, i32 1, i32 -1)
  br label %204

32:                                               ; preds = %20
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @WS2812_EFFECT_FLICKER, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %64

38:                                               ; preds = %32
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @EFFECT_PARAM_INVALID, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  br label %49

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi i32 [ %47, %44 ], [ 100, %48 ]
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 50, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %49
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @ws2812_effects_mode_flicker_int(i32 %55)
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  %61 = srem i32 %60, 256
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  br label %203

64:                                               ; preds = %32
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @WS2812_EFFECT_FIRE_FLICKER, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = call i32 @ws2812_effects_mode_flicker_int(i32 110)
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  %76 = srem i32 %75, 256
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  br label %202

79:                                               ; preds = %64
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @WS2812_EFFECT_FIRE_FLICKER_SOFT, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = call i32 @ws2812_effects_mode_flicker_int(i32 70)
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  %91 = srem i32 %90, 256
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  br label %201

94:                                               ; preds = %79
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @WS2812_EFFECT_FIRE_FLICKER_INTENSE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %94
  %101 = call i32 @ws2812_effects_mode_flicker_int(i32 170)
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  %106 = srem i32 %105, 256
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  br label %200

109:                                              ; preds = %94
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @WS2812_EFFECT_RANDOM_COLOR, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = call i32 (...) @ws2812_effects_mode_random_color()
  br label %199

117:                                              ; preds = %109
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @WS2812_EFFECT_HALLOWEEN, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @SHIFT_CIRCULAR, align 4
  %128 = call i32 @ws2812_buffer_shift(i32 %126, i32 1, i32 %127, i32 1, i32 -1)
  br label %198

129:                                              ; preds = %117
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @WS2812_EFFECT_CIRCUS_COMBUSTUS, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %129
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @SHIFT_CIRCULAR, align 4
  %140 = call i32 @ws2812_buffer_shift(i32 %138, i32 1, i32 %139, i32 1, i32 -1)
  br label %197

141:                                              ; preds = %129
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @WS2812_EFFECT_LARSON_SCANNER, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = call i32 (...) @ws2812_effects_mode_larson_scanner()
  br label %196

149:                                              ; preds = %141
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @WS2812_EFFECT_CYCLE, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %149
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 7
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @SHIFT_CIRCULAR, align 4
  %163 = call i32 @ws2812_buffer_shift(i32 %158, i32 %161, i32 %162, i32 1, i32 -1)
  br label %195

164:                                              ; preds = %149
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @WS2812_EFFECT_COLOR_WIPE, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %164
  %171 = call i32 (...) @ws2812_effects_mode_color_wipe()
  br label %194

172:                                              ; preds = %164
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @WS2812_EFFECT_RANDOM_DOT, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %193

178:                                              ; preds = %172
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @EFFECT_PARAM_INVALID, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %178
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  br label %189

188:                                              ; preds = %178
  br label %189

189:                                              ; preds = %188, %184
  %190 = phi i32 [ %187, %184 ], [ 1, %188 ]
  store i32 %190, i32* %4, align 4
  %191 = load i32, i32* %4, align 4
  %192 = call i32 @ws2812_effects_mode_random_dot(i32 %191)
  br label %193

193:                                              ; preds = %189, %172
  br label %194

194:                                              ; preds = %193, %170
  br label %195

195:                                              ; preds = %194, %155
  br label %196

196:                                              ; preds = %195, %147
  br label %197

197:                                              ; preds = %196, %135
  br label %198

198:                                              ; preds = %197, %123
  br label %199

199:                                              ; preds = %198, %115
  br label %200

200:                                              ; preds = %199, %100
  br label %201

201:                                              ; preds = %200, %85
  br label %202

202:                                              ; preds = %201, %70
  br label %203

203:                                              ; preds = %202, %54
  br label %204

204:                                              ; preds = %203, %26
  br label %205

205:                                              ; preds = %204, %18
  br label %206

206:                                              ; preds = %205, %10
  %207 = call i32 (...) @ws2812_effects_mode_delay()
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 3
  store i32 %207, i32* %209, align 8
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, 1
  %214 = load i32, i32* @UINT32_MAX, align 4
  %215 = srem i32 %213, %214
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 4
  store i32 %215, i32* %217, align 4
  %218 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 7
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @ws2812_write(i32 %220)
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 8
  %225 = icmp eq i32 %224, 1
  br i1 %225, label %226, label %242

226:                                              ; preds = %206
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = icmp sge i32 %229, 10
  br i1 %230, label %231, label %242

231:                                              ; preds = %226
  %232 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 6
  %234 = call i32 @os_timer_disarm(i32* %233)
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 6
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @FALSE, align 4
  %241 = call i32 @os_timer_arm(i32* %236, i32 %239, i32 %240)
  br label %242

242:                                              ; preds = %231, %226, %206
  ret void
}

declare dso_local i32 @ws2812_effects_mode_blink(...) #1

declare dso_local i32 @ws2812_effects_mode_rainbow(...) #1

declare dso_local i32 @ws2812_buffer_shift(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ws2812_effects_mode_flicker_int(i32) #1

declare dso_local i32 @ws2812_effects_mode_random_color(...) #1

declare dso_local i32 @ws2812_effects_mode_larson_scanner(...) #1

declare dso_local i32 @ws2812_effects_mode_color_wipe(...) #1

declare dso_local i32 @ws2812_effects_mode_random_dot(i32) #1

declare dso_local i32 @ws2812_effects_mode_delay(...) #1

declare dso_local i32 @ws2812_write(i32) #1

declare dso_local i32 @os_timer_disarm(i32*) #1

declare dso_local i32 @os_timer_arm(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
