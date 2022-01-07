; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_is_float.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_is_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VT_BTYPE = common dso_local global i32 0, align 4
@VT_LDOUBLE = common dso_local global i32 0, align 4
@VT_DOUBLE = common dso_local global i32 0, align 4
@VT_FLOAT = common dso_local global i32 0, align 4
@VT_QFLOAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_float(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @VT_BTYPE, align 4
  %6 = and i32 %4, %5
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @VT_LDOUBLE, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @VT_DOUBLE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @VT_FLOAT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @VT_QFLOAT, align 4
  %21 = icmp eq i32 %19, %20
  br label %22

22:                                               ; preds = %18, %14, %10, %1
  %23 = phi i1 [ true, %14 ], [ true, %10 ], [ true, %1 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
