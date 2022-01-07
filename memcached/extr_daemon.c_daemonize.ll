; ModuleID = '/home/carl/AnghaBench/memcached/extr_daemon.c_daemonize.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_daemon.c_daemonize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"chdir\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"dup2 stdin\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"dup2 stdout\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"dup2 stderr\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"close\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @daemonize(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = call i32 (...) @fork()
  switch i32 %7, label %10 [
    i32 -1, label %8
    i32 0, label %9
  ]

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %67

9:                                                ; preds = %2
  br label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EXIT_SUCCESS, align 4
  %12 = call i32 @_exit(i32 %11) #3
  unreachable

13:                                               ; preds = %9
  %14 = call i32 (...) @setsid()
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %67

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = call i64 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %67

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %17
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %66

29:                                               ; preds = %26
  %30 = load i32, i32* @O_RDWR, align 4
  %31 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 0)
  store i32 %31, i32* %6, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %66

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @STDIN_FILENO, align 4
  %36 = call i64 @dup2(i32 %34, i32 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %67

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @STDOUT_FILENO, align 4
  %43 = call i64 @dup2(i32 %41, i32 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %67

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @STDERR_FILENO, align 4
  %50 = call i64 @dup2(i32 %48, i32 %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %67

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @STDERR_FILENO, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @close(i32 %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %67

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %54
  br label %66

66:                                               ; preds = %65, %29, %26
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %62, %52, %45, %38, %23, %16, %8
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @fork(...) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @setsid(...) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @dup2(i32, i32) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
