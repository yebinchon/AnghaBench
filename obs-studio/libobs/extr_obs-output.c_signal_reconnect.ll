; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_signal_reconnect.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_signal_reconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_output = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.calldata = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"timeout_sec\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"reconnect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_output*)* @signal_reconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @signal_reconnect(%struct.obs_output* %0) #0 {
  %2 = alloca %struct.obs_output*, align 8
  %3 = alloca %struct.calldata, align 4
  %4 = alloca [128 x i32], align 16
  store %struct.obs_output* %0, %struct.obs_output** %2, align 8
  %5 = getelementptr inbounds [128 x i32], [128 x i32]* %4, i64 0, i64 0
  %6 = call i32 @calldata_init_fixed(%struct.calldata* %3, i32* %5, i32 512)
  %7 = load %struct.obs_output*, %struct.obs_output** %2, align 8
  %8 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @calldata_set_int(%struct.calldata* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.obs_output*, %struct.obs_output** %2, align 8
  %12 = call i32 @calldata_set_ptr(%struct.calldata* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.obs_output* %11)
  %13 = load %struct.obs_output*, %struct.obs_output** %2, align 8
  %14 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @signal_handler_signal(i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.calldata* %3)
  ret void
}

declare dso_local i32 @calldata_init_fixed(%struct.calldata*, i32*, i32) #1

declare dso_local i32 @calldata_set_int(%struct.calldata*, i8*, i32) #1

declare dso_local i32 @calldata_set_ptr(%struct.calldata*, i8*, %struct.obs_output*) #1

declare dso_local i32 @signal_handler_signal(i32, i8*, %struct.calldata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
