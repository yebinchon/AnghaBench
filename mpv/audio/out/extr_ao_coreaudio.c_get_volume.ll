; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio.c_get_volume.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio.c_get_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.priv* }
%struct.priv = type { i32 }
%struct.ao_control_vol = type { float, float }

@kHALOutputParam_Volume = common dso_local global i32 0, align 4
@kAudioUnitScope_Global = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"could not get HAL output volume\00", align 1
@CONTROL_TRUE = common dso_local global i32 0, align 4
@CONTROL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*, %struct.ao_control_vol*)* @get_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_volume(%struct.ao* %0, %struct.ao_control_vol* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ao*, align 8
  %5 = alloca %struct.ao_control_vol*, align 8
  %6 = alloca %struct.priv*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %4, align 8
  store %struct.ao_control_vol* %1, %struct.ao_control_vol** %5, align 8
  %9 = load %struct.ao*, %struct.ao** %4, align 8
  %10 = getelementptr inbounds %struct.ao, %struct.ao* %9, i32 0, i32 0
  %11 = load %struct.priv*, %struct.priv** %10, align 8
  store %struct.priv* %11, %struct.priv** %6, align 8
  %12 = load %struct.priv*, %struct.priv** %6, align 8
  %13 = getelementptr inbounds %struct.priv, %struct.priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @kHALOutputParam_Volume, align 4
  %16 = load i32, i32* @kAudioUnitScope_Global, align 4
  %17 = call i32 @AudioUnitGetParameter(i32 %14, i32 %15, i32 %16, i32 0, float* %7)
  store i32 %17, i32* %8, align 4
  %18 = call i32 @CHECK_CA_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load float, float* %7, align 4
  %20 = fpext float %19 to double
  %21 = fmul double %20, 1.000000e+02
  %22 = fptrunc double %21 to float
  %23 = load %struct.ao_control_vol*, %struct.ao_control_vol** %5, align 8
  %24 = getelementptr inbounds %struct.ao_control_vol, %struct.ao_control_vol* %23, i32 0, i32 1
  store float %22, float* %24, align 4
  %25 = load %struct.ao_control_vol*, %struct.ao_control_vol** %5, align 8
  %26 = getelementptr inbounds %struct.ao_control_vol, %struct.ao_control_vol* %25, i32 0, i32 0
  store float %22, float* %26, align 4
  %27 = load i32, i32* @CONTROL_TRUE, align 4
  store i32 %27, i32* %3, align 4
  br label %30

28:                                               ; No predecessors!
  %29 = load i32, i32* @CONTROL_ERROR, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %2
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @AudioUnitGetParameter(i32, i32, i32, i32, float*) #1

declare dso_local i32 @CHECK_CA_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
