; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/doskey/extr_doskey.c_GetArg.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/doskey/extr_doskey.c_GetArg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i32] [i32 32, i32 9, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32**)* @GetArg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetArg(i32** %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i32** %1, i32*** %5, align 8
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32**, i32*** %5, align 8
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @wcsspn(i32* %11, i8* bitcast ([3 x i32]* @.str to i8*))
  %13 = load i32*, i32** %7, align 8
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %3, align 4
  br label %52

21:                                               ; preds = %2
  %22 = load i32*, i32** %7, align 8
  %23 = load i32**, i32*** %4, align 8
  store i32* %22, i32** %23, align 8
  br label %24

24:                                               ; preds = %44, %21
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 32
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 9
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %27
  br label %48

36:                                               ; preds = %31, %24
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %7, align 8
  %39 = load i32, i32* %37, align 4
  %40 = icmp eq i32 %39, 34
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %6, align 4
  %43 = xor i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %36
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %24, label %48

48:                                               ; preds = %44, %35
  %49 = load i32*, i32** %7, align 8
  %50 = load i32**, i32*** %5, align 8
  store i32* %49, i32** %50, align 8
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %19
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @wcsspn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
