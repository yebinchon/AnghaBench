; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_parallel.c_WaitForWorkers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_parallel.c_WaitForWorkers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NO_SLOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WaitForWorkers(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, 130
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @IsEveryWorkerIdle(i32* %11)
  %13 = icmp ne i64 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @Assert(i32 %15)
  store i32 1, i32* %7, align 4
  br label %17

17:                                               ; preds = %10, %3
  br label %18

18:                                               ; preds = %47, %17
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @ListenToWorkers(i32* %19, i32* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 131
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %48

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %28, %18
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %47 [
    i32 129, label %31
    i32 130, label %32
    i32 128, label %34
    i32 131, label %41
  ]

31:                                               ; preds = %29
  br label %48

32:                                               ; preds = %29
  %33 = call i32 @Assert(i32 0)
  br label %47

34:                                               ; preds = %29
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @GetIdleWorker(i32* %35)
  %37 = load i32, i32* @NO_SLOT, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %48

40:                                               ; preds = %34
  br label %47

41:                                               ; preds = %29
  %42 = load i32*, i32** %5, align 8
  %43 = call i64 @IsEveryWorkerIdle(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %48

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %29, %46, %40, %32
  store i32 1, i32* %7, align 4
  br label %18

48:                                               ; preds = %45, %39, %31, %27
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @IsEveryWorkerIdle(i32*) #1

declare dso_local i64 @ListenToWorkers(i32*, i32*, i32) #1

declare dso_local i32 @GetIdleWorker(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
