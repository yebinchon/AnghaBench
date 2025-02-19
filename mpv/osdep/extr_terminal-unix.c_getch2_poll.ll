; ModuleID = '/home/carl/AnghaBench/mpv/osdep/extr_terminal-unix.c_getch2_poll.c'
source_filename = "/home/carl/AnghaBench/mpv/osdep/extr_terminal-unix.c_getch2_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@getch2_enabled = common dso_local global i32 0, align 4
@tty_in = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @getch2_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getch2_poll() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @getch2_enabled, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %17

5:                                                ; preds = %0
  %6 = load i32, i32* @tty_in, align 4
  %7 = call i64 @tcgetpgrp(i32 %6)
  %8 = call i64 (...) @getpgrp()
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = call i32 (...) @do_activate_getch2()
  br label %17

15:                                               ; preds = %5
  %16 = call i32 (...) @do_deactivate_getch2()
  br label %17

17:                                               ; preds = %4, %15, %13
  ret void
}

declare dso_local i64 @tcgetpgrp(i32) #1

declare dso_local i64 @getpgrp(...) #1

declare dso_local i32 @do_activate_getch2(...) #1

declare dso_local i32 @do_deactivate_getch2(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
