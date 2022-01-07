; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/tm/extr_tm-signal-msr-resv.c_tm_signal_msr_resv.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/tm/extr_tm-signal-msr-resv.c_tm_signal_msr_resv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i32 }

@signal_usr1 = common dso_local global i32 0, align 4
@SA_SIGINFO = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"sigaction sigusr1\00", align 1
@SIGSEGV = common dso_local global i32 0, align 4
@signal_segv = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tm_signal_msr_resv() #0 {
  %1 = alloca %struct.sigaction, align 4
  %2 = call i32 (...) @have_htm()
  %3 = icmp ne i32 %2, 0
  %4 = xor i1 %3, true
  %5 = zext i1 %4 to i32
  %6 = call i32 @SKIP_IF(i32 %5)
  %7 = load i32, i32* @signal_usr1, align 4
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 2
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1
  %10 = call i32 @sigemptyset(i32* %9)
  %11 = load i32, i32* @SA_SIGINFO, align 4
  %12 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @SIGUSR1, align 4
  %14 = call i64 @sigaction(i32 %13, %struct.sigaction* %1, i32* null)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @exit(i32 1) #3
  unreachable

19:                                               ; preds = %0
  %20 = load i32, i32* @SIGSEGV, align 4
  %21 = load i32, i32* @signal_segv, align 4
  %22 = call i64 @signal(i32 %20, i32 %21)
  %23 = load i64, i64* @SIG_ERR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 @exit(i32 1) #3
  unreachable

27:                                               ; preds = %19
  %28 = load i32, i32* @SIGUSR1, align 4
  %29 = call i32 @raise(i32 %28)
  ret i32 1
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @have_htm(...) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i32 @raise(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
