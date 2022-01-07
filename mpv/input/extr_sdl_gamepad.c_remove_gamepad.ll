; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_sdl_gamepad.c_remove_gamepad.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_sdl_gamepad.c_remove_gamepad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_input_src = type { %struct.gamepad_priv* }
%struct.gamepad_priv = type { i32* }

@.str = private unnamed_addr constant [24 x i8] c"removed controller: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_input_src*, i32)* @remove_gamepad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_gamepad(%struct.mp_input_src* %0, i32 %1) #0 {
  %3 = alloca %struct.mp_input_src*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gamepad_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.mp_input_src* %0, %struct.mp_input_src** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.mp_input_src*, %struct.mp_input_src** %3, align 8
  %11 = getelementptr inbounds %struct.mp_input_src, %struct.mp_input_src* %10, i32 0, i32 0
  %12 = load %struct.gamepad_priv*, %struct.gamepad_priv** %11, align 8
  store %struct.gamepad_priv* %12, %struct.gamepad_priv** %5, align 8
  %13 = load %struct.gamepad_priv*, %struct.gamepad_priv** %5, align 8
  %14 = getelementptr inbounds %struct.gamepad_priv, %struct.gamepad_priv* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32* @SDL_GameControllerGetJoystick(i32* %16)
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @SDL_JoystickInstanceID(i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i32*, i32** %6, align 8
  %28 = call i8* @SDL_GameControllerName(i32* %27)
  store i8* %28, i8** %9, align 8
  %29 = load %struct.mp_input_src*, %struct.mp_input_src** %3, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @MP_INFO(%struct.mp_input_src* %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @SDL_GameControllerClose(i32* %32)
  %34 = load %struct.gamepad_priv*, %struct.gamepad_priv** %5, align 8
  %35 = getelementptr inbounds %struct.gamepad_priv, %struct.gamepad_priv* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %26, %22, %2
  ret void
}

declare dso_local i32* @SDL_GameControllerGetJoystick(i32*) #1

declare dso_local i32 @SDL_JoystickInstanceID(i32*) #1

declare dso_local i8* @SDL_GameControllerName(i32*) #1

declare dso_local i32 @MP_INFO(%struct.mp_input_src*, i8*, i8*) #1

declare dso_local i32 @SDL_GameControllerClose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
