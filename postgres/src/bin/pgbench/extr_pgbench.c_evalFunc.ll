; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_evalFunc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_evalFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @evalFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evalFunc(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i64 @isLazyFunc(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @evalLazyFunc(i32* %14, i32 %15, i32* %16, i32* %17)
  store i32 %18, i32* %5, align 4
  br label %25

19:                                               ; preds = %4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @evalStandardFunc(i32* %20, i32 %21, i32* %22, i32* %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %19, %13
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i64 @isLazyFunc(i32) #1

declare dso_local i32 @evalLazyFunc(i32*, i32, i32*, i32*) #1

declare dso_local i32 @evalStandardFunc(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
