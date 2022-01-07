; ModuleID = '/home/carl/AnghaBench/radare2/shlr/qnx/src/extr_sigutil.c_do_target_signal_to_host.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/qnx/src/extr_sigutil.c_do_target_signal_to_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXC_ARITHMETIC = common dso_local global i32 0, align 4
@EXC_BAD_ACCESS = common dso_local global i32 0, align 4
@EXC_BAD_INSTRUCTION = common dso_local global i32 0, align 4
@EXC_BREAKPOINT = common dso_local global i32 0, align 4
@EXC_EMULATION = common dso_local global i32 0, align 4
@EXC_SOFTWARE = common dso_local global i32 0, align 4
@REALTIME_HI = common dso_local global i32 0, align 4
@REALTIME_LO = common dso_local global i32 0, align 4
@SIGABRT = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@SIGCANCEL = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIGCLD = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4
@SIGDANGER = common dso_local global i32 0, align 4
@SIGEMT = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@SIGGRANT = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@SIGINFO = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@SIGLOST = common dso_local global i32 0, align 4
@SIGLWP = common dso_local global i32 0, align 4
@SIGMSG = common dso_local global i32 0, align 4
@SIGPHONE = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIGPOLL = common dso_local global i32 0, align 4
@SIGPRIO = common dso_local global i32 0, align 4
@SIGPROF = common dso_local global i32 0, align 4
@SIGPWR = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGRETRACT = common dso_local global i32 0, align 4
@SIGSAK = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@SIGSOUND = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i32 0, align 4
@SIGSYS = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@SIGTTIN = common dso_local global i32 0, align 4
@SIGTTOU = common dso_local global i32 0, align 4
@SIGURG = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@SIGVTALRM = common dso_local global i32 0, align 4
@SIGWAITING = common dso_local global i32 0, align 4
@SIGWINCH = common dso_local global i32 0, align 4
@SIGWIND = common dso_local global i32 0, align 4
@SIGXCPU = common dso_local global i32 0, align 4
@SIGXFSZ = common dso_local global i32 0, align 4
@TARGET_SIGNAL_REALTIME_127 = common dso_local global i32 0, align 4
@TARGET_SIGNAL_REALTIME_32 = common dso_local global i32 0, align 4
@TARGET_SIGNAL_REALTIME_33 = common dso_local global i32 0, align 4
@TARGET_SIGNAL_REALTIME_63 = common dso_local global i32 0, align 4
@TARGET_SIGNAL_REALTIME_64 = common dso_local global i32 0, align 4
@_NSIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @do_target_signal_to_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_target_signal_to_host(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %11 [
    i32 174, label %10
  ]

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %13

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %11, %10
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
