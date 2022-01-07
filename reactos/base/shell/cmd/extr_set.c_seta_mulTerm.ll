; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_set.c_seta_mulTerm.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_set.c_seta_mulTerm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"!~-\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*)* @seta_mulTerm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seta_mulTerm(i32** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32**, i32*** %4, align 8
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = call i32 @_T(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @_tcschr(i32 %11, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = call i32* @skip_ws(i32* %20)
  store i32* %21, i32** %6, align 8
  br label %22

22:                                               ; preds = %16, %2
  %23 = call i32 @seta_unaryTerm(i32** %6, i32* %8)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %3, align 4
  br label %46

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %40 [
    i32 33, label %29
    i32 126, label %34
    i32 45, label %37
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %8, align 4
  br label %40

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = xor i32 %35, -1
  store i32 %36, i32* %8, align 4
  br label %40

37:                                               ; preds = %27
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %27, %37, %34, %29
  %41 = load i32, i32* %8, align 4
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32**, i32*** %4, align 8
  store i32* %43, i32** %44, align 8
  %45 = load i32, i32* @TRUE, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %40, %25
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @_tcschr(i32, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32* @skip_ws(i32*) #1

declare dso_local i32 @seta_unaryTerm(i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
