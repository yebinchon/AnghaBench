; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_query_hotkeys.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_query_hotkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.obs_query_hotkeys_helper = type { i32, i32, i32 }

@OBS_KEY_SHIFT = common dso_local global i32 0, align 4
@INTERACT_SHIFT_KEY = common dso_local global i32 0, align 4
@OBS_KEY_CONTROL = common dso_local global i32 0, align 4
@INTERACT_CONTROL_KEY = common dso_local global i32 0, align 4
@OBS_KEY_ALT = common dso_local global i32 0, align 4
@INTERACT_ALT_KEY = common dso_local global i32 0, align 4
@OBS_KEY_META = common dso_local global i32 0, align 4
@INTERACT_COMMAND_KEY = common dso_local global i32 0, align 4
@obs = common dso_local global %struct.TYPE_4__* null, align 8
@query_hotkey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @query_hotkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @query_hotkeys() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obs_query_hotkeys_helper, align 4
  store i32 0, i32* %1, align 4
  %3 = load i32, i32* @OBS_KEY_SHIFT, align 4
  %4 = call i64 @is_pressed(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* @INTERACT_SHIFT_KEY, align 4
  %8 = load i32, i32* %1, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %1, align 4
  br label %10

10:                                               ; preds = %6, %0
  %11 = load i32, i32* @OBS_KEY_CONTROL, align 4
  %12 = call i64 @is_pressed(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, i32* @INTERACT_CONTROL_KEY, align 4
  %16 = load i32, i32* %1, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %14, %10
  %19 = load i32, i32* @OBS_KEY_ALT, align 4
  %20 = call i64 @is_pressed(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* @INTERACT_ALT_KEY, align 4
  %24 = load i32, i32* %1, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %1, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* @OBS_KEY_META, align 4
  %28 = call i64 @is_pressed(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @INTERACT_COMMAND_KEY, align 4
  %32 = load i32, i32* %1, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %30, %26
  %35 = getelementptr inbounds %struct.obs_query_hotkeys_helper, %struct.obs_query_hotkeys_helper* %2, i32 0, i32 0
  %36 = load i32, i32* %1, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds %struct.obs_query_hotkeys_helper, %struct.obs_query_hotkeys_helper* %2, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %37, align 4
  %42 = getelementptr inbounds %struct.obs_query_hotkeys_helper, %struct.obs_query_hotkeys_helper* %2, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %42, align 4
  %47 = load i32, i32* @query_hotkey, align 4
  %48 = call i32 @enum_bindings(i32 %47, %struct.obs_query_hotkeys_helper* %2)
  ret void
}

declare dso_local i64 @is_pressed(i32) #1

declare dso_local i32 @enum_bindings(i32, %struct.obs_query_hotkeys_helper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
