; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_init_output_handlers.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_init_output_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_output = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@OBS_OBJ_TYPE_OUTPUT = common dso_local global i32 0, align 4
@output_signals = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_output*, i8*, i32*, i32*)* @init_output_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_output_handlers(%struct.obs_output* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.obs_output*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.obs_output* %0, %struct.obs_output** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.obs_output*, %struct.obs_output** %6, align 8
  %11 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %10, i32 0, i32 0
  %12 = load i32, i32* @OBS_OBJ_TYPE_OUTPUT, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @obs_context_data_init(%struct.TYPE_2__* %11, i32 %12, i32* %13, i8* %14, i32* %15, i32 0)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %26

19:                                               ; preds = %4
  %20 = load %struct.obs_output*, %struct.obs_output** %6, align 8
  %21 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @output_signals, align 4
  %25 = call i32 @signal_handler_add_array(i32 %23, i32 %24)
  store i32 1, i32* %5, align 4
  br label %26

26:                                               ; preds = %19, %18
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @obs_context_data_init(%struct.TYPE_2__*, i32, i32*, i8*, i32*, i32) #1

declare dso_local i32 @signal_handler_add_array(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
