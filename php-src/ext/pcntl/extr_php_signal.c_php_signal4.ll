; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcntl/extr_php_signal.c_php_signal4.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcntl/extr_php_signal.c_php_signal4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32*, i32*, i32, i32 }

@SIG_ERR = common dso_local global i64 0, align 8
@SA_INTERRUPT = common dso_local global i32 0, align 4
@SA_RESTART = common dso_local global i32 0, align 4
@SA_SIGINFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @php_signal4(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sigaction, align 8
  %11 = alloca %struct.sigaction, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %10, i32 0, i32 0
  store i32* %12, i32** %13, align 8
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %10, i32 0, i32 3
  %18 = call i32 @sigfillset(i32* %17)
  br label %22

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %10, i32 0, i32 3
  %21 = call i32 @sigemptyset(i32* %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %10, i32 0, i32 2
  store i32 0, i32* %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  br label %28

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %26
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @zend_sigaction(i32 %29, %struct.sigaction* %10, %struct.sigaction* %11)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i64, i64* @SIG_ERR, align 8
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %5, align 8
  br label %38

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %11, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %5, align 8
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32*, i32** %5, align 8
  ret i32* %39
}

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i64 @zend_sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
