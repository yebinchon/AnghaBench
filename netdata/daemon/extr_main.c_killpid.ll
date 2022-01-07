; ModuleID = '/home/carl/AnghaBench/netdata/daemon/extr_main.c_killpid.c'
source_filename = "/home/carl/AnghaBench/netdata/daemon/extr_main.c_killpid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D_EXIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Request to kill pid %d\00", align 1
@errno = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Cannot kill pid %d, but I do not have enough permissions.\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Cannot kill pid %d, but I received an error.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @killpid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @D_EXIT, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @debug(i32 %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %6)
  store i32 0, i32* @errno, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @SIGTERM, align 4
  %10 = call i32 @kill(i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load i32, i32* @errno, align 4
  switch i32 %14, label %20 [
    i32 128, label %15
    i32 129, label %17
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %26

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  br label %23

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %17
  br label %24

24:                                               ; preds = %23, %1
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %15
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @debug(i32, i8*, i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
