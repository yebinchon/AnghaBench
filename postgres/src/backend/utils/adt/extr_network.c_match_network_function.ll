; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network.c_match_network_function.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network.c_match_network_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32, i32, i32)* @match_network_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @match_network_function(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %10, align 4
  switch i32 %12, label %53 [
    i32 131, label %13
    i32 130, label %23
    i32 129, label %33
    i32 128, label %43
  ]

13:                                               ; preds = %5
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32*, i32** @NIL, align 8
  store i32* %17, i32** %6, align 8
  br label %55

18:                                               ; preds = %13
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call i32* @match_network_subset(i32* %19, i32* %20, i32 0, i32 %21)
  store i32* %22, i32** %6, align 8
  br label %55

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32*, i32** @NIL, align 8
  store i32* %27, i32** %6, align 8
  br label %55

28:                                               ; preds = %23
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32* @match_network_subset(i32* %29, i32* %30, i32 1, i32 %31)
  store i32* %32, i32** %6, align 8
  br label %55

33:                                               ; preds = %5
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32*, i32** @NIL, align 8
  store i32* %37, i32** %6, align 8
  br label %55

38:                                               ; preds = %33
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32* @match_network_subset(i32* %39, i32* %40, i32 0, i32 %41)
  store i32* %42, i32** %6, align 8
  br label %55

43:                                               ; preds = %5
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32*, i32** @NIL, align 8
  store i32* %47, i32** %6, align 8
  br label %55

48:                                               ; preds = %43
  %49 = load i32*, i32** %8, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32* @match_network_subset(i32* %49, i32* %50, i32 1, i32 %51)
  store i32* %52, i32** %6, align 8
  br label %55

53:                                               ; preds = %5
  %54 = load i32*, i32** @NIL, align 8
  store i32* %54, i32** %6, align 8
  br label %55

55:                                               ; preds = %53, %48, %46, %38, %36, %28, %26, %18, %16
  %56 = load i32*, i32** %6, align 8
  ret i32* %56
}

declare dso_local i32* @match_network_subset(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
