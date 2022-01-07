; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_esil2reil.c_reil_mem_bineq_n.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_esil2reil.c_reil_mem_bineq_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @reil_mem_bineq_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reil_mem_bineq_n(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32* @reil_pop_arg(i32* %11)
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %54

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = call i32* @reil_pop_arg(i32* %17)
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @R_FREE(i32* %22)
  store i32 0, i32* %4, align 4
  br label %54

24:                                               ; preds = %16
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @reil_push_arg(i32* %25, i32* %26)
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @reil_peekn(i32* %28, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %8, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @reil_push_arg(i32* %33, i32* %34)
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @reil_binop(i32* %36, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @reil_push_arg(i32* %41, i32* %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @reil_poken(i32* %44, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @free(i32* %49)
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @free(i32* %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %24, %21, %15
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32* @reil_pop_arg(i32*) #1

declare dso_local i32 @R_FREE(i32*) #1

declare dso_local i32 @reil_push_arg(i32*, i32*) #1

declare dso_local i32 @reil_peekn(i32*, i32) #1

declare dso_local i32 @reil_binop(i32*, i32) #1

declare dso_local i32 @reil_poken(i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
