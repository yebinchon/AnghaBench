; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-hwbreak.c_set_breakpoint_addr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-hwbreak.c_set_breakpoint_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTRACE_SET_DEBUGREG = common dso_local global i32 0, align 4
@child_pid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Can't set breakpoint addr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @set_breakpoint_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_breakpoint_addr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @PTRACE_SET_DEBUGREG, align 4
  %5 = load i32, i32* @child_pid, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @ptrace(i32 %4, i32 %5, i32 0, i8* %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @exit(i32 -1) #3
  unreachable

13:                                               ; preds = %1
  ret void
}

declare dso_local i32 @ptrace(i32, i32, i32, i8*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
