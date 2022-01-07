; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/extr_lib.c_eat_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/extr_lib.c_eat_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pipe = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"main test running as pid %d\0A\00", align 1
@SIGKILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eat_cpu(i32 ()* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32 ()*, align 8
  %4 = alloca %union.pipe, align 4
  %5 = alloca %union.pipe, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 ()* %0, i32 ()** %3, align 8
  %9 = call i32 (...) @pick_online_cpu()
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @FAIL_IF(i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @bind_to_cpu(i32 %14)
  %16 = call i32 @FAIL_IF(i32 %15)
  %17 = bitcast %union.pipe* %4 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pipe(i32 %18)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %57

22:                                               ; preds = %1
  %23 = bitcast %union.pipe* %5 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pipe(i32 %24)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 -1, i32* %2, align 4
  br label %57

28:                                               ; preds = %22
  %29 = call i32 (...) @fork()
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = getelementptr inbounds %union.pipe, %union.pipe* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %union.pipe, %union.pipe* %4, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @eat_cpu_child(i32 %34, i32 %36)
  %38 = call i32 @exit(i32 %37) #3
  unreachable

39:                                               ; preds = %28
  %40 = getelementptr inbounds %union.pipe, %union.pipe* %4, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %union.pipe, %union.pipe* %5, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @sync_with_child(i32 %41, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 -1, i32* %7, align 4
  br label %52

47:                                               ; preds = %39
  %48 = call i32 (...) @getpid()
  %49 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32 ()*, i32 ()** %3, align 8
  %51 = call i32 %50()
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %47, %46
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @SIGKILL, align 4
  %55 = call i32 @kill(i32 %53, i32 %54)
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %52, %27, %21
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @pick_online_cpu(...) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @bind_to_cpu(i32) #1

declare dso_local i32 @pipe(i32) #1

declare dso_local i32 @fork(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @eat_cpu_child(i32, i32) #1

declare dso_local i64 @sync_with_child(i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @kill(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
