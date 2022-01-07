; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_startup.c_StartupProcessMain.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_startup.c_StartupProcessMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGHUP = common dso_local global i32 0, align 4
@StartupProcSigHupHandler = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@StartupProcShutdownHandler = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@startupproc_quickdie = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@StartupProcSigUsr1Handler = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@StartupProcTriggerHandler = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@STANDBY_DEADLOCK_TIMEOUT = common dso_local global i32 0, align 4
@StandbyDeadLockHandler = common dso_local global i32 0, align 4
@STANDBY_TIMEOUT = common dso_local global i32 0, align 4
@StandbyTimeoutHandler = common dso_local global i32 0, align 4
@STANDBY_LOCK_TIMEOUT = common dso_local global i32 0, align 4
@StandbyLockTimeoutHandler = common dso_local global i32 0, align 4
@UnBlockSig = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StartupProcessMain() #0 {
  %1 = load i32, i32* @SIGHUP, align 4
  %2 = load i32, i32* @StartupProcSigHupHandler, align 4
  %3 = call i32 @pqsignal(i32 %1, i32 %2)
  %4 = load i32, i32* @SIGINT, align 4
  %5 = load i32, i32* @SIG_IGN, align 4
  %6 = call i32 @pqsignal(i32 %4, i32 %5)
  %7 = load i32, i32* @SIGTERM, align 4
  %8 = load i32, i32* @StartupProcShutdownHandler, align 4
  %9 = call i32 @pqsignal(i32 %7, i32 %8)
  %10 = load i32, i32* @SIGQUIT, align 4
  %11 = load i32, i32* @startupproc_quickdie, align 4
  %12 = call i32 @pqsignal(i32 %10, i32 %11)
  %13 = call i32 (...) @InitializeTimeouts()
  %14 = load i32, i32* @SIGPIPE, align 4
  %15 = load i32, i32* @SIG_IGN, align 4
  %16 = call i32 @pqsignal(i32 %14, i32 %15)
  %17 = load i32, i32* @SIGUSR1, align 4
  %18 = load i32, i32* @StartupProcSigUsr1Handler, align 4
  %19 = call i32 @pqsignal(i32 %17, i32 %18)
  %20 = load i32, i32* @SIGUSR2, align 4
  %21 = load i32, i32* @StartupProcTriggerHandler, align 4
  %22 = call i32 @pqsignal(i32 %20, i32 %21)
  %23 = load i32, i32* @SIGCHLD, align 4
  %24 = load i32, i32* @SIG_DFL, align 4
  %25 = call i32 @pqsignal(i32 %23, i32 %24)
  %26 = load i32, i32* @STANDBY_DEADLOCK_TIMEOUT, align 4
  %27 = load i32, i32* @StandbyDeadLockHandler, align 4
  %28 = call i32 @RegisterTimeout(i32 %26, i32 %27)
  %29 = load i32, i32* @STANDBY_TIMEOUT, align 4
  %30 = load i32, i32* @StandbyTimeoutHandler, align 4
  %31 = call i32 @RegisterTimeout(i32 %29, i32 %30)
  %32 = load i32, i32* @STANDBY_LOCK_TIMEOUT, align 4
  %33 = load i32, i32* @StandbyLockTimeoutHandler, align 4
  %34 = call i32 @RegisterTimeout(i32 %32, i32 %33)
  %35 = call i32 @PG_SETMASK(i32* @UnBlockSig)
  %36 = call i32 (...) @StartupXLOG()
  %37 = call i32 @proc_exit(i32 0)
  ret void
}

declare dso_local i32 @pqsignal(i32, i32) #1

declare dso_local i32 @InitializeTimeouts(...) #1

declare dso_local i32 @RegisterTimeout(i32, i32) #1

declare dso_local i32 @PG_SETMASK(i32*) #1

declare dso_local i32 @StartupXLOG(...) #1

declare dso_local i32 @proc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
