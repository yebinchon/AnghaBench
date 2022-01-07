; ModuleID = '/home/carl/AnghaBench/radare2/libr/cons/extr_grep.c_gethtmlcolor.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/cons/extr_grep.c_gethtmlcolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"#000\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"#f00\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"#0f0\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"#ff0\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"#00f\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"#f0f\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"#aaf\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"#fff\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"#777\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8, i8*)* @gethtmlcolor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gethtmlcolor(i8 signext %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  %6 = load i8, i8* %4, align 1
  %7 = sext i8 %6 to i32
  switch i32 %7, label %18 [
    i32 48, label %8
    i32 49, label %9
    i32 50, label %10
    i32 51, label %11
    i32 52, label %12
    i32 53, label %13
    i32 54, label %14
    i32 55, label %15
    i32 56, label %16
    i32 57, label %17
  ]

8:                                                ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %20

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %20

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %20

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %20

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %20

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %20

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %20

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %20

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %20

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %2, %17
  %19 = load i8*, i8** %5, align 8
  store i8* %19, i8** %3, align 8
  br label %20

20:                                               ; preds = %18, %16, %15, %14, %13, %12, %11, %10, %9, %8
  %21 = load i8*, i8** %3, align 8
  ret i8* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
