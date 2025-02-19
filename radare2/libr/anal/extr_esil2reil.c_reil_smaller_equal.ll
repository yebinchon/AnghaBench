; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_esil2reil.c_reil_smaller_equal.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_esil2reil.c_reil_smaller_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @reil_smaller_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reil_smaller_equal(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32* @reil_pop_arg(i32* %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32* @reil_pop_arg(i32* %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @R_FREE(i32* %17)
  store i32 0, i32* %2, align 4
  br label %42

19:                                               ; preds = %11
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @reil_push_arg(i32* %20, i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @reil_push_arg(i32* %23, i32* %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @reil_smaller(i32* %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @reil_push_arg(i32* %28, i32* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @reil_push_arg(i32* %31, i32* %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @reil_cmp(i32* %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @reil_or(i32* %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @R_FREE(i32* %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @R_FREE(i32* %40)
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %19, %16, %10
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32* @reil_pop_arg(i32*) #1

declare dso_local i32 @R_FREE(i32*) #1

declare dso_local i32 @reil_push_arg(i32*, i32*) #1

declare dso_local i32 @reil_smaller(i32*) #1

declare dso_local i32 @reil_cmp(i32*) #1

declare dso_local i32 @reil_or(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
