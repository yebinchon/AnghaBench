; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio.c_ca_get_hardware_latency.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio.c_ca_get_hardware_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.priv* }
%struct.priv = type { i32, i32 }

@kAudioUnitProperty_Latency = common dso_local global i32 0, align 4
@kAudioUnitScope_Global = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cannot get audio unit latency\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"audiounit latency [us]: %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"device latency [us]: %lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.ao*)* @ca_get_hardware_latency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @ca_get_hardware_latency(%struct.ao* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.ao*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store %struct.ao* %0, %struct.ao** %3, align 8
  %10 = load %struct.ao*, %struct.ao** %3, align 8
  %11 = getelementptr inbounds %struct.ao, %struct.ao* %10, i32 0, i32 0
  %12 = load %struct.priv*, %struct.priv** %11, align 8
  store %struct.priv* %12, %struct.priv** %4, align 8
  store double 0.000000e+00, double* %5, align 8
  store i32 8, i32* %6, align 4
  %13 = load %struct.priv*, %struct.priv** %4, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @kAudioUnitProperty_Latency, align 4
  %17 = load i32, i32* @kAudioUnitScope_Global, align 4
  %18 = call i32 @AudioUnitGetProperty(i32 %15, i32 %16, i32 %17, i32 0, double* %5, i32* %6)
  store i32 %18, i32* %7, align 4
  %19 = call i32 @CHECK_CA_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %20 = load double, double* %5, align 8
  %21 = fmul double %20, 1.000000e+06
  store double %21, double* %8, align 8
  %22 = load %struct.ao*, %struct.ao** %3, align 8
  %23 = load %struct.priv*, %struct.priv** %4, align 8
  %24 = getelementptr inbounds %struct.priv, %struct.priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call double @ca_get_device_latency_us(%struct.ao* %22, i32 %25)
  store double %26, double* %9, align 8
  %27 = load %struct.ao*, %struct.ao** %3, align 8
  %28 = load double, double* %8, align 8
  %29 = call i32 @MP_VERBOSE(%struct.ao* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), double %28)
  %30 = load %struct.ao*, %struct.ao** %3, align 8
  %31 = load double, double* %9, align 8
  %32 = call i32 @MP_VERBOSE(%struct.ao* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), double %31)
  %33 = load double, double* %8, align 8
  %34 = load double, double* %9, align 8
  %35 = fadd double %33, %34
  store double %35, double* %2, align 8
  br label %37

36:                                               ; No predecessors!
  store double 0.000000e+00, double* %2, align 8
  br label %37

37:                                               ; preds = %36, %1
  %38 = load double, double* %2, align 8
  ret double %38
}

declare dso_local i32 @AudioUnitGetProperty(i32, i32, i32, i32, double*, i32*) #1

declare dso_local i32 @CHECK_CA_ERROR(i8*) #1

declare dso_local double @ca_get_device_latency_us(%struct.ao*, i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.ao*, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
