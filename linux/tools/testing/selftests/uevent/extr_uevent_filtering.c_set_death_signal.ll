; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/uevent/extr_uevent_filtering.c_set_death_signal.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/uevent/extr_uevent_filtering.c_set_death_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PR_SET_PDEATHSIG = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_death_signal() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @PR_SET_PDEATHSIG, align 4
  %6 = load i32, i32* @SIGKILL, align 4
  %7 = call i32 @prctl(i32 %5, i32 %6, i32 0, i32 0, i32 0)
  store i32 %7, i32* %2, align 4
  %8 = call i32 (...) @getppid()
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %0
  %12 = call i32 (...) @getpid()
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SIGKILL, align 4
  %15 = call i32 @kill(i32 %13, i32 %14)
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %11, %0
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 -1, i32* %1, align 4
  br label %21

20:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @prctl(i32, i32, i32, i32, i32) #1

declare dso_local i32 @getppid(...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @kill(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
