; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_wait_error.c_wait_result_to_str.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_wait_error.c_wait_result_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"command not executable\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"command not found\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"child process exited with exit code %d\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"child process was terminated by signal %d: %s\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"child process exited with unrecognized status %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @wait_result_to_str(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [512 x i8], align 16
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @WIFEXITED(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @WEXITSTATUS(i32 %8)
  switch i32 %9, label %18 [
    i32 126, label %10
    i32 127, label %14
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %12 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %11, i32 512, i8* %12)
  br label %24

14:                                               ; preds = %7
  %15 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %16 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %15, i32 512, i8* %16)
  br label %24

18:                                               ; preds = %7
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %20 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @WEXITSTATUS(i32 %21)
  %23 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %19, i32 512, i8* %20, i32 %22)
  br label %24

24:                                               ; preds = %18, %14, %10
  br label %44

25:                                               ; preds = %1
  %26 = load i32, i32* %2, align 4
  %27 = call i64 @WIFSIGNALED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %31 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @WTERMSIG(i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @WTERMSIG(i32 %34)
  %36 = call i8* @pg_strsignal(i32 %35)
  %37 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %30, i32 512, i8* %31, i32 %33, i8* %36)
  br label %43

38:                                               ; preds = %25
  %39 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %40 = call i8* @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %41 = load i32, i32* %2, align 4
  %42 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %39, i32 512, i8* %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %29
  br label %44

44:                                               ; preds = %43, %24
  %45 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %46 = call i8* @pstrdup(i8* %45)
  ret i8* %46
}

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i8* @pg_strsignal(i32) #1

declare dso_local i8* @pstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
