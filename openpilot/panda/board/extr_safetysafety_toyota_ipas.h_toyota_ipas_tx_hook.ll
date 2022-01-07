; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_toyota_ipas.h_toyota_ipas_tx_hook.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_toyota_ipas.h_toyota_ipas_tx_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@angle_control = common dso_local global i32 0, align 4
@controls_allowed = common dso_local global i64 0, align 8
@LOOKUP_ANGLE_RATE_UP = common dso_local global i32 0, align 4
@speed = common dso_local global i32 0, align 4
@CAN_TO_DEG = common dso_local global i32 0, align 4
@LOOKUP_ANGLE_RATE_DOWN = common dso_local global i32 0, align 4
@desired_angle_last = common dso_local global i32 0, align 4
@angle_meas = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @toyota_ipas_tx_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toyota_ipas_tx_hook(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @GET_BUS(i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @GET_ADDR(i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %116

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 614
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 359
  br i1 %26, label %27, label %115

27:                                               ; preds = %24, %21
  store i32 1, i32* @angle_control, align 4
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @GET_BYTE(i32* %28, i32 0)
  %30 = and i32 %29, 15
  %31 = shl i32 %30, 8
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @GET_BYTE(i32* %32, i32 1)
  %34 = or i32 %31, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @GET_BYTE(i32* %35, i32 0)
  %37 = ashr i32 %36, 4
  store i32 %37, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @to_signed(i32 %38, i32 12)
  store i32 %39, i32* %7, align 4
  %40 = load i64, i64* @controls_allowed, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %92

42:                                               ; preds = %27
  %43 = load i32, i32* @LOOKUP_ANGLE_RATE_UP, align 4
  %44 = load i32, i32* @speed, align 4
  %45 = call i32 @interpolate(i32 %43, i32 %44)
  %46 = load i32, i32* @CAN_TO_DEG, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sitofp i32 %47 to double
  %49 = fadd double %48, 1.000000e+00
  %50 = fptrunc double %49 to float
  store float %50, float* %10, align 4
  %51 = load float, float* %10, align 4
  %52 = fptosi float %51 to i32
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* @LOOKUP_ANGLE_RATE_DOWN, align 4
  %54 = load i32, i32* @speed, align 4
  %55 = call i32 @interpolate(i32 %53, i32 %54)
  %56 = load i32, i32* @CAN_TO_DEG, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sitofp i32 %57 to double
  %59 = fadd double %58, 1.000000e+00
  %60 = fptrunc double %59 to float
  store float %60, float* %10, align 4
  %61 = load float, float* %10, align 4
  %62 = fptosi float %61 to i32
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* @desired_angle_last, align 4
  %64 = load i32, i32* @desired_angle_last, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %42
  %67 = load i32, i32* %11, align 4
  br label %70

68:                                               ; preds = %42
  %69 = load i32, i32* %12, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = add nsw i32 %63, %71
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* @desired_angle_last, align 4
  %74 = load i32, i32* @desired_angle_last, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %12, align 4
  br label %80

78:                                               ; preds = %70
  %79 = load i32, i32* %11, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  %82 = sub nsw i32 %73, %81
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86, %80
  store i32 1, i32* %9, align 4
  store i64 0, i64* @controls_allowed, align 8
  br label %91

91:                                               ; preds = %90, %86
  br label %92

92:                                               ; preds = %91, %27
  %93 = load i64, i64* @controls_allowed, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %109, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @angle_meas, i32 0, i32 0), align 4
  %98 = sub nsw i32 %97, 1
  %99 = icmp slt i32 %96, %98
  br i1 %99, label %108, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @angle_meas, i32 0, i32 1), align 4
  %103 = add nsw i32 %102, 1
  %104 = icmp sgt i32 %101, %103
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 1
  br i1 %107, label %108, label %109

108:                                              ; preds = %105, %100, %95
  store i32 1, i32* %9, align 4
  br label %109

109:                                              ; preds = %108, %105, %92
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* @desired_angle_last, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %109
  store i32 1, i32* %4, align 4
  br label %115

115:                                              ; preds = %114, %24
  br label %116

116:                                              ; preds = %115, %1
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %116
  %120 = load i32*, i32** %2, align 8
  %121 = call i32 @toyota_tx_hook(i32* %120)
  %122 = load i32, i32* %3, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %119, %116
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @GET_BUS(i32*) #1

declare dso_local i32 @GET_ADDR(i32*) #1

declare dso_local i32 @GET_BYTE(i32*, i32) #1

declare dso_local i32 @to_signed(i32, i32) #1

declare dso_local i32 @interpolate(i32, i32) #1

declare dso_local i32 @toyota_tx_hook(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
