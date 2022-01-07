; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_tesla.h_tesla_rx_hook.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_tesla.h_tesla_rx_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@controls_allowed = common dso_local global i32 0, align 4
@tesla_speed = common dso_local global i32 0, align 4
@eac_status = common dso_local global i32 0, align 4
@TIM2 = common dso_local global %struct.TYPE_2__* null, align 8
@tesla_ts_angle_last = common dso_local global i64 0, align 8
@TESLA_LOOKUP_ANGLE_RATE_UP = common dso_local global i32 0, align 4
@TESLA_LOOKUP_ANGLE_RATE_DOWN = common dso_local global i32 0, align 4
@tesla_rt_angle_last = common dso_local global i32 0, align 4
@TESLA_RT_INTERVAL = common dso_local global i64 0, align 8
@tesla_controls_allowed_last = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @tesla_rx_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tesla_rx_hook(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store i32* %0, i32** %2, align 8
  %12 = call i32 @set_gmlan_digital_output(i32 0)
  %13 = call i32 (...) @reset_gmlan_switch_timeout()
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @GET_ADDR(i32* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 69
  br i1 %17, label %18, label %30

18:                                               ; preds = %1
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @GET_BYTE(i32* %19, i32 0)
  %21 = and i32 %20, 63
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1, i32* @controls_allowed, align 4
  br label %25

25:                                               ; preds = %24, %18
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* @controls_allowed, align 4
  br label %29

29:                                               ; preds = %28, %25
  br label %30

30:                                               ; preds = %29, %1
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 280
  br i1 %32, label %33, label %57

33:                                               ; preds = %30
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @GET_BYTE(i32* %34, i32 1)
  %36 = and i32 %35, 128
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* @controls_allowed, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @GET_BYTE(i32* %40, i32 3)
  %42 = and i32 %41, 15
  %43 = shl i32 %42, 8
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @GET_BYTE(i32* %44, i32 2)
  %46 = add nsw i32 %43, %45
  %47 = sitofp i32 %46 to double
  %48 = fmul double %47, 5.000000e-02
  %49 = fsub double %48, 2.500000e+01
  %50 = fmul double %49, 1.609000e+00
  %51 = fdiv double %50, 3.600000e+00
  %52 = fptosi double %51 to i32
  store i32 %52, i32* @tesla_speed, align 4
  %53 = load i32, i32* @tesla_speed, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %39
  store i32 0, i32* @tesla_speed, align 4
  br label %56

56:                                               ; preds = %55, %39
  br label %57

57:                                               ; preds = %56, %30
  %58 = load i32, i32* %3, align 4
  %59 = icmp eq i32 %58, 880
  br i1 %59, label %60, label %78

60:                                               ; preds = %57
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @GET_BYTE(i32* %61, i32 6)
  %63 = ashr i32 %62, 5
  %64 = and i32 %63, 7
  store i32 %64, i32* @eac_status, align 4
  %65 = load i32, i32* @controls_allowed, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %60
  %68 = load i32, i32* @eac_status, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i32, i32* @eac_status, align 4
  %72 = icmp ne i32 %71, 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* @eac_status, align 4
  %75 = icmp ne i32 %74, 2
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 0, i32* @controls_allowed, align 4
  br label %77

77:                                               ; preds = %76, %73, %70, %67, %60
  br label %78

78:                                               ; preds = %77, %57
  %79 = load i32, i32* %3, align 4
  %80 = icmp eq i32 %79, 14
  br i1 %80, label %81, label %161

81:                                               ; preds = %78
  %82 = load i32*, i32** %2, align 8
  %83 = call i32 @GET_BYTE(i32* %82, i32 0)
  %84 = and i32 %83, 63
  %85 = shl i32 %84, 8
  %86 = load i32*, i32** %2, align 8
  %87 = call i32 @GET_BYTE(i32* %86, i32 1)
  %88 = add nsw i32 %85, %87
  %89 = sitofp i32 %88 to double
  %90 = fmul double %89, 1.000000e-01
  %91 = fsub double %90, 8.192000e+02
  %92 = fptosi double %91 to i32
  %93 = sitofp i32 %92 to float
  store float %93, float* %5, align 4
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TIM2, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %6, align 8
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* @tesla_ts_angle_last, align 8
  %99 = call i64 @get_ts_elapsed(i64 %97, i64 %98)
  store i64 %99, i64* %7, align 8
  %100 = load i32, i32* @TESLA_LOOKUP_ANGLE_RATE_UP, align 4
  %101 = load i32, i32* @tesla_speed, align 4
  %102 = call i32 @interpolate(i32 %100, i32 %101)
  %103 = sitofp i32 %102 to double
  %104 = fmul double %103, 2.500000e+01
  %105 = fadd double %104, 1.000000e+00
  %106 = fptrunc double %105 to float
  store float %106, float* %8, align 4
  %107 = load i32, i32* @TESLA_LOOKUP_ANGLE_RATE_DOWN, align 4
  %108 = load i32, i32* @tesla_speed, align 4
  %109 = call i32 @interpolate(i32 %107, i32 %108)
  %110 = sitofp i32 %109 to double
  %111 = fmul double %110, 2.500000e+01
  %112 = fadd double %111, 1.000000e+00
  %113 = fptrunc double %112 to float
  store float %113, float* %9, align 4
  %114 = load i32, i32* @tesla_rt_angle_last, align 4
  %115 = sitofp i32 %114 to float
  %116 = load i32, i32* @tesla_rt_angle_last, align 4
  %117 = sitofp i32 %116 to double
  %118 = fcmp ogt double %117, 0.000000e+00
  br i1 %118, label %119, label %121

119:                                              ; preds = %81
  %120 = load float, float* %8, align 4
  br label %123

121:                                              ; preds = %81
  %122 = load float, float* %9, align 4
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi float [ %120, %119 ], [ %122, %121 ]
  %125 = fadd float %115, %124
  store float %125, float* %10, align 4
  %126 = load i32, i32* @tesla_rt_angle_last, align 4
  %127 = sitofp i32 %126 to float
  %128 = load i32, i32* @tesla_rt_angle_last, align 4
  %129 = sitofp i32 %128 to double
  %130 = fcmp ogt double %129, 0.000000e+00
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = load float, float* %9, align 4
  br label %135

133:                                              ; preds = %123
  %134 = load float, float* %8, align 4
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi float [ %132, %131 ], [ %134, %133 ]
  %137 = fsub float %127, %136
  store float %137, float* %11, align 4
  %138 = load i64, i64* %7, align 8
  %139 = load i64, i64* @TESLA_RT_INTERVAL, align 8
  %140 = icmp sgt i64 %138, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %135
  %142 = load i32, i32* @controls_allowed, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %141
  %145 = load i32, i32* @tesla_controls_allowed_last, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %144, %135
  %148 = load float, float* %5, align 4
  %149 = fptosi float %148 to i32
  store i32 %149, i32* @tesla_rt_angle_last, align 4
  %150 = load i64, i64* %6, align 8
  store i64 %150, i64* @tesla_ts_angle_last, align 8
  br label %151

151:                                              ; preds = %147, %144, %141
  %152 = load float, float* %5, align 4
  %153 = load float, float* %10, align 4
  %154 = load float, float* %11, align 4
  %155 = call i64 @fmax_limit_check(float %152, float %153, float %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  store i32 0, i32* @controls_allowed, align 4
  br label %159

158:                                              ; preds = %151
  store i32 1, i32* @controls_allowed, align 4
  br label %159

159:                                              ; preds = %158, %157
  %160 = load i32, i32* @controls_allowed, align 4
  store i32 %160, i32* @tesla_controls_allowed_last, align 4
  br label %161

161:                                              ; preds = %159, %78
  ret void
}

declare dso_local i32 @set_gmlan_digital_output(i32) #1

declare dso_local i32 @reset_gmlan_switch_timeout(...) #1

declare dso_local i32 @GET_ADDR(i32*) #1

declare dso_local i32 @GET_BYTE(i32*, i32) #1

declare dso_local i64 @get_ts_elapsed(i64, i64) #1

declare dso_local i32 @interpolate(i32, i32) #1

declare dso_local i64 @fmax_limit_check(float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
