; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_graphics-hook.h_capture_should_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_graphics-hook.h_capture_should_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pipe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @capture_should_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @capture_should_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @capture_active()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %0
  %5 = call i64 (...) @capture_restarted()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = call i64 (...) @capture_alive()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = call i32 @ipc_pipe_client_valid(i32* @pipe)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = call i32 (...) @init_pipe()
  br label %15

15:                                               ; preds = %13, %10
  store i32 1, i32* %1, align 4
  br label %18

16:                                               ; preds = %7
  br label %17

17:                                               ; preds = %16, %4, %0
  store i32 0, i32* %1, align 4
  br label %18

18:                                               ; preds = %17, %15
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i32 @capture_active(...) #1

declare dso_local i64 @capture_restarted(...) #1

declare dso_local i64 @capture_alive(...) #1

declare dso_local i32 @ipc_pipe_client_valid(i32*) #1

declare dso_local i32 @init_pipe(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
