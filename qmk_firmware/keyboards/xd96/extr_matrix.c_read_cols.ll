; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/xd96/extr_matrix.c_read_cols.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/xd96/extr_matrix.c_read_cols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IC2 = common dso_local global i32 0, align 4
@PCA9555_PORT0 = common dso_local global i32 0, align 4
@PCA9555_PORT1 = common dso_local global i32 0, align 4
@IC1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_cols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_cols() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @IC2, align 4
  %6 = load i32, i32* @PCA9555_PORT0, align 4
  %7 = call i32 @pca9555_readPins(i32 %5, i32 %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @IC2, align 4
  %9 = load i32, i32* @PCA9555_PORT1, align 4
  %10 = call i32 @pca9555_readPins(i32 %8, i32 %9)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* @IC1, align 4
  %12 = load i32, i32* @PCA9555_PORT1, align 4
  %13 = call i32 @pca9555_readPins(i32 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 15
  %16 = shl i32 %15, 14
  %17 = load i32, i32* %2, align 4
  %18 = and i32 %17, 63
  %19 = shl i32 %18, 8
  %20 = or i32 %16, %19
  %21 = load i32, i32* %1, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %24, 262143
  ret i32 %25
}

declare dso_local i32 @pca9555_readPins(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
