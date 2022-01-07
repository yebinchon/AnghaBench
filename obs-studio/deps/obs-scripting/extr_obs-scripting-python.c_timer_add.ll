; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_timer_add.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_timer_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_python_script = type { i32 }
%struct.python_obs_callback = type { i32 }
%struct.python_obs_timer = type { i64, i32 }

@cur_python_script = common dso_local global %struct.obs_python_script* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"Oi\00", align 1
@defer_timer_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @timer_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @timer_add(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.obs_python_script*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.python_obs_callback*, align 8
  %10 = alloca %struct.python_obs_timer*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.obs_python_script*, %struct.obs_python_script** @cur_python_script, align 8
  store %struct.obs_python_script* %11, %struct.obs_python_script** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @UNUSED_PARAMETER(i32* %12)
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @parse_args(i32* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32** %7, i32* %8)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = call i32* (...) @python_none()
  store i32* %18, i32** %3, align 8
  br label %37

19:                                               ; preds = %2
  %20 = load %struct.obs_python_script*, %struct.obs_python_script** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call %struct.python_obs_callback* @add_python_obs_callback_extra(%struct.obs_python_script* %20, i32* %21, i32 16)
  store %struct.python_obs_callback* %22, %struct.python_obs_callback** %9, align 8
  %23 = load %struct.python_obs_callback*, %struct.python_obs_callback** %9, align 8
  %24 = call %struct.python_obs_timer* @python_obs_callback_extra_data(%struct.python_obs_callback* %23)
  store %struct.python_obs_timer* %24, %struct.python_obs_timer** %10, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 1000000
  %28 = load %struct.python_obs_timer*, %struct.python_obs_timer** %10, align 8
  %29 = getelementptr inbounds %struct.python_obs_timer, %struct.python_obs_timer* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = call i32 (...) @obs_get_video_frame_time()
  %31 = load %struct.python_obs_timer*, %struct.python_obs_timer** %10, align 8
  %32 = getelementptr inbounds %struct.python_obs_timer, %struct.python_obs_timer* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @defer_timer_init, align 4
  %34 = load %struct.python_obs_callback*, %struct.python_obs_callback** %9, align 8
  %35 = call i32 @defer_call_post(i32 %33, %struct.python_obs_callback* %34)
  %36 = call i32* (...) @python_none()
  store i32* %36, i32** %3, align 8
  br label %37

37:                                               ; preds = %19, %17
  %38 = load i32*, i32** %3, align 8
  ret i32* %38
}

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

declare dso_local i32 @parse_args(i32*, i8*, i32**, i32*) #1

declare dso_local i32* @python_none(...) #1

declare dso_local %struct.python_obs_callback* @add_python_obs_callback_extra(%struct.obs_python_script*, i32*, i32) #1

declare dso_local %struct.python_obs_timer* @python_obs_callback_extra_data(%struct.python_obs_callback*) #1

declare dso_local i32 @obs_get_video_frame_time(...) #1

declare dso_local i32 @defer_call_post(i32, %struct.python_obs_callback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
