; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/duck/orion/v3/extr_matrix.c_read_rows.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/duck/orion/v3/extr_matrix.c_read_rows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PIND = common dso_local global i32 0, align 4
@PINB = common dso_local global i32 0, align 4
@PINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @read_rows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_rows(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @PIND, align 4
  %4 = and i32 %3, 1
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i64
  %7 = select i1 %5, i32 1, i32 0
  %8 = load i32, i32* @PIND, align 4
  %9 = and i32 %8, 2
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 2, i32 0
  %13 = or i32 %7, %12
  %14 = load i32, i32* @PIND, align 4
  %15 = and i32 %14, 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 4, i32 0
  %19 = or i32 %13, %18
  %20 = load i32, i32* @PIND, align 4
  %21 = and i32 %20, 8
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 8, i32 0
  %25 = or i32 %19, %24
  %26 = load i32, i32* @PIND, align 4
  %27 = and i32 %26, 32
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 16, i32 0
  %31 = or i32 %25, %30
  %32 = load i32, i32* @PINB, align 4
  %33 = and i32 %32, 128
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 32, i32 0
  %37 = or i32 %31, %36
  %38 = load i32, i32* %2, align 4
  %39 = icmp eq i32 %38, 17
  br i1 %39, label %40, label %46

40:                                               ; preds = %1
  %41 = load i32, i32* @PINE, align 4
  %42 = and i32 %41, 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 0, i32 2
  br label %47

46:                                               ; preds = %1
  br label %47

47:                                               ; preds = %46, %40
  %48 = phi i32 [ %45, %40 ], [ 0, %46 ]
  %49 = or i32 %37, %48
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
