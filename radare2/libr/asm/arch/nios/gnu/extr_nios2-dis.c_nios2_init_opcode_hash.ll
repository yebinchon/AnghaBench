; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/nios/gnu/extr_nios2-dis.c_nios2_init_opcode_hash.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/nios/gnu/extr_nios2-dis.c_nios2_init_opcode_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.nios2_opcode* }
%struct.nios2_opcode = type { i32, i32, i8* }

@OP_MASK_OP = common dso_local global i32 0, align 4
@nios2_hash = common dso_local global %struct.TYPE_4__** null, align 8
@nios2_opcodes = common dso_local global %struct.nios2_opcode* null, align 8
@NUMOPCODES = common dso_local global i64 0, align 8
@NIOS2_INSN_MACRO = common dso_local global i32 0, align 4
@OP_SH_OP = common dso_local global i32 0, align 4
@NIOS2_INSN_MACRO_MOV = common dso_local global i32 0, align 4
@NIOS2_INSN_MACRO_MOVI = common dso_local global i32 0, align 4
@nios2_ps_hash = common dso_local global %struct.TYPE_4__** null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"error allocating memory...broken disassembler\0A\00", align 1
@nios2_hash_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @nios2_init_opcode_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nios2_init_opcode_hash() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.nios2_opcode*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__**, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %12, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @OP_MASK_OP, align 4
  %8 = icmp ule i32 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @nios2_hash, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %10, i64 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %11, align 8
  br label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %1, align 4
  %14 = add i32 %13, 1
  store i32 %14, i32* %1, align 4
  br label %5

15:                                               ; preds = %5
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %112, %15
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @OP_MASK_OP, align 4
  %19 = icmp ule i32 %17, %18
  br i1 %19, label %20, label %115

20:                                               ; preds = %16
  %21 = load %struct.nios2_opcode*, %struct.nios2_opcode** @nios2_opcodes, align 8
  store %struct.nios2_opcode* %21, %struct.nios2_opcode** %2, align 8
  br label %22

22:                                               ; preds = %108, %20
  %23 = load %struct.nios2_opcode*, %struct.nios2_opcode** %2, align 8
  %24 = load %struct.nios2_opcode*, %struct.nios2_opcode** @nios2_opcodes, align 8
  %25 = load i64, i64* @NUMOPCODES, align 8
  %26 = getelementptr inbounds %struct.nios2_opcode, %struct.nios2_opcode* %24, i64 %25
  %27 = icmp ult %struct.nios2_opcode* %23, %26
  br i1 %27, label %28, label %111

28:                                               ; preds = %22
  store %struct.TYPE_4__** null, %struct.TYPE_4__*** %4, align 8
  %29 = load %struct.nios2_opcode*, %struct.nios2_opcode** %2, align 8
  %30 = getelementptr inbounds %struct.nios2_opcode, %struct.nios2_opcode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @NIOS2_INSN_MACRO, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @NIOS2_INSN_MACRO, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %28
  %37 = load i32, i32* %1, align 4
  %38 = load %struct.nios2_opcode*, %struct.nios2_opcode** %2, align 8
  %39 = getelementptr inbounds %struct.nios2_opcode, %struct.nios2_opcode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @OP_SH_OP, align 4
  %42 = lshr i32 %40, %41
  %43 = load i32, i32* @OP_MASK_OP, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %37, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %36
  %47 = load %struct.nios2_opcode*, %struct.nios2_opcode** %2, align 8
  %48 = getelementptr inbounds %struct.nios2_opcode, %struct.nios2_opcode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @NIOS2_INSN_MACRO_MOV, align 4
  %51 = load i32, i32* @NIOS2_INSN_MACRO_MOVI, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = and i32 %53, 2147483647
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @nios2_ps_hash, align 8
  %58 = load i32, i32* %1, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %57, i64 %59
  store %struct.TYPE_4__** %60, %struct.TYPE_4__*** %4, align 8
  br label %61

61:                                               ; preds = %56, %46, %36
  br label %78

62:                                               ; preds = %28
  %63 = load i32, i32* %1, align 4
  %64 = load %struct.nios2_opcode*, %struct.nios2_opcode** %2, align 8
  %65 = getelementptr inbounds %struct.nios2_opcode, %struct.nios2_opcode* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @OP_SH_OP, align 4
  %68 = lshr i32 %66, %67
  %69 = load i32, i32* @OP_MASK_OP, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %63, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %62
  %73 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @nios2_hash, align 8
  %74 = load i32, i32* %1, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %73, i64 %75
  store %struct.TYPE_4__** %76, %struct.TYPE_4__*** %4, align 8
  br label %77

77:                                               ; preds = %72, %62
  br label %78

78:                                               ; preds = %77, %61
  %79 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %80 = icmp ne %struct.TYPE_4__** %79, null
  br i1 %80, label %81, label %107

81:                                               ; preds = %78
  %82 = call i64 @malloc(i32 16)
  %83 = inttoptr i64 %82 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %83, %struct.TYPE_4__** %3, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %85 = icmp ne %struct.TYPE_4__* %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* @stderr, align 4
  %88 = call i32 @fprintf(i32 %87, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %89 = call i32 (...) @abort() #3
  unreachable

90:                                               ; preds = %81
  %91 = load %struct.nios2_opcode*, %struct.nios2_opcode** %2, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store %struct.nios2_opcode* %91, %struct.nios2_opcode** %93, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %95, align 8
  br label %96

96:                                               ; preds = %100, %90
  %97 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = icmp ne %struct.TYPE_4__* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store %struct.TYPE_4__** %103, %struct.TYPE_4__*** %4, align 8
  br label %96

104:                                              ; preds = %96
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %106 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  store %struct.TYPE_4__* %105, %struct.TYPE_4__** %106, align 8
  br label %107

107:                                              ; preds = %104, %78
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.nios2_opcode*, %struct.nios2_opcode** %2, align 8
  %110 = getelementptr inbounds %struct.nios2_opcode, %struct.nios2_opcode* %109, i32 1
  store %struct.nios2_opcode* %110, %struct.nios2_opcode** %2, align 8
  br label %22

111:                                              ; preds = %22
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %1, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %1, align 4
  br label %16

115:                                              ; preds = %16
  store i32 1, i32* @nios2_hash_init, align 4
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
