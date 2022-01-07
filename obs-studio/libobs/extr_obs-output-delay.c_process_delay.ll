; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output-delay.c_process_delay.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output-delay.c_process_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encoder_packet = type { i32 }
%struct.obs_output = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_delay(i8* %0, %struct.encoder_packet* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.encoder_packet*, align 8
  %5 = alloca %struct.obs_output*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.encoder_packet* %1, %struct.encoder_packet** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.obs_output*
  store %struct.obs_output* %8, %struct.obs_output** %5, align 8
  %9 = call i32 (...) @os_gettime_ns()
  store i32 %9, i32* %6, align 4
  %10 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %11 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @push_packet(%struct.obs_output* %10, %struct.encoder_packet* %11, i32 %12)
  br label %14

14:                                               ; preds = %19, %2
  %15 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @pop_packet(%struct.obs_output* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %14

20:                                               ; preds = %14
  ret void
}

declare dso_local i32 @os_gettime_ns(...) #1

declare dso_local i32 @push_packet(%struct.obs_output*, %struct.encoder_packet*, i32) #1

declare dso_local i64 @pop_packet(%struct.obs_output*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
