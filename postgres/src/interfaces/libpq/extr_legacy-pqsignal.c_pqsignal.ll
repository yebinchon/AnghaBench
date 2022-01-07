; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_legacy-pqsignal.c_pqsignal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_legacy-pqsignal.c_pqsignal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i32 }

@SIGALRM = common dso_local global i32 0, align 4
@SA_RESTART = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i32 0, align 4
@SA_NOCLDSTOP = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqsignal(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sigaction, align 4
  %7 = alloca %struct.sigaction, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 2
  %11 = call i32 @sigemptyset(i32* %10)
  %12 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SIGALRM, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @SA_RESTART, align 4
  %18 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %17
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @sigaction(i32 %22, %struct.sigaction* %6, %struct.sigaction* %7)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @SIG_ERR, align 4
  store i32 %26, i32* %3, align 4
  br label %30

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %25
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
