; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_param_test.c_set_signal_handler.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_param_test.c_set_signal_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i64, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"sigemptyset\00", align 1
@test_signal_interrupt_handler = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"sigaction\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Signal handler set for SIGUSR1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @set_signal_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_signal_handler() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sigaction, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %5 = call i32 @sigemptyset(i32* %4)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* %1, align 4
  br label %27

11:                                               ; preds = %0
  %12 = load i32, i32* @test_signal_interrupt_handler, align 4
  %13 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 1
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @SIGUSR1, align 4
  %18 = call i32 @sigaction(i32 %17, %struct.sigaction* %3, i32* null)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %2, align 4
  store i32 %23, i32* %1, align 4
  br label %27

24:                                               ; preds = %11
  %25 = call i32 @printf_verbose(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* %2, align 4
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %24, %21, %8
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @printf_verbose(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
