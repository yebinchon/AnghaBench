; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_basic_test.c_test_cpu_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_basic_test.c_test_cpu_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_SETSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_cpu_pointer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @sched_getaffinity(i32 0, i32 4, i32* %1)
  %5 = call i32 @CPU_ZERO(i32* %2)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %41, %0
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @CPU_SETSIZE, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %44

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @CPU_ISSET(i32 %11, i32* %1)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @CPU_SET(i32 %15, i32* %2)
  %17 = call i32 @sched_setaffinity(i32 0, i32 4, i32* %2)
  %18 = call i32 (...) @sched_getcpu()
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = call i32 (...) @rseq_current_cpu()
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = call i32 (...) @rseq_current_cpu_raw()
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = call i32 (...) @rseq_cpu_start()
  %34 = load i32, i32* %3, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @CPU_CLR(i32 %38, i32* %2)
  br label %40

40:                                               ; preds = %14, %10
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %6

44:                                               ; preds = %6
  %45 = call i32 @sched_setaffinity(i32 0, i32 4, i32* %1)
  ret void
}

declare dso_local i32 @sched_getaffinity(i32, i32, i32*) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i64 @CPU_ISSET(i32, i32*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i32 @sched_setaffinity(i32, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sched_getcpu(...) #1

declare dso_local i32 @rseq_current_cpu(...) #1

declare dso_local i32 @rseq_current_cpu_raw(...) #1

declare dso_local i32 @rseq_cpu_start(...) #1

declare dso_local i32 @CPU_CLR(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
