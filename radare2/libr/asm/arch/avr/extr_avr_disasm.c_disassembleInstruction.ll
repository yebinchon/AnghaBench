; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/avr/extr_avr_disasm.c_disassembleInstruction.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/avr/extr_avr_disasm.c_disassembleInstruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, %struct.TYPE_10__*, i32*, i32 }
%struct.TYPE_10__ = type { i32, i64*, i32*, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@ERROR_INVALID_ARGUMENTS = common dso_local global i32 0, align 4
@AVR_TOTAL_INSTRUCTIONS = common dso_local global i32 0, align 4
@AVR_Long_Instruction = common dso_local global i64 0, align 8
@AVR_LONG_INSTRUCTION_FOUND = common dso_local global i64 0, align 8
@AVR_LONG_INSTRUCTION_PRINT = common dso_local global i64 0, align 8
@AVR_Long_Address = common dso_local global i32 0, align 4
@longInstruction = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"jmp\00", align 1
@instructionSet = common dso_local global %struct.TYPE_10__* null, align 8
@OPERAND_LONG_ABSOLUTE_ADDRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64)* @disassembleInstruction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disassembleInstruction(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast %struct.TYPE_9__* %4 to i64*
  store i64 %1, i64* %8, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ERROR_INVALID_ARGUMENTS, align 4
  store i32 %12, i32* %3, align 4
  br label %136

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @lookupInstruction(i32 %15, i32 0)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @AVR_TOTAL_INSTRUCTIONS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %136

21:                                               ; preds = %13
  %22 = load i64, i64* @AVR_Long_Instruction, align 8
  %23 = load i64, i64* @AVR_LONG_INSTRUCTION_FOUND, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %21
  %26 = load i64, i64* @AVR_LONG_INSTRUCTION_PRINT, align 8
  store i64 %26, i64* @AVR_Long_Instruction, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AVR_Long_Address, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* @AVR_Long_Address, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @longInstruction, i32 0, i32 1), align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @strcmp(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @longInstruction, i32 0, i32 1), align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @strcmp(i32 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36, %25
  %43 = load i32, i32* @AVR_Long_Address, align 4
  %44 = mul nsw i32 %43, 2
  store i32 %44, i32* @AVR_Long_Address, align 4
  br label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = bitcast %struct.TYPE_8__* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 bitcast (%struct.TYPE_8__* @longInstruction to i8*), i64 32, i1 false)
  store i32 0, i32* %3, align 4
  br label %136

48:                                               ; preds = %21
  %49 = load i64, i64* @AVR_Long_Instruction, align 8
  %50 = load i64, i64* @AVR_LONG_INSTRUCTION_PRINT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i64 0, i64* @AVR_Long_Instruction, align 8
  br label %53

53:                                               ; preds = %52, %48
  br label %54

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** @instructionSet, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i64 %61
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store %struct.TYPE_10__* %62, %struct.TYPE_10__** %64, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  store i32* null, i32** %66, align 8
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %119, %54
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** @instructionSet, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %68, %74
  br i1 %75, label %76, label %122

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @extractDataFromMask(i32 %78, i32 %87)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %88, i32* %94, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @OPERAND_LONG_ABSOLUTE_ADDRESS, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %76
  %107 = load i64, i64* @AVR_LONG_INSTRUCTION_FOUND, align 8
  store i64 %107, i64* @AVR_Long_Instruction, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 16
  store i32 %115, i32* @AVR_Long_Address, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %117 = bitcast %struct.TYPE_8__* %116 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_8__* @longInstruction to i8*), i8* align 8 %117, i64 32, i1 false)
  br label %118

118:                                              ; preds = %106, %76
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %67

122:                                              ; preds = %67
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %124 = call i64 @disassembleOperands(%struct.TYPE_8__* %123)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i32, i32* @ERROR_INVALID_ARGUMENTS, align 4
  store i32 %127, i32* %3, align 4
  br label %136

128:                                              ; preds = %122
  %129 = load i64, i64* @AVR_Long_Instruction, align 8
  %130 = load i64, i64* @AVR_LONG_INSTRUCTION_FOUND, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %134 = bitcast %struct.TYPE_8__* %133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_8__* @longInstruction to i8*), i8* align 8 %134, i64 32, i1 false)
  br label %135

135:                                              ; preds = %132, %128
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %126, %45, %20, %11
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @lookupInstruction(i32, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @extractDataFromMask(i32, i32) #1

declare dso_local i64 @disassembleOperands(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
