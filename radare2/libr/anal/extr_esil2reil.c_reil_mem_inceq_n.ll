; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_esil2reil.c_reil_mem_inceq_n.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_esil2reil.c_reil_mem_inceq_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REIL_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @reil_mem_inceq_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reil_mem_inceq_n(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i32* @reil_pop_arg(i32* %8)
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @r_anal_esil_pushnum(i32* %14, i32 1)
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @reil_push_arg(i32* %16, i32* %17)
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @REIL_ADD, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @reil_mem_bineq_n(i32* %19, i32 %20, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @free(i32* %25)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %13, %12
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32* @reil_pop_arg(i32*) #1

declare dso_local i32 @r_anal_esil_pushnum(i32*, i32) #1

declare dso_local i32 @reil_push_arg(i32*, i32*) #1

declare dso_local i32 @reil_mem_bineq_n(i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
