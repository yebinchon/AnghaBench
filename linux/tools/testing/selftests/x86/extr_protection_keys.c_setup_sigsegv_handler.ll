; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_protection_keys.c_setup_sigsegv_handler.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_protection_keys.c_setup_sigsegv_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i64, i32, i32, i32, i64 }

@SIGSEGV = common dso_local global i32 0, align 4
@signal_handler = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@SA_SIGINFO = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_sigsegv_handler() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sigaction, align 8
  %4 = alloca %struct.sigaction, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @SIGSEGV, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 4
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @signal_handler, align 4
  %9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 3
  store i32 %8, i32* %9, align 8
  %10 = load i32, i32* @SIG_SETMASK, align 4
  %11 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 2
  %12 = call i32 @sigprocmask(i32 %10, i32 0, i32* %11)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @pkey_assert(i32 %15)
  %17 = load i32, i32* @SA_SIGINFO, align 4
  %18 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @sigaction(i32 %20, %struct.sigaction* %3, %struct.sigaction* %4)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* @SIGALRM, align 4
  %23 = call i32 @sigaction(i32 %22, %struct.sigaction* %3, %struct.sigaction* %4)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @pkey_assert(i32 %26)
  ret void
}

declare dso_local i32 @sigprocmask(i32, i32, i32*) #1

declare dso_local i32 @pkey_assert(i32) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
