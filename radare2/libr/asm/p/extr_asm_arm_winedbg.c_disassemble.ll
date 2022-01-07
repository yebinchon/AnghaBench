; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_arm_winedbg.c_disassemble.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_arm_winedbg.c_disassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.winedbg_arm_insn = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_6__*, i32*, i32)* @disassemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disassemble(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca %struct.winedbg_arm_insn*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = call %struct.winedbg_arm_insn* (...) @arm_new()
  store %struct.winedbg_arm_insn* %12, %struct.winedbg_arm_insn** %10, align 8
  %13 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %10, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @arm_set_pc(%struct.winedbg_arm_insn* %13, i32 %16)
  %18 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %10, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 16
  %23 = zext i1 %22 to i32
  %24 = call i32 @arm_set_thumb(%struct.winedbg_arm_insn* %18, i32 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 32
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @r_mem_swapendian(i32* %35, i32* %36, i32 4)
  %38 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %10, align 8
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %40 = call i32 @arm_set_input_buffer(%struct.winedbg_arm_insn* %38, i32* %39)
  br label %45

41:                                               ; preds = %29, %4
  %42 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %10, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @arm_set_input_buffer(%struct.winedbg_arm_insn* %42, i32* %43)
  br label %45

45:                                               ; preds = %41, %34
  %46 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %10, align 8
  %47 = call i32 @arm_disasm_one_insn(%struct.winedbg_arm_insn* %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %10, align 8
  %51 = call i8* @winedbg_arm_insn_asm(%struct.winedbg_arm_insn* %50)
  store i8* %51, i8** %11, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %45
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @r_strbuf_set(i32* %56, i8* %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %10, align 8
  %61 = call i32 @winedbg_arm_insn_hex(%struct.winedbg_arm_insn* %60)
  %62 = call i32 @r_asm_op_set_hex(%struct.TYPE_6__* %59, i32 %61)
  br label %70

63:                                               ; preds = %45
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = call i32 @r_strbuf_set(i32* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = call i32 @r_strbuf_set(i32* %68, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %63, %54
  %71 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %10, align 8
  %72 = call i32 @arm_free(%struct.winedbg_arm_insn* %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  ret i32 %75
}

declare dso_local %struct.winedbg_arm_insn* @arm_new(...) #1

declare dso_local i32 @arm_set_pc(%struct.winedbg_arm_insn*, i32) #1

declare dso_local i32 @arm_set_thumb(%struct.winedbg_arm_insn*, i32) #1

declare dso_local i32 @r_mem_swapendian(i32*, i32*, i32) #1

declare dso_local i32 @arm_set_input_buffer(%struct.winedbg_arm_insn*, i32*) #1

declare dso_local i32 @arm_disasm_one_insn(%struct.winedbg_arm_insn*) #1

declare dso_local i8* @winedbg_arm_insn_asm(%struct.winedbg_arm_insn*) #1

declare dso_local i32 @r_strbuf_set(i32*, i8*) #1

declare dso_local i32 @r_asm_op_set_hex(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @winedbg_arm_insn_hex(%struct.winedbg_arm_insn*) #1

declare dso_local i32 @arm_free(%struct.winedbg_arm_insn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
