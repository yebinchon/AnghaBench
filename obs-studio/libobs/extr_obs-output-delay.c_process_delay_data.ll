; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output-delay.c_process_delay_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output-delay.c_process_delay_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_output = type { i32 (%struct.obs_output*, i32*)* }
%struct.delay_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_output*, %struct.delay_data*)* @process_delay_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_delay_data(%struct.obs_output* %0, %struct.delay_data* %1) #0 {
  %3 = alloca %struct.obs_output*, align 8
  %4 = alloca %struct.delay_data*, align 8
  store %struct.obs_output* %0, %struct.obs_output** %3, align 8
  store %struct.delay_data* %1, %struct.delay_data** %4, align 8
  %5 = load %struct.delay_data*, %struct.delay_data** %4, align 8
  %6 = getelementptr inbounds %struct.delay_data, %struct.delay_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %38 [
    i32 130, label %8
    i32 129, label %29
    i32 128, label %32
  ]

8:                                                ; preds = %2
  %9 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %10 = call i32 @delay_active(%struct.obs_output* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %14 = call i32 @delay_capturing(%struct.obs_output* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12, %8
  %17 = load %struct.delay_data*, %struct.delay_data** %4, align 8
  %18 = getelementptr inbounds %struct.delay_data, %struct.delay_data* %17, i32 0, i32 2
  %19 = call i32 @obs_encoder_packet_release(i32* %18)
  br label %28

20:                                               ; preds = %12
  %21 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %22 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %21, i32 0, i32 0
  %23 = load i32 (%struct.obs_output*, i32*)*, i32 (%struct.obs_output*, i32*)** %22, align 8
  %24 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %25 = load %struct.delay_data*, %struct.delay_data** %4, align 8
  %26 = getelementptr inbounds %struct.delay_data, %struct.delay_data* %25, i32 0, i32 2
  %27 = call i32 %23(%struct.obs_output* %24, i32* %26)
  br label %28

28:                                               ; preds = %20, %16
  br label %38

29:                                               ; preds = %2
  %30 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %31 = call i32 @obs_output_actual_start(%struct.obs_output* %30)
  br label %38

32:                                               ; preds = %2
  %33 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %34 = load %struct.delay_data*, %struct.delay_data** %4, align 8
  %35 = getelementptr inbounds %struct.delay_data, %struct.delay_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @obs_output_actual_stop(%struct.obs_output* %33, i32 0, i32 %36)
  br label %38

38:                                               ; preds = %2, %32, %29, %28
  ret void
}

declare dso_local i32 @delay_active(%struct.obs_output*) #1

declare dso_local i32 @delay_capturing(%struct.obs_output*) #1

declare dso_local i32 @obs_encoder_packet_release(i32*) #1

declare dso_local i32 @obs_output_actual_start(%struct.obs_output*) #1

declare dso_local i32 @obs_output_actual_stop(%struct.obs_output*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
