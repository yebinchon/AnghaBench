; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/extr_utils.c_pick_online_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/extr_utils.c_pick_online_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"sched_getaffinity\00", align 1
@CPU_SETSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"No cpus in affinity mask?!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pick_online_cpu() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @CPU_ZERO(i32* %2)
  %5 = call i64 @sched_getaffinity(i32 0, i32 4, i32* %2)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %42

9:                                                ; preds = %0
  store i32 8, i32* %3, align 4
  br label %10

10:                                               ; preds = %21, %9
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @CPU_SETSIZE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @CPU_ISSET(i32 %15, i32* %2)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  store i32 %19, i32* %1, align 4
  br label %42

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 8
  store i32 %23, i32* %3, align 4
  br label %10

24:                                               ; preds = %10
  %25 = load i32, i32* @CPU_SETSIZE, align 4
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %37, %24
  %28 = load i32, i32* %3, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @CPU_ISSET(i32 %31, i32* %2)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  store i32 %35, i32* %1, align 4
  br label %42

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %3, align 4
  br label %27

40:                                               ; preds = %27
  %41 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %42

42:                                               ; preds = %40, %34, %18, %7
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i64 @sched_getaffinity(i32, i32, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @CPU_ISSET(i32, i32*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
