; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_setdebug.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_setdebug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"%s: bad debugging value.\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@code = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@SO_DEBUG = common dso_local global i32 0, align 4
@options = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Debugging %s (debug=%d).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setdebug(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = load i8**, i8*** %4, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 1
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @atoi(i8* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load i8**, i8*** %4, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* @stdout, align 4
  %21 = call i32 @fflush(i32 %20)
  store i32 -1, i32* @code, align 4
  br label %51

22:                                               ; preds = %8
  br label %28

23:                                               ; preds = %2
  %24 = load i32, i32* @debug, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %23, %22
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* @debug, align 4
  %30 = load i32, i32* @debug, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @SO_DEBUG, align 4
  %34 = load i32, i32* @options, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* @options, align 4
  br label %41

36:                                               ; preds = %28
  %37 = load i32, i32* @SO_DEBUG, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* @options, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* @options, align 4
  br label %41

41:                                               ; preds = %36, %32
  %42 = load i32, i32* @debug, align 4
  %43 = call i8* @onoff(i32 %42)
  %44 = load i32, i32* @debug, align 4
  %45 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32 %44)
  %46 = load i32, i32* @stdout, align 4
  %47 = call i32 @fflush(i32 %46)
  %48 = load i32, i32* @debug, align 4
  %49 = icmp sgt i32 %48, 0
  %50 = zext i1 %49 to i32
  store i32 %50, i32* @code, align 4
  br label %51

51:                                               ; preds = %41, %15
  ret void
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i8* @onoff(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
