; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/riscv/extr_riscv-opc.c_match_rs1_eq_rs2.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/riscv/extr_riscv-opc.c_match_rs1_eq_rs2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.riscv_opcode = type { i32 }

@MASK_RS1 = common dso_local global i32 0, align 4
@OP_SH_RS1 = common dso_local global i32 0, align 4
@MASK_RS2 = common dso_local global i32 0, align 4
@OP_SH_RS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.riscv_opcode*, i32)* @match_rs1_eq_rs2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_rs1_eq_rs2(%struct.riscv_opcode* %0, i32 %1) #0 {
  %3 = alloca %struct.riscv_opcode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.riscv_opcode* %0, %struct.riscv_opcode** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MASK_RS1, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @OP_SH_RS1, align 4
  %11 = ashr i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MASK_RS2, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @OP_SH_RS2, align 4
  %16 = ashr i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.riscv_opcode*, %struct.riscv_opcode** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @match_opcode(%struct.riscv_opcode* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %22, %23
  br label %25

25:                                               ; preds = %21, %2
  %26 = phi i1 [ false, %2 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

declare dso_local i64 @match_opcode(%struct.riscv_opcode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
