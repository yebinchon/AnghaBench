; ModuleID = '/home/carl/AnghaBench/micropython/ports/windows/extr_windows_mphal.c_mp_hal_stdio_mode_raw.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/windows/extr_windows_mphal.c_mp_hal_stdio_mode_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@std_in = common dso_local global i32 0, align 4
@orig_mode = common dso_local global i32 0, align 4
@ENABLE_ECHO_INPUT = common dso_local global i32 0, align 4
@ENABLE_LINE_INPUT = common dso_local global i32 0, align 4
@ENABLE_PROCESSED_INPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_hal_stdio_mode_raw() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @assure_stdin_handle()
  %3 = load i32, i32* @std_in, align 4
  %4 = call i32 @GetConsoleMode(i32 %3, i32* @orig_mode)
  %5 = load i32, i32* @orig_mode, align 4
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* @ENABLE_ECHO_INPUT, align 4
  %7 = xor i32 %6, -1
  %8 = load i32, i32* %1, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* @ENABLE_LINE_INPUT, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %1, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* @ENABLE_PROCESSED_INPUT, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %1, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* @std_in, align 4
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @SetConsoleMode(i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @assure_stdin_handle(...) #1

declare dso_local i32 @GetConsoleMode(i32, i32*) #1

declare dso_local i32 @SetConsoleMode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
