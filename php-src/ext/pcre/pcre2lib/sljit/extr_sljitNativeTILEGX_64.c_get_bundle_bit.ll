; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeTILEGX_64.c_get_bundle_bit.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeTILEGX_64.c_get_bundle_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tilegx_operand = type { i32 (i32)* }
%struct.jit_instr = type { i64, i32*, %struct.tilegx_opcode* }
%struct.tilegx_opcode = type { i32, i64**, i32* }

@tilegx_operands = common dso_local global %struct.tilegx_operand* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_bundle_bit(%struct.jit_instr* %0) #0 {
  %2 = alloca %struct.jit_instr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tilegx_opcode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tilegx_operand*, align 8
  store %struct.jit_instr* %0, %struct.jit_instr** %2, align 8
  %8 = load %struct.jit_instr*, %struct.jit_instr** %2, align 8
  %9 = getelementptr inbounds %struct.jit_instr, %struct.jit_instr* %8, i32 0, i32 2
  %10 = load %struct.tilegx_opcode*, %struct.tilegx_opcode** %9, align 8
  store %struct.tilegx_opcode* %10, %struct.tilegx_opcode** %5, align 8
  %11 = load %struct.tilegx_opcode*, %struct.tilegx_opcode** %5, align 8
  %12 = getelementptr inbounds %struct.tilegx_opcode, %struct.tilegx_opcode* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.jit_instr*, %struct.jit_instr** %2, align 8
  %15 = getelementptr inbounds %struct.jit_instr, %struct.jit_instr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  store %struct.tilegx_operand* null, %struct.tilegx_operand** %7, align 8
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %54, %1
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.tilegx_opcode*, %struct.tilegx_opcode** %5, align 8
  %22 = getelementptr inbounds %struct.tilegx_opcode, %struct.tilegx_opcode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %57

25:                                               ; preds = %19
  %26 = load %struct.tilegx_operand*, %struct.tilegx_operand** @tilegx_operands, align 8
  %27 = load %struct.tilegx_opcode*, %struct.tilegx_opcode** %5, align 8
  %28 = getelementptr inbounds %struct.tilegx_opcode, %struct.tilegx_opcode* %27, i32 0, i32 1
  %29 = load i64**, i64*** %28, align 8
  %30 = load %struct.jit_instr*, %struct.jit_instr** %2, align 8
  %31 = getelementptr inbounds %struct.jit_instr, %struct.jit_instr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i64*, i64** %29, i64 %32
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.tilegx_operand, %struct.tilegx_operand* %26, i64 %38
  store %struct.tilegx_operand* %39, %struct.tilegx_operand** %7, align 8
  %40 = load %struct.jit_instr*, %struct.jit_instr** %2, align 8
  %41 = getelementptr inbounds %struct.jit_instr, %struct.jit_instr* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %4, align 4
  %47 = load %struct.tilegx_operand*, %struct.tilegx_operand** %7, align 8
  %48 = getelementptr inbounds %struct.tilegx_operand, %struct.tilegx_operand* %47, i32 0, i32 0
  %49 = load i32 (i32)*, i32 (i32)** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 %49(i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %25
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %19

57:                                               ; preds = %19
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
