; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_xfork.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_xfork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGHUP = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@oldsighup = common dso_local global i8* null, align 8
@SIGTSTP = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@oldsigtstp = common dso_local global i8* null, align 8
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@F_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xfork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfork(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @fork()
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i32, i32* @SIGHUP, align 4
  %9 = load i32, i32* @SIG_IGN, align 4
  %10 = call i8* @signal(i32 %8, i32 %9)
  store i8* %10, i8** @oldsighup, align 8
  %11 = load i32, i32* @SIGTSTP, align 4
  %12 = load i32, i32* @SIG_DFL, align 4
  %13 = call i8* @signal(i32 %11, i32 %12)
  store i8* %13, i8** @oldsigtstp, align 8
  br label %38

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %14
  %18 = load i32, i32* @SIGHUP, align 4
  %19 = load i32, i32* @SIG_DFL, align 4
  %20 = call i8* @signal(i32 %18, i32 %19)
  %21 = load i32, i32* @SIGINT, align 4
  %22 = load i32, i32* @SIG_DFL, align 4
  %23 = call i8* @signal(i32 %21, i32 %22)
  %24 = load i32, i32* @SIGQUIT, align 4
  %25 = load i32, i32* @SIG_DFL, align 4
  %26 = call i8* @signal(i32 %24, i32 %25)
  %27 = load i32, i32* @SIGTSTP, align 4
  %28 = load i32, i32* @SIG_DFL, align 4
  %29 = call i8* @signal(i32 %27, i32 %28)
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @F_NOWAIT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %17
  %35 = call i32 (...) @setsid()
  br label %36

36:                                               ; preds = %34, %17
  br label %37

37:                                               ; preds = %36, %14
  br label %38

38:                                               ; preds = %37, %7
  %39 = load i32, i32* %3, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @fork(...) #1

declare dso_local i8* @signal(i32, i32) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
