; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-hwbreak.c_trigger_tests.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-hwbreak.c_trigger_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTRACE_TRACEME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Can't be traced?\0A\00", align 1
@SIGUSR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @trigger_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trigger_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @PTRACE_TRACEME, align 4
  %4 = call i32 @ptrace(i32 %3, i32 0, i32* null, i32 0)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %56

9:                                                ; preds = %0
  %10 = call i32 (...) @getpid()
  %11 = load i32, i32* @SIGUSR1, align 4
  %12 = call i32 @kill(i32 %10, i32 %11)
  store i32 1, i32* %1, align 4
  br label %13

13:                                               ; preds = %20, %9
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ule i64 %15, 8
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @write_var(i32 %18)
  br label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %1, align 4
  %22 = shl i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %13

23:                                               ; preds = %13
  store i32 1, i32* %1, align 4
  br label %24

24:                                               ; preds = %31, %23
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ule i64 %26, 8
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @read_var(i32 %29)
  br label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %1, align 4
  %33 = shl i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %24

34:                                               ; preds = %24
  store i32 1, i32* %1, align 4
  br label %35

35:                                               ; preds = %42, %34
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ule i64 %37, 8
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @write_var(i32 %40)
  br label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %1, align 4
  %44 = shl i32 %43, 1
  store i32 %44, i32* %1, align 4
  br label %35

45:                                               ; preds = %35
  store i32 1, i32* %1, align 4
  br label %46

46:                                               ; preds = %53, %45
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ule i64 %48, 8
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @read_var(i32 %51)
  br label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %1, align 4
  %55 = shl i32 %54, 1
  store i32 %55, i32* %1, align 4
  br label %46

56:                                               ; preds = %7, %46
  ret void
}

declare dso_local i32 @ptrace(i32, i32, i32*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @write_var(i32) #1

declare dso_local i32 @read_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
