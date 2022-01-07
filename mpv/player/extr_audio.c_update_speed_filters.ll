; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_audio.c_update_speed_filters.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_audio.c_update_speed_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { double, %struct.TYPE_2__*, %struct.ao_chain* }
%struct.TYPE_2__ = type { double, i32 }
%struct.ao_chain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*)* @update_speed_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_speed_filters(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.ao_chain*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %6 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %7 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %6, i32 0, i32 2
  %8 = load %struct.ao_chain*, %struct.ao_chain** %7, align 8
  store %struct.ao_chain* %8, %struct.ao_chain** %3, align 8
  %9 = load %struct.ao_chain*, %struct.ao_chain** %3, align 8
  %10 = icmp ne %struct.ao_chain* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %38

12:                                               ; preds = %1
  %13 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %14 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load double, double* %16, align 8
  store double %17, double* %4, align 8
  %18 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %19 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %18, i32 0, i32 0
  %20 = load double, double* %19, align 8
  store double %20, double* %5, align 8
  %21 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %22 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %12
  %28 = load double, double* %4, align 8
  %29 = load double, double* %5, align 8
  %30 = fmul double %29, %28
  store double %30, double* %5, align 8
  store double 1.000000e+00, double* %4, align 8
  br label %31

31:                                               ; preds = %27, %12
  %32 = load %struct.ao_chain*, %struct.ao_chain** %3, align 8
  %33 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load double, double* %4, align 8
  %36 = load double, double* %5, align 8
  %37 = call i32 @mp_output_chain_set_audio_speed(i32 %34, double %35, double %36)
  br label %38

38:                                               ; preds = %31, %11
  ret void
}

declare dso_local i32 @mp_output_chain_set_audio_speed(i32, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
