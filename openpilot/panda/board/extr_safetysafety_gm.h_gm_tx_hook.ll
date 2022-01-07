; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_gm.h_gm_tx_hook.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_gm.h_gm_tx_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@gm_ascm_detected = common dso_local global i64 0, align 8
@gm_gas_prev = common dso_local global i64 0, align 8
@gm_brake_prev = common dso_local global i64 0, align 8
@gm_moving = common dso_local global i64 0, align 8
@controls_allowed = common dso_local global i64 0, align 8
@long_controls_allowed = common dso_local global i32 0, align 4
@GM_MAX_BRAKE = common dso_local global i32 0, align 4
@TIM2 = common dso_local global %struct.TYPE_2__* null, align 8
@GM_MAX_STEER = common dso_local global i32 0, align 4
@gm_desired_torque_last = common dso_local global i32 0, align 4
@gm_torque_driver = common dso_local global i32 0, align 4
@GM_MAX_RATE_UP = common dso_local global i32 0, align 4
@GM_MAX_RATE_DOWN = common dso_local global i32 0, align 4
@GM_DRIVER_TORQUE_ALLOWANCE = common dso_local global i32 0, align 4
@GM_DRIVER_TORQUE_FACTOR = common dso_local global i32 0, align 4
@gm_rt_torque_last = common dso_local global i32 0, align 4
@GM_MAX_RT_DELTA = common dso_local global i32 0, align 4
@gm_ts_last = common dso_local global i64 0, align 8
@GM_RT_INTERVAL = common dso_local global i64 0, align 8
@GM_MAX_REGEN = common dso_local global i32 0, align 4
@GM_MAX_GAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @gm_tx_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gm_tx_hook(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %3, align 4
  %14 = load i64, i64* @gm_ascm_detected, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %16, %1
  %18 = load i64, i64* @gm_gas_prev, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* @gm_brake_prev, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i64, i64* @gm_moving, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i1 [ false, %20 ], [ %25, %23 ]
  br label %28

28:                                               ; preds = %26, %17
  %29 = phi i1 [ true, %17 ], [ %27, %26 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %4, align 4
  %31 = load i64, i64* @controls_allowed, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %33, %28
  %38 = phi i1 [ false, %28 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %5, align 4
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @GET_ADDR(i32* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 789
  br i1 %43, label %44, label %71

44:                                               ; preds = %37
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @GET_BYTE(i32* %45, i32 0)
  %47 = and i32 %46, 15
  %48 = shl i32 %47, 8
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @GET_BYTE(i32* %49, i32 1)
  %51 = add i32 %48, %50
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 4096, %52
  %54 = and i32 %53, 4095
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %44
  %58 = load i32, i32* @long_controls_allowed, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %57, %44
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %60
  br label %65

65:                                               ; preds = %64, %57
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @GM_MAX_BRAKE, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %65
  br label %71

71:                                               ; preds = %70, %37
  %72 = load i32, i32* %6, align 4
  %73 = icmp eq i32 %72, 384
  br i1 %73, label %74, label %144

74:                                               ; preds = %71
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @GET_BYTE(i32* %75, i32 0)
  %77 = and i32 %76, 7
  %78 = shl i32 %77, 8
  %79 = load i32*, i32** %2, align 8
  %80 = call i32 @GET_BYTE(i32* %79, i32 1)
  %81 = add i32 %78, %80
  store i32 %81, i32* %8, align 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TIM2, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @to_signed(i32 %85, i32 11)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %124

89:                                               ; preds = %74
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @GM_MAX_STEER, align 4
  %92 = load i32, i32* @GM_MAX_STEER, align 4
  %93 = sub nsw i32 0, %92
  %94 = call i32 @max_limit_check(i32 %90, i32 %91, i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @gm_desired_torque_last, align 4
  %99 = load i32, i32* @GM_MAX_STEER, align 4
  %100 = load i32, i32* @GM_MAX_RATE_UP, align 4
  %101 = load i32, i32* @GM_MAX_RATE_DOWN, align 4
  %102 = load i32, i32* @GM_DRIVER_TORQUE_ALLOWANCE, align 4
  %103 = load i32, i32* @GM_DRIVER_TORQUE_FACTOR, align 4
  %104 = call i32 @driver_limit_check(i32 %97, i32 %98, i32* @gm_torque_driver, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* %10, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* @gm_desired_torque_last, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @gm_rt_torque_last, align 4
  %110 = load i32, i32* @GM_MAX_RT_DELTA, align 4
  %111 = call i32 @rt_rate_limit_check(i32 %108, i32 %109, i32 %110)
  %112 = load i32, i32* %10, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %10, align 4
  %114 = load i64, i64* %9, align 8
  %115 = load i64, i64* @gm_ts_last, align 8
  %116 = call i64 @get_ts_elapsed(i64 %114, i64 %115)
  store i64 %116, i64* %11, align 8
  %117 = load i64, i64* %11, align 8
  %118 = load i64, i64* @GM_RT_INTERVAL, align 8
  %119 = icmp sgt i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %89
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* @gm_rt_torque_last, align 4
  %122 = load i64, i64* %9, align 8
  store i64 %122, i64* @gm_ts_last, align 8
  br label %123

123:                                              ; preds = %120, %89
  br label %124

124:                                              ; preds = %123, %74
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 1, i32* %10, align 4
  br label %131

131:                                              ; preds = %130, %127, %124
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %134, %131
  store i32 0, i32* @gm_desired_torque_last, align 4
  store i32 0, i32* @gm_rt_torque_last, align 4
  %138 = load i64, i64* %9, align 8
  store i64 %138, i64* @gm_ts_last, align 8
  br label %139

139:                                              ; preds = %137, %134
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %139
  br label %144

144:                                              ; preds = %143, %71
  %145 = load i32, i32* %6, align 4
  %146 = icmp eq i32 %145, 823
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %147, %144
  %149 = load i32, i32* %6, align 4
  %150 = icmp eq i32 %149, 715
  br i1 %150, label %151, label %184

151:                                              ; preds = %148
  %152 = load i32*, i32** %2, align 8
  %153 = call i32 @GET_BYTE(i32* %152, i32 2)
  %154 = and i32 %153, 127
  %155 = shl i32 %154, 5
  %156 = load i32*, i32** %2, align 8
  %157 = call i32 @GET_BYTE(i32* %156, i32 3)
  %158 = and i32 %157, 248
  %159 = lshr i32 %158, 3
  %160 = add i32 %155, %159
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %5, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %151
  %164 = load i32, i32* @long_controls_allowed, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %178, label %166

166:                                              ; preds = %163, %151
  %167 = load i32*, i32** %2, align 8
  %168 = call i32 @GET_BYTE(i32* %167, i32 0)
  %169 = and i32 %168, 1
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* %13, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %166
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* @GM_MAX_REGEN, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %172, %166
  store i32 0, i32* %3, align 4
  br label %177

177:                                              ; preds = %176, %172
  br label %178

178:                                              ; preds = %177, %163
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* @GM_MAX_GAS, align 4
  %181 = icmp sgt i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  store i32 0, i32* %3, align 4
  br label %183

183:                                              ; preds = %182, %178
  br label %184

184:                                              ; preds = %183, %148
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @GET_ADDR(i32*) #1

declare dso_local i32 @GET_BYTE(i32*, i32) #1

declare dso_local i32 @to_signed(i32, i32) #1

declare dso_local i32 @max_limit_check(i32, i32, i32) #1

declare dso_local i32 @driver_limit_check(i32, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rt_rate_limit_check(i32, i32, i32) #1

declare dso_local i64 @get_ts_elapsed(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
