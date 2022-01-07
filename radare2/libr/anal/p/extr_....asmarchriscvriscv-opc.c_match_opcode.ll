; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_....asmarchriscvriscv-opc.c_match_opcode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_....asmarchriscvriscv-opc.c_match_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.riscv_opcode = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.riscv_opcode*, i32)* @match_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_opcode(%struct.riscv_opcode* %0, i32 %1) #0 {
  %3 = alloca %struct.riscv_opcode*, align 8
  %4 = alloca i32, align 4
  store %struct.riscv_opcode* %0, %struct.riscv_opcode** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.riscv_opcode*, %struct.riscv_opcode** %3, align 8
  %7 = getelementptr inbounds %struct.riscv_opcode, %struct.riscv_opcode* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = xor i32 %5, %8
  %10 = load %struct.riscv_opcode*, %struct.riscv_opcode** %3, align 8
  %11 = getelementptr inbounds %struct.riscv_opcode, %struct.riscv_opcode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %9, %12
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
