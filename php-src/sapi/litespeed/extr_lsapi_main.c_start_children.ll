; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapi_main.c_start_children.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapi_main.c_start_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i64, i32 }

@litespeed_cleanup = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Can't set signals\00", align 1
@s_stop = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"php (pre-forking)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_children(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sigaction, align 8
  %4 = alloca %struct.sigaction, align 8
  %5 = alloca %struct.sigaction, align 8
  %6 = alloca %struct.sigaction, align 8
  %7 = alloca %struct.sigaction, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %8, align 4
  %11 = call i32 (...) @setsid()
  %12 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 2
  %13 = call i32 @sigemptyset(i32* %12)
  %14 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @litespeed_cleanup, align 4
  %16 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* @SIGTERM, align 4
  %18 = call i64 @sigaction(i32 %17, %struct.sigaction* %3, %struct.sigaction* %4)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @SIGINT, align 4
  %22 = call i64 @sigaction(i32 %21, %struct.sigaction* %3, %struct.sigaction* %6)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @SIGUSR1, align 4
  %26 = call i64 @sigaction(i32 %25, %struct.sigaction* %3, %struct.sigaction* %7)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @SIGQUIT, align 4
  %30 = call i64 @sigaction(i32 %29, %struct.sigaction* %3, %struct.sigaction* %5)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %24, %20, %1
  %33 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @exit(i32 1) #3
  unreachable

35:                                               ; preds = %28
  store i64 0, i64* @s_stop, align 8
  br label %36

36:                                               ; preds = %35, %69
  br label %37

37:                                               ; preds = %64, %36
  %38 = load i64, i64* @s_stop, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %2, align 4
  %43 = icmp slt i32 %41, %42
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi i1 [ false, %37 ], [ %43, %40 ]
  br i1 %45, label %46, label %65

46:                                               ; preds = %44
  %47 = call i32 (...) @fork()
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  switch i32 %48, label %61 [
    i32 0, label %49
    i32 -1, label %58
  ]

49:                                               ; preds = %46
  %50 = load i32, i32* @SIGTERM, align 4
  %51 = call i64 @sigaction(i32 %50, %struct.sigaction* %4, %struct.sigaction* null)
  %52 = load i32, i32* @SIGQUIT, align 4
  %53 = call i64 @sigaction(i32 %52, %struct.sigaction* %5, %struct.sigaction* null)
  %54 = load i32, i32* @SIGINT, align 4
  %55 = call i64 @sigaction(i32 %54, %struct.sigaction* %6, %struct.sigaction* null)
  %56 = load i32, i32* @SIGUSR1, align 4
  %57 = call i64 @sigaction(i32 %56, %struct.sigaction* %7, %struct.sigaction* null)
  ret void

58:                                               ; preds = %46
  %59 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i32 @exit(i32 1) #3
  unreachable

61:                                               ; preds = %46
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %61
  br label %37

65:                                               ; preds = %44
  %66 = load i64, i64* @s_stop, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %73

69:                                               ; preds = %65
  %70 = call i32 @wait(i32* %9)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %8, align 4
  br label %36

73:                                               ; preds = %68
  %74 = call i32 (...) @getpgrp()
  %75 = sub nsw i32 0, %74
  %76 = load i32, i32* @SIGUSR1, align 4
  %77 = call i32 @kill(i32 %75, i32 %76)
  %78 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @setsid(...) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fork(...) #1

declare dso_local i32 @wait(i32*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @getpgrp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
