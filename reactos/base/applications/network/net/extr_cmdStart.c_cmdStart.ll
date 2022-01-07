; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdStart.c_cmdStart.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdStart.c_cmdStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i32] [i32 47, i32 104, i32 101, i32 108, i32 112, i32 0], align 4
@StdOut = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@MSG_START_SYNTAX = common dso_local global i32 0, align 4
@MSG_START_HELP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmdStart(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 (...) @EnumerateRunningServices()
  store i32 %10, i32* %3, align 4
  br label %40

11:                                               ; preds = %2
  store i32 2, i32* %6, align 4
  br label %12

12:                                               ; preds = %33, %11
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %12
  %17 = load i32**, i32*** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @_wcsicmp(i32* %21, i8* bitcast ([6 x i32]* @.str to i8*))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = call i32 @PrintMessageString(i32 4381)
  %26 = load i32, i32* @StdOut, align 4
  %27 = call i32 @ConPuts(i32 %26, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %28 = load i32, i32* @MSG_START_SYNTAX, align 4
  %29 = call i32 @PrintNetMessage(i32 %28)
  %30 = load i32, i32* @MSG_START_HELP, align 4
  %31 = call i32 @PrintNetMessage(i32 %30)
  store i32 1, i32* %3, align 4
  br label %40

32:                                               ; preds = %16
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %12

36:                                               ; preds = %12
  %37 = load i32, i32* %4, align 4
  %38 = load i32**, i32*** %5, align 8
  %39 = call i32 @StartOneService(i32 %37, i32** %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %24, %9
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @EnumerateRunningServices(...) #1

declare dso_local i64 @_wcsicmp(i32*, i8*) #1

declare dso_local i32 @PrintMessageString(i32) #1

declare dso_local i32 @ConPuts(i32, i8*) #1

declare dso_local i32 @PrintNetMessage(i32) #1

declare dso_local i32 @StartOneService(i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
