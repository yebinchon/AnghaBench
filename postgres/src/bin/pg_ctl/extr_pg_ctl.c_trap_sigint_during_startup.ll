; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_trap_sigint_during_startup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_trap_sigint_during_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@postmasterPID = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%s: could not send stop signal (PID: %ld): %s\0A\00", align 1
@progname = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @trap_sigint_during_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trap_sigint_during_startup(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @postmasterPID, align 4
  %4 = icmp ne i32 %3, -1
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load i32, i32* @postmasterPID, align 4
  %7 = load i32, i32* @SIGINT, align 4
  %8 = call i64 @kill(i32 %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @progname, align 4
  %13 = load i32, i32* @postmasterPID, align 4
  %14 = load i32, i32* @errno, align 4
  %15 = call i32 @strerror(i32 %14)
  %16 = call i32 @write_stderr(i32 %11, i32 %12, i32 %13, i32 %15)
  br label %17

17:                                               ; preds = %10, %5
  br label %18

18:                                               ; preds = %17, %1
  %19 = load i32, i32* @SIGINT, align 4
  %20 = load i32, i32* @SIG_DFL, align 4
  %21 = call i32 @pqsignal(i32 %19, i32 %20)
  %22 = load i32, i32* @SIGINT, align 4
  %23 = call i32 @raise(i32 %22)
  ret void
}

declare dso_local i64 @kill(i32, i32) #1

declare dso_local i32 @write_stderr(i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @pqsignal(i32, i32) #1

declare dso_local i32 @raise(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
