; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-hwbreak.c_ptrace_hwbreak.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-hwbreak.c_ptrace_hwbreak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@child_pid = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ptrace_hwbreak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptrace_hwbreak() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i64 (...) @fork()
  store i64 %5, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = call i32 (...) @trigger_tests()
  store i32 0, i32* %1, align 4
  br label %24

10:                                               ; preds = %0
  %11 = call i32 @wait(i32* null)
  %12 = load i64, i64* %2, align 8
  store i64 %12, i64* @child_pid, align 8
  %13 = call i32 (...) @get_dbginfo()
  %14 = call i32 (...) @hwbreak_present()
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @SKIP_IF(i32 %17)
  %19 = call i32 (...) @dawr_present()
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @launch_tests(i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = call i32 @wait(i32* null)
  %23 = load i32, i32* %3, align 4
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %10, %8
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i64 @fork(...) #1

declare dso_local i32 @trigger_tests(...) #1

declare dso_local i32 @wait(i32*) #1

declare dso_local i32 @get_dbginfo(...) #1

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @hwbreak_present(...) #1

declare dso_local i32 @dawr_present(...) #1

declare dso_local i32 @launch_tests(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
