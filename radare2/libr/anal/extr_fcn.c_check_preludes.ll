; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_fcn.c_check_preludes.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_fcn.c_check_preludes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"U\89\E5\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"U\8B\EC\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\8B\FF\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"UH\89\E5\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"UH\8B\EC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @check_preludes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_preludes(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 10
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @memcmp(i32* %10, i32* bitcast ([4 x i8]* @.str to i32*), i32 3)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %39

14:                                               ; preds = %9
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @memcmp(i32* %15, i32* bitcast ([4 x i8]* @.str.1 to i32*), i32 3)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %39

19:                                               ; preds = %14
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @memcmp(i32* %20, i32* bitcast ([3 x i8]* @.str.2 to i32*), i32 2)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %39

24:                                               ; preds = %19
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @memcmp(i32* %25, i32* bitcast ([5 x i8]* @.str.3 to i32*), i32 4)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %39

29:                                               ; preds = %24
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @memcmp(i32* %30, i32* bitcast ([5 x i8]* @.str.4 to i32*), i32 4)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %39

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %33, %28, %23, %18, %13, %8
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
