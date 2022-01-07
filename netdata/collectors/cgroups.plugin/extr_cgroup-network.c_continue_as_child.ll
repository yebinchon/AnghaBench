; ModuleID = '/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_cgroup-network.c_continue_as_child.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_cgroup-network.c_continue_as_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"fork() failed\00", align 1
@WUNTRACED = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @continue_as_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @continue_as_child() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = call i64 (...) @fork()
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %0
  %10 = load i64, i64* %1, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  ret void

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %33, %13
  %15 = load i64, i64* %1, align 8
  %16 = load i32, i32* @WUNTRACED, align 4
  %17 = call i64 @waitpid(i64 %15, i32* %2, i32 %16)
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* %1, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %14
  %22 = load i32, i32* %2, align 4
  %23 = call i64 @WIFSTOPPED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = call i64 (...) @getpid()
  %27 = load i32, i32* @SIGSTOP, align 4
  %28 = call i32 @kill(i64 %26, i32 %27)
  %29 = load i64, i64* %1, align 8
  %30 = load i32, i32* @SIGCONT, align 4
  %31 = call i32 @kill(i64 %29, i32 %30)
  br label %33

32:                                               ; preds = %21, %14
  br label %34

33:                                               ; preds = %25
  br label %14

34:                                               ; preds = %32
  %35 = load i32, i32* %2, align 4
  %36 = call i64 @WIFEXITED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @WEXITSTATUS(i32 %39)
  %41 = call i32 @exit(i32 %40) #3
  unreachable

42:                                               ; preds = %34
  %43 = load i32, i32* %2, align 4
  %44 = call i64 @WIFSIGNALED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = call i64 (...) @getpid()
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @WTERMSIG(i32 %48)
  %50 = call i32 @kill(i64 %47, i32 %49)
  br label %51

51:                                               ; preds = %46, %42
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* @EXIT_FAILURE, align 4
  %54 = call i32 @exit(i32 %53) #3
  unreachable
}

declare dso_local i64 @fork(...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i64 @WIFSTOPPED(i32) #1

declare dso_local i32 @kill(i64, i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @WIFEXITED(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
