; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_hotkey_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_hotkey_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.python_obs_callback = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@defer_hotkey_pressed = common dso_local global i32 0, align 4
@defer_hotkey_unpressed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i32)* @hotkey_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hotkey_callback(i8* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.python_obs_callback*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.python_obs_callback*
  store %struct.python_obs_callback* %11, %struct.python_obs_callback** %9, align 8
  %12 = load %struct.python_obs_callback*, %struct.python_obs_callback** %9, align 8
  %13 = getelementptr inbounds %struct.python_obs_callback, %struct.python_obs_callback* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %34

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* @defer_hotkey_pressed, align 4
  %23 = load %struct.python_obs_callback*, %struct.python_obs_callback** %9, align 8
  %24 = call i32 @defer_call_post(i32 %22, %struct.python_obs_callback* %23)
  br label %29

25:                                               ; preds = %18
  %26 = load i32, i32* @defer_hotkey_unpressed, align 4
  %27 = load %struct.python_obs_callback*, %struct.python_obs_callback** %9, align 8
  %28 = call i32 @defer_call_post(i32 %26, %struct.python_obs_callback* %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @UNUSED_PARAMETER(i32* %30)
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @UNUSED_PARAMETER(i32* %32)
  br label %34

34:                                               ; preds = %29, %17
  ret void
}

declare dso_local i32 @defer_call_post(i32, %struct.python_obs_callback*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
