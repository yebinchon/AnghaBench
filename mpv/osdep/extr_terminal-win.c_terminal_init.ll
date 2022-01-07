; ModuleID = '/home/carl/AnghaBench/mpv/osdep/extr_terminal-win.c_terminal_init.c'
source_filename = "/home/carl/AnghaBench/mpv/osdep/extr_terminal-win.c_terminal_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@hSTDOUT = common dso_local global i32 0, align 4
@ENABLE_PROCESSED_OUTPUT = common dso_local global i32 0, align 4
@ENABLE_WRAP_AT_EOL_OUTPUT = common dso_local global i32 0, align 4
@hSTDERR = common dso_local global i32 0, align 4
@stdoutAttrs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @terminal_init() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* @hSTDOUT, align 4
  %4 = call i32 @GetConsoleMode(i32 %3, i32* %2)
  %5 = load i32, i32* @ENABLE_PROCESSED_OUTPUT, align 4
  %6 = load i32, i32* @ENABLE_WRAP_AT_EOL_OUTPUT, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* %2, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* @hSTDOUT, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @SetConsoleMode(i32 %10, i32 %11)
  %13 = load i32, i32* @hSTDERR, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @SetConsoleMode(i32 %13, i32 %14)
  %16 = load i32, i32* @hSTDOUT, align 4
  %17 = call i32 @GetConsoleScreenBufferInfo(i32 %16, %struct.TYPE_3__* %1)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* @stdoutAttrs, align 4
  ret void
}

declare dso_local i32 @GetConsoleMode(i32, i32*) #1

declare dso_local i32 @SetConsoleMode(i32, i32) #1

declare dso_local i32 @GetConsoleScreenBufferInfo(i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
