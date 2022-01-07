; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/bpiphany/tiger_lily/extr_matrix.c_scan_col.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/bpiphany/tiger_lily/extr_matrix.c_scan_col.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PINC = common dso_local global i32 0, align 4
@PINB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @scan_col to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_col() #0 {
  %1 = load i32, i32* @PINC, align 4
  %2 = and i32 %1, 4
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i64
  %5 = select i1 %3, i32 0, i32 1
  %6 = load i32, i32* @PINB, align 4
  %7 = and i32 %6, 8
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 0, i32 2
  %11 = or i32 %5, %10
  %12 = load i32, i32* @PINB, align 4
  %13 = and i32 %12, 16
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 0, i32 4
  %17 = or i32 %11, %16
  %18 = load i32, i32* @PINB, align 4
  %19 = and i32 %18, 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 0, i32 8
  %23 = or i32 %17, %22
  %24 = load i32, i32* @PINB, align 4
  %25 = and i32 %24, 2
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 0, i32 16
  %29 = or i32 %23, %28
  %30 = load i32, i32* @PINC, align 4
  %31 = and i32 %30, 128
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 0, i32 32
  %35 = or i32 %29, %34
  %36 = load i32, i32* @PINB, align 4
  %37 = and i32 %36, 64
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 0, i32 64
  %41 = or i32 %35, %40
  %42 = load i32, i32* @PINB, align 4
  %43 = and i32 %42, 32
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 0, i32 128
  %47 = or i32 %41, %46
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
