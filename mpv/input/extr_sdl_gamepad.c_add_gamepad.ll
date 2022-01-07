; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_sdl_gamepad.c_add_gamepad.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_sdl_gamepad.c_add_gamepad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_input_src = type { %struct.gamepad_priv* }
%struct.gamepad_priv = type { i32* }

@.str = private unnamed_addr constant [36 x i8] c"can't add more than one controller\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"added controller: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_input_src*, i32)* @add_gamepad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_gamepad(%struct.mp_input_src* %0, i32 %1) #0 {
  %3 = alloca %struct.mp_input_src*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gamepad_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store %struct.mp_input_src* %0, %struct.mp_input_src** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mp_input_src*, %struct.mp_input_src** %3, align 8
  %9 = getelementptr inbounds %struct.mp_input_src, %struct.mp_input_src* %8, i32 0, i32 0
  %10 = load %struct.gamepad_priv*, %struct.gamepad_priv** %9, align 8
  store %struct.gamepad_priv* %10, %struct.gamepad_priv** %5, align 8
  %11 = load %struct.gamepad_priv*, %struct.gamepad_priv** %5, align 8
  %12 = getelementptr inbounds %struct.gamepad_priv, %struct.gamepad_priv* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.mp_input_src*, %struct.mp_input_src** %3, align 8
  %17 = call i32 @MP_WARN(%struct.mp_input_src* %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %37

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @SDL_IsGameController(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = call i32* @SDL_GameControllerOpen(i32 %23)
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load i32*, i32** %6, align 8
  %29 = call i8* @SDL_GameControllerName(i32* %28)
  store i8* %29, i8** %7, align 8
  %30 = load %struct.mp_input_src*, %struct.mp_input_src** %3, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @MP_INFO(%struct.mp_input_src* %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.gamepad_priv*, %struct.gamepad_priv** %5, align 8
  %35 = getelementptr inbounds %struct.gamepad_priv, %struct.gamepad_priv* %34, i32 0, i32 0
  store i32* %33, i32** %35, align 8
  br label %37

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %15, %27, %36, %18
  ret void
}

declare dso_local i32 @MP_WARN(%struct.mp_input_src*, i8*) #1

declare dso_local i64 @SDL_IsGameController(i32) #1

declare dso_local i32* @SDL_GameControllerOpen(i32) #1

declare dso_local i8* @SDL_GameControllerName(i32*) #1

declare dso_local i32 @MP_INFO(%struct.mp_input_src*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
