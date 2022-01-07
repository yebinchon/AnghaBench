; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/signal/extr_sigfuz.c_signal_fuzzer.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/signal/extr_sigfuz.c_signal_fuzzer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nthread = common dso_local global i32 0, align 4
@sigfuz_test = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Thread creation error\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Thread join error\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @signal_fuzzer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @signal_fuzzer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @nthread, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 4
  %7 = trunc i64 %6 to i32
  %8 = call i32* @malloc(i32 %7)
  store i32* %8, i32** %3, align 8
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %26, %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @nthread, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* @sigfuz_test, align 4
  %19 = bitcast i32* %1 to i8*
  %20 = call i32 @pthread_create(i32* %17, i32* null, i32 %18, i8* %19)
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = call i32 @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %13
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %9

29:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %46, %29
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* @nthread, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pthread_join(i32 %39, i32* null)
  store i32 %40, i32* %2, align 4
  %41 = load i32, i32* %2, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %34
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %1, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %1, align 4
  br label %30

49:                                               ; preds = %30
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @free(i32* %50)
  %52 = load i32, i32* @EXIT_SUCCESS, align 4
  ret i32 %52
}

declare dso_local i32* @malloc(i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
