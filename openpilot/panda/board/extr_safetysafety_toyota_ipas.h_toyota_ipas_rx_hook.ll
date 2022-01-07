; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_toyota_ipas.h_toyota_ipas_rx_hook.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_toyota_ipas.h_toyota_ipas_rx_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }

@torque_driver = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@TIM2 = common dso_local global %struct.TYPE_6__* null, align 8
@angle_meas = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@RT_ANGLE_FUDGE = common dso_local global i32 0, align 4
@LOOKUP_ANGLE_RATE_UP = common dso_local global i32 0, align 4
@speed = common dso_local global float 0.000000e+00, align 4
@CAN_TO_DEG = common dso_local global i32 0, align 4
@LOOKUP_ANGLE_RATE_DOWN = common dso_local global i32 0, align 4
@rt_angle_last = common dso_local global i32 0, align 4
@ts_angle_last = common dso_local global i64 0, align 8
@TOYOTA_RT_INTERVAL = common dso_local global i64 0, align 8
@controls_allowed = common dso_local global i64 0, align 8
@controls_allowed_last = common dso_local global i64 0, align 8
@angle_control = common dso_local global i64 0, align 8
@ipas_state = common dso_local global i32 0, align 4
@TOYOTA_IPAS_OVERRIDE_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @toyota_ipas_rx_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toyota_ipas_rx_hook(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @toyota_rx_hook(i32* %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @GET_ADDR(i32* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 608
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @GET_BYTE(i32* %19, i32 1)
  %21 = shl i32 %20, 8
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @GET_BYTE(i32* %22, i32 2)
  %24 = or i32 %21, %23
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @update_sample(%struct.TYPE_5__* @torque_driver, i32 %25)
  br label %27

27:                                               ; preds = %18, %1
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 37
  br i1 %29, label %30, label %120

30:                                               ; preds = %27
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @GET_BYTE(i32* %31, i32 0)
  %33 = and i32 %32, 15
  %34 = shl i32 %33, 8
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @GET_BYTE(i32* %35, i32 1)
  %37 = or i32 %34, %36
  store i32 %37, i32* %5, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TIM2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %6, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @to_signed(i32 %41, i32 12)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @update_sample(%struct.TYPE_5__* @angle_meas, i32 %43)
  %45 = load i32, i32* @RT_ANGLE_FUDGE, align 4
  %46 = sitofp i32 %45 to double
  %47 = load i32, i32* @LOOKUP_ANGLE_RATE_UP, align 4
  %48 = load float, float* @speed, align 4
  %49 = call i32 @interpolate(i32 %47, float %48)
  %50 = sitofp i32 %49 to double
  %51 = fmul double %50, 2.000000e+01
  %52 = load i32, i32* @CAN_TO_DEG, align 4
  %53 = sitofp i32 %52 to double
  %54 = fmul double %51, %53
  %55 = fadd double %54, 1.000000e+00
  %56 = fmul double %46, %55
  %57 = fptosi double %56 to i32
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* @RT_ANGLE_FUDGE, align 4
  %59 = sitofp i32 %58 to double
  %60 = load i32, i32* @LOOKUP_ANGLE_RATE_DOWN, align 4
  %61 = load float, float* @speed, align 4
  %62 = call i32 @interpolate(i32 %60, float %61)
  %63 = sitofp i32 %62 to double
  %64 = fmul double %63, 2.000000e+01
  %65 = load i32, i32* @CAN_TO_DEG, align 4
  %66 = sitofp i32 %65 to double
  %67 = fmul double %64, %66
  %68 = fadd double %67, 1.000000e+00
  %69 = fmul double %59, %68
  %70 = fptosi double %69 to i32
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* @rt_angle_last, align 4
  %72 = load i32, i32* @rt_angle_last, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %30
  %75 = load i32, i32* %7, align 4
  br label %78

76:                                               ; preds = %30
  %77 = load i32, i32* %8, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = add nsw i32 %71, %79
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* @rt_angle_last, align 4
  %82 = load i32, i32* @rt_angle_last, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %8, align 4
  br label %88

86:                                               ; preds = %78
  %87 = load i32, i32* %7, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = sub nsw i32 %81, %89
  store i32 %90, i32* %10, align 4
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* @ts_angle_last, align 8
  %93 = call i64 @get_ts_elapsed(i64 %91, i64 %92)
  store i64 %93, i64* %11, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* @TOYOTA_RT_INTERVAL, align 8
  %96 = icmp sgt i64 %94, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %88
  %98 = load i64, i64* @controls_allowed, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i64, i64* @controls_allowed_last, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100, %88
  %104 = load i32, i32* %5, align 4
  store i32 %104, i32* @rt_angle_last, align 4
  %105 = load i64, i64* %6, align 8
  store i64 %105, i64* @ts_angle_last, align 8
  br label %106

106:                                              ; preds = %103, %100, %97
  %107 = load i64, i64* @angle_control, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %106
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113, %109
  store i64 0, i64* @controls_allowed, align 8
  br label %118

118:                                              ; preds = %117, %113, %106
  %119 = load i64, i64* @controls_allowed, align 8
  store i64 %119, i64* @controls_allowed_last, align 8
  br label %120

120:                                              ; preds = %118, %27
  %121 = load i32, i32* %3, align 4
  %122 = icmp eq i32 %121, 180
  br i1 %122, label %123, label %135

123:                                              ; preds = %120
  %124 = load i32*, i32** %2, align 8
  %125 = call i32 @GET_BYTE(i32* %124, i32 5)
  %126 = shl i32 %125, 8
  %127 = load i32*, i32** %2, align 8
  %128 = call i32 @GET_BYTE(i32* %127, i32 6)
  %129 = or i32 %126, %128
  %130 = sitofp i32 %129 to float
  %131 = fpext float %130 to double
  %132 = fmul double %131, 1.000000e-02
  %133 = fdiv double %132, 3.600000e+00
  %134 = fptrunc double %133 to float
  store float %134, float* @speed, align 4
  br label %135

135:                                              ; preds = %123, %120
  %136 = load i32, i32* %3, align 4
  %137 = icmp eq i32 %136, 610
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i32*, i32** %2, align 8
  %140 = call i32 @GET_BYTE(i32* %139, i32 0)
  %141 = and i32 %140, 15
  store i32 %141, i32* @ipas_state, align 4
  br label %142

142:                                              ; preds = %138, %135
  %143 = load i64, i64* @angle_control, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %142
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @torque_driver, i32 0, i32 1), align 4
  %147 = load i32, i32* @TOYOTA_IPAS_OVERRIDE_THRESHOLD, align 4
  %148 = icmp sgt i32 %146, %147
  br i1 %148, label %157, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @torque_driver, i32 0, i32 0), align 4
  %151 = load i32, i32* @TOYOTA_IPAS_OVERRIDE_THRESHOLD, align 4
  %152 = sub nsw i32 0, %151
  %153 = icmp slt i32 %150, %152
  br i1 %153, label %157, label %154

154:                                              ; preds = %149
  %155 = load i32, i32* @ipas_state, align 4
  %156 = icmp eq i32 %155, 5
  br i1 %156, label %157, label %158

157:                                              ; preds = %154, %149, %145
  store i64 0, i64* @controls_allowed, align 8
  br label %158

158:                                              ; preds = %157, %154, %142
  ret void
}

declare dso_local i32 @toyota_rx_hook(i32*) #1

declare dso_local i32 @GET_ADDR(i32*) #1

declare dso_local i32 @GET_BYTE(i32*, i32) #1

declare dso_local i32 @update_sample(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @to_signed(i32, i32) #1

declare dso_local i32 @interpolate(i32, float) #1

declare dso_local i64 @get_ts_elapsed(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
