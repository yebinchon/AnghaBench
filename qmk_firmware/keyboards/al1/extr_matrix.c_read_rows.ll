; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/al1/extr_matrix.c_read_rows.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/al1/extr_matrix.c_read_rows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PINC = common dso_local global i32 0, align 4
@PC7 = common dso_local global i32 0, align 4
@PINB = common dso_local global i32 0, align 4
@PB1 = common dso_local global i32 0, align 4
@PB2 = common dso_local global i32 0, align 4
@PC6 = common dso_local global i32 0, align 4
@PB4 = common dso_local global i32 0, align 4
@PB5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_rows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_rows() #0 {
  %1 = load i32, i32* @PINC, align 4
  %2 = load i32, i32* @PC7, align 4
  %3 = shl i32 1, %2
  %4 = and i32 %1, %3
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i64
  %7 = select i1 %5, i32 0, i32 1
  %8 = load i32, i32* @PINB, align 4
  %9 = load i32, i32* @PB1, align 4
  %10 = shl i32 1, %9
  %11 = and i32 %8, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 0, i32 2
  %15 = or i32 %7, %14
  %16 = load i32, i32* @PINB, align 4
  %17 = load i32, i32* @PB2, align 4
  %18 = shl i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 0, i32 4
  %23 = or i32 %15, %22
  %24 = load i32, i32* @PINC, align 4
  %25 = load i32, i32* @PC6, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 0, i32 8
  %31 = or i32 %23, %30
  %32 = load i32, i32* @PINB, align 4
  %33 = load i32, i32* @PB4, align 4
  %34 = shl i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 16
  %39 = or i32 %31, %38
  %40 = load i32, i32* @PINB, align 4
  %41 = load i32, i32* @PB5, align 4
  %42 = shl i32 1, %41
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 0, i32 32
  %47 = or i32 %39, %46
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
