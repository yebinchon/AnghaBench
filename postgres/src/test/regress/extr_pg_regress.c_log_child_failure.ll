; ModuleID = '/home/carl/AnghaBench/postgres/src/test/regress/extr_pg_regress.c_log_child_failure.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/regress/extr_pg_regress.c_log_child_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c" (test process exited with exit code %d)\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c" (test process was terminated by signal %d: %s)\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c" (test process exited with unrecognized status %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @log_child_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_child_failure(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i64 @WIFEXITED(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @WEXITSTATUS(i32 %8)
  %10 = call i32 (i32, i32, ...) @status(i32 %7, i32 %9)
  br label %28

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = call i64 @WIFSIGNALED(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @WTERMSIG(i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @WTERMSIG(i32 %19)
  %21 = call i32 @pg_strsignal(i32 %20)
  %22 = call i32 (i32, i32, ...) @status(i32 %16, i32 %18, i32 %21)
  br label %27

23:                                               ; preds = %11
  %24 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* %2, align 4
  %26 = call i32 (i32, i32, ...) @status(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %15
  br label %28

28:                                               ; preds = %27, %6
  ret void
}

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @status(i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @pg_strsignal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
