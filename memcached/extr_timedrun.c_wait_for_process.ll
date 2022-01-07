; ModuleID = '/home/carl/AnghaBench/memcached/extr_timedrun.c_wait_for_process.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_timedrun.c_wait_for_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i64, i32 }

@EX_SOFTWARE = common dso_local global i32 0, align 4
@signal_handler = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@caught_sig = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Timeout.. killing the process\0A\00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"lost child when trying to kill\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @wait_for_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_process(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sigaction, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %9 = load i32, i32* @EX_SOFTWARE, align 4
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* @signal_handler, align 4
  %11 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 1
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @SIGALRM, align 4
  %14 = call i32 @sigaction(i32 %13, %struct.sigaction* %6, i32* null)
  %15 = load i32, i32* @SIGHUP, align 4
  %16 = call i32 @sigaction(i32 %15, %struct.sigaction* %6, i32* null)
  %17 = load i32, i32* @SIGINT, align 4
  %18 = call i32 @sigaction(i32 %17, %struct.sigaction* %6, i32* null)
  %19 = load i32, i32* @SIGUSR1, align 4
  %20 = call i32 @sigaction(i32 %19, %struct.sigaction* %6, i32* null)
  %21 = load i32, i32* @SIGTERM, align 4
  %22 = call i32 @sigaction(i32 %21, %struct.sigaction* %6, i32* null)
  %23 = load i32, i32* @SIGPIPE, align 4
  %24 = call i32 @sigaction(i32 %23, %struct.sigaction* %6, i32* null)
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %76, %1
  %26 = load i64, i64* %2, align 8
  %27 = call i64 @waitpid(i64 %26, i32* %4, i32 0)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %2, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @WIFEXITED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @WEXITSTATUS(i32 %36)
  br label %42

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @WTERMSIG(i32 %39)
  %41 = or i32 128, %40
  br label %42

42:                                               ; preds = %38, %35
  %43 = phi i32 [ %37, %35 ], [ %41, %38 ]
  store i32 %43, i32* %3, align 4
  br label %79

44:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  %45 = load i32, i32* %5, align 4
  switch i32 %45, label %64 [
    i32 0, label %46
    i32 1, label %62
  ]

46:                                               ; preds = %44
  %47 = load i32, i32* @caught_sig, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @caught_sig, align 4
  br label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @SIGTERM, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* @caught_sig, align 4
  %56 = load i32, i32* @SIGALRM, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @stderr, align 4
  %60 = call i32 @fprintf(i32 %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %53
  br label %66

62:                                               ; preds = %44
  %63 = load i32, i32* @SIGTERM, align 4
  store i32 %63, i32* %8, align 4
  br label %66

64:                                               ; preds = %44
  %65 = load i32, i32* @SIGKILL, align 4
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %64, %62, %61
  %67 = load i64, i64* %2, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i64 @kill(i64 %67, i32 %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = call i32 @perror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %66
  %74 = call i32 @alarm(i32 5)
  br label %75

75:                                               ; preds = %73
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %25

79:                                               ; preds = %42
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @kill(i64, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @alarm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
