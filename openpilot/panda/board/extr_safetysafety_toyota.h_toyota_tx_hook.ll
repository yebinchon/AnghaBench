; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_toyota.h_toyota_tx_hook.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_toyota.h_toyota_tx_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@controls_allowed = common dso_local global i64 0, align 8
@long_controls_allowed = common dso_local global i32 0, align 4
@TOYOTA_MAX_ACCEL = common dso_local global i32 0, align 4
@TOYOTA_MIN_ACCEL = common dso_local global i32 0, align 4
@TIM2 = common dso_local global %struct.TYPE_2__* null, align 8
@TOYOTA_MAX_TORQUE = common dso_local global i32 0, align 4
@toyota_desired_torque_last = common dso_local global i32 0, align 4
@toyota_torque_meas = common dso_local global i32 0, align 4
@TOYOTA_MAX_RATE_UP = common dso_local global i32 0, align 4
@TOYOTA_MAX_RATE_DOWN = common dso_local global i32 0, align 4
@TOYOTA_MAX_TORQUE_ERROR = common dso_local global i32 0, align 4
@toyota_rt_torque_last = common dso_local global i32 0, align 4
@TOYOTA_MAX_RT_DELTA = common dso_local global i32 0, align 4
@toyota_ts_last = common dso_local global i64 0, align 8
@TOYOTA_RT_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @toyota_tx_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toyota_tx_hook(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %3, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @GET_ADDR(i32* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @GET_BUS(i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %147

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 614
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 359
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 512
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load i64, i64* @controls_allowed, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @long_controls_allowed, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %31, %28
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @GET_BYTE(i32* %35, i32 0)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @GET_BYTE(i32* %39, i32 1)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %34
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %38
  br label %44

44:                                               ; preds = %43, %31
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 835
  br i1 %47, label %48, label %76

48:                                               ; preds = %45
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @GET_BYTE(i32* %49, i32 0)
  %51 = shl i32 %50, 8
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @GET_BYTE(i32* %52, i32 1)
  %54 = or i32 %51, %53
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @to_signed(i32 %55, i32 16)
  store i32 %56, i32* %6, align 4
  %57 = load i64, i64* @controls_allowed, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load i32, i32* @long_controls_allowed, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %59, %48
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %62
  br label %67

67:                                               ; preds = %66, %59
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @TOYOTA_MAX_ACCEL, align 4
  %70 = load i32, i32* @TOYOTA_MIN_ACCEL, align 4
  %71 = call i32 @max_limit_check(i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %67
  br label %76

76:                                               ; preds = %75, %45
  %77 = load i32, i32* %4, align 4
  %78 = icmp eq i32 %77, 740
  br i1 %78, label %79, label %146

79:                                               ; preds = %76
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @GET_BYTE(i32* %80, i32 1)
  %82 = shl i32 %81, 8
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 @GET_BYTE(i32* %83, i32 2)
  %85 = or i32 %82, %84
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @to_signed(i32 %86, i32 16)
  store i32 %87, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TIM2, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %10, align 8
  %91 = load i64, i64* @controls_allowed, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %126

93:                                               ; preds = %79
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @TOYOTA_MAX_TORQUE, align 4
  %96 = load i32, i32* @TOYOTA_MAX_TORQUE, align 4
  %97 = sub nsw i32 0, %96
  %98 = call i32 @max_limit_check(i32 %94, i32 %95, i32 %97)
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @toyota_desired_torque_last, align 4
  %103 = load i32, i32* @TOYOTA_MAX_RATE_UP, align 4
  %104 = load i32, i32* @TOYOTA_MAX_RATE_DOWN, align 4
  %105 = load i32, i32* @TOYOTA_MAX_TORQUE_ERROR, align 4
  %106 = call i32 @dist_to_meas_check(i32 %101, i32 %102, i32* @toyota_torque_meas, i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* %9, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* @toyota_desired_torque_last, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @toyota_rt_torque_last, align 4
  %112 = load i32, i32* @TOYOTA_MAX_RT_DELTA, align 4
  %113 = call i32 @rt_rate_limit_check(i32 %110, i32 %111, i32 %112)
  %114 = load i32, i32* %9, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %9, align 4
  %116 = load i64, i64* %10, align 8
  %117 = load i64, i64* @toyota_ts_last, align 8
  %118 = call i64 @get_ts_elapsed(i64 %116, i64 %117)
  store i64 %118, i64* %11, align 8
  %119 = load i64, i64* %11, align 8
  %120 = load i64, i64* @TOYOTA_RT_INTERVAL, align 8
  %121 = icmp sgt i64 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %93
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* @toyota_rt_torque_last, align 4
  %124 = load i64, i64* %10, align 8
  store i64 %124, i64* @toyota_ts_last, align 8
  br label %125

125:                                              ; preds = %122, %93
  br label %126

126:                                              ; preds = %125, %79
  %127 = load i64, i64* @controls_allowed, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 1, i32* %9, align 4
  br label %133

133:                                              ; preds = %132, %129, %126
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %133
  %137 = load i64, i64* @controls_allowed, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %136, %133
  store i32 0, i32* @toyota_desired_torque_last, align 4
  store i32 0, i32* @toyota_rt_torque_last, align 4
  %140 = load i64, i64* %10, align 8
  store i64 %140, i64* @toyota_ts_last, align 8
  br label %141

141:                                              ; preds = %139, %136
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %144, %141
  br label %146

146:                                              ; preds = %145, %76
  br label %147

147:                                              ; preds = %146, %1
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @GET_ADDR(i32*) #1

declare dso_local i32 @GET_BUS(i32*) #1

declare dso_local i32 @GET_BYTE(i32*, i32) #1

declare dso_local i32 @to_signed(i32, i32) #1

declare dso_local i32 @max_limit_check(i32, i32, i32) #1

declare dso_local i32 @dist_to_meas_check(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @rt_rate_limit_check(i32, i32, i32) #1

declare dso_local i64 @get_ts_elapsed(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
