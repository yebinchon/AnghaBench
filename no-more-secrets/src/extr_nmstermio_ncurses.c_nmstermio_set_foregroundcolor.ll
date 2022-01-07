; ModuleID = '/home/carl/AnghaBench/no-more-secrets/src/extr_nmstermio_ncurses.c_nmstermio_set_foregroundcolor.c'
source_filename = "/home/carl/AnghaBench/no-more-secrets/src/extr_nmstermio_ncurses.c_nmstermio_set_foregroundcolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"white\00", align 1
@COLOR_WHITE = common dso_local global i32 0, align 4
@foregroundColor = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"yellow\00", align 1
@COLOR_YELLOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@COLOR_BLACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"magenta\00", align 1
@COLOR_MAGENTA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@COLOR_BLUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@COLOR_GREEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@COLOR_RED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"cyan\00", align 1
@COLOR_CYAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nmstermio_set_foregroundcolor(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i64 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %3)
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @COLOR_WHITE, align 4
  store i32 %7, i32* @foregroundColor, align 4
  br label %59

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* @COLOR_YELLOW, align 4
  store i32 %13, i32* @foregroundColor, align 4
  br label %58

14:                                               ; preds = %8
  %15 = load i8*, i8** %2, align 8
  %16 = call i64 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @COLOR_BLACK, align 4
  store i32 %19, i32* @foregroundColor, align 4
  br label %57

20:                                               ; preds = %14
  %21 = load i8*, i8** %2, align 8
  %22 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @COLOR_MAGENTA, align 4
  store i32 %25, i32* @foregroundColor, align 4
  br label %56

26:                                               ; preds = %20
  %27 = load i8*, i8** %2, align 8
  %28 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @COLOR_BLUE, align 4
  store i32 %31, i32* @foregroundColor, align 4
  br label %55

32:                                               ; preds = %26
  %33 = load i8*, i8** %2, align 8
  %34 = call i64 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @COLOR_GREEN, align 4
  store i32 %37, i32* @foregroundColor, align 4
  br label %54

38:                                               ; preds = %32
  %39 = load i8*, i8** %2, align 8
  %40 = call i64 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @COLOR_RED, align 4
  store i32 %43, i32* @foregroundColor, align 4
  br label %53

44:                                               ; preds = %38
  %45 = load i8*, i8** %2, align 8
  %46 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @COLOR_CYAN, align 4
  store i32 %49, i32* @foregroundColor, align 4
  br label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @COLOR_BLUE, align 4
  store i32 %51, i32* @foregroundColor, align 4
  br label %52

52:                                               ; preds = %50, %48
  br label %53

53:                                               ; preds = %52, %42
  br label %54

54:                                               ; preds = %53, %36
  br label %55

55:                                               ; preds = %54, %30
  br label %56

56:                                               ; preds = %55, %24
  br label %57

57:                                               ; preds = %56, %18
  br label %58

58:                                               ; preds = %57, %12
  br label %59

59:                                               ; preds = %58, %6
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
