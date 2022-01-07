; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_gaddrof.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_gaddrof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@VT_LVAL = common dso_local global i32 0, align 4
@vtop = common dso_local global %struct.TYPE_2__* null, align 8
@VT_VALMASK = common dso_local global i32 0, align 4
@VT_LLOCAL = common dso_local global i32 0, align 4
@VT_LVAL_TYPE = common dso_local global i32 0, align 4
@VT_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gaddrof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gaddrof() #0 {
  %1 = load i32, i32* @VT_LVAL, align 4
  %2 = xor i32 %1, -1
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vtop, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, %2
  store i32 %6, i32* %4, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vtop, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @VT_VALMASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @VT_LLOCAL, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vtop, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @VT_VALMASK, align 4
  %19 = load i32, i32* @VT_LVAL_TYPE, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = and i32 %17, %21
  %23 = load i32, i32* @VT_LOCAL, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @VT_LVAL, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vtop, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %14, %0
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
