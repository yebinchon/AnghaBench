; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/math/extr_vmx_signal.c_signal_vmx_c.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/math/extr_vmx_signal.c_signal_vmx_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32 }

@signal_vmx_sig = common dso_local global i32 0, align 4
@SA_SIGINFO = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@varray = common dso_local global i32** null, align 8
@threads_starting = common dso_local global i32 0, align 4
@running = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @signal_vmx_c(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.sigaction, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i32, i32* @signal_vmx_sig, align 4
  %9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @SA_SIGINFO, align 4
  %11 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @SIGUSR1, align 4
  %13 = call i64 @sigaction(i32 %12, %struct.sigaction* %7, i32* null)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  store i8* %17, i8** %2, align 8
  br label %50

18:                                               ; preds = %1
  %19 = call i32 (...) @pthread_self()
  %20 = call i32 @srand(i32 %19)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %42, %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 12
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %38, %24
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = call i32 (...) @rand()
  %30 = load i32**, i32*** @varray, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %29, i32* %37, align 4
  br label %38

38:                                               ; preds = %28
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %25

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %21

45:                                               ; preds = %21
  %46 = load i32**, i32*** @varray, align 8
  %47 = call i64 @preempt_vmx(i32** %46, i32* @threads_starting, i32* @running)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %2, align 8
  br label %50

50:                                               ; preds = %45, %16
  %51 = load i8*, i8** %2, align 8
  ret i8* %51
}

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @rand(...) #1

declare dso_local i64 @preempt_vmx(i32**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
