; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/extr_tms320_dasm.c_get_cond_str.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/extr_tms320_dasm.c_get_cond_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_cond_str.op = internal global [6 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%s %s 0\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"overflow(ac%d)\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"!overflow(ac%d)\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"tc1\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"tc2\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"carry\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"!tc1\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"!tc2\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"!carry\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"tc1 & tc2\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"tc1 & !tc2\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"!tc1 & tc2\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"!tc1 & !tc2\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"tc1 | tc2\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"tc1 | !tc2\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"!tc1 | tc2\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"!tc1 | !tc2\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"tc1 ^ tc2\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"tc1 ^ !tc2\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"!tc1 ^ tc2\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"!tc1 ^ !tc2\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_cond_str(i32 %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = ashr i32 %6, 4
  %8 = icmp sle i32 %7, 5
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 15
  %13 = call i8* @get_freg_str(i32 %12, i32* null)
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 4
  %16 = and i32 %15, 7
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [6 x i8*], [6 x i8*]* @get_cond_str.op, i64 0, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %13, i8* %19)
  %21 = load i8*, i8** %5, align 8
  store i8* %21, i8** %3, align 8
  br label %63

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 2
  %25 = icmp eq i32 %24, 24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 3
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %29)
  %31 = load i8*, i8** %5, align 8
  store i8* %31, i8** %3, align 8
  br label %63

32:                                               ; preds = %22
  %33 = load i32, i32* %4, align 4
  %34 = ashr i32 %33, 2
  %35 = icmp eq i32 %34, 28
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, 3
  %40 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %39)
  %41 = load i8*, i8** %5, align 8
  store i8* %41, i8** %3, align 8
  br label %63

42:                                               ; preds = %32
  %43 = load i32, i32* %4, align 4
  switch i32 %43, label %62 [
    i32 100, label %44
    i32 101, label %45
    i32 102, label %46
    i32 116, label %47
    i32 117, label %48
    i32 118, label %49
    i32 104, label %50
    i32 105, label %51
    i32 106, label %52
    i32 107, label %53
    i32 120, label %54
    i32 121, label %55
    i32 122, label %56
    i32 123, label %57
    i32 124, label %58
    i32 125, label %59
    i32 126, label %60
    i32 127, label %61
  ]

44:                                               ; preds = %42
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %63

45:                                               ; preds = %42
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %63

46:                                               ; preds = %42
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %63

47:                                               ; preds = %42
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %63

48:                                               ; preds = %42
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %63

49:                                               ; preds = %42
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %63

50:                                               ; preds = %42
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %63

51:                                               ; preds = %42
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %63

52:                                               ; preds = %42
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %63

53:                                               ; preds = %42
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %63

54:                                               ; preds = %42
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8** %3, align 8
  br label %63

55:                                               ; preds = %42
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8** %3, align 8
  br label %63

56:                                               ; preds = %42
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8** %3, align 8
  br label %63

57:                                               ; preds = %42
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8** %3, align 8
  br label %63

58:                                               ; preds = %42
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8** %3, align 8
  br label %63

59:                                               ; preds = %42
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i8** %3, align 8
  br label %63

60:                                               ; preds = %42
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8** %3, align 8
  br label %63

61:                                               ; preds = %42
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8** %3, align 8
  br label %63

62:                                               ; preds = %42
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8** %3, align 8
  br label %63

63:                                               ; preds = %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %36, %26, %9
  %64 = load i8*, i8** %3, align 8
  ret i8* %64
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i8* @get_freg_str(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
