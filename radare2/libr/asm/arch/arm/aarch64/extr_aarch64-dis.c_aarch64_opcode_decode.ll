; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-dis.c_aarch64_opcode_decode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-dis.c_aarch64_opcode_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i64*, i32 (%struct.TYPE_15__*, i32)*, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"enter with %s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"base opcode match FAIL\00", align 1
@AARCH64_MAX_OPND_NUM = common dso_local global i32 0, align 4
@AARCH64_OPND_NIL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"opcode flag-based decoder FAIL\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"iclass-based decoder FAIL\00", align 1
@aarch64_operands = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"operand decoder FAIL at operand %d\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"operand verifier FAIL\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"SUCCESS\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"constraint matching FAIL\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32, %struct.TYPE_16__*, i32, i32*)* @aarch64_opcode_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aarch64_opcode_decode(%struct.TYPE_15__* %0, i32 %1, %struct.TYPE_16__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %20 = icmp ne %struct.TYPE_15__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %23 = icmp ne %struct.TYPE_16__* %22, null
  br label %24

24:                                               ; preds = %21, %5
  %25 = phi i1 [ false, %5 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %29 = call i32 @memset(%struct.TYPE_16__* %28, i8 signext 0, i32 24)
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %30, %33
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %34, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %24
  %44 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %188

45:                                               ; preds = %24
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 2
  store %struct.TYPE_15__* %46, %struct.TYPE_15__** %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %90, %45
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @AARCH64_MAX_OPND_NUM, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %93

56:                                               ; preds = %52
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 2
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @AARCH64_OPND_NIL, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %93

67:                                               ; preds = %56
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 2
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  store i64 %74, i64* %81, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  store i32 %82, i32* %89, align 8
  br label %90

90:                                               ; preds = %67
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %52

93:                                               ; preds = %66, %52
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %95 = call i64 @opcode_has_special_coder(%struct.TYPE_15__* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %99 = call i64 @do_special_decoding(%struct.TYPE_16__* %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %188

103:                                              ; preds = %97, %93
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %105 = call i32 @aarch64_decode_variant_using_iclass(%struct.TYPE_16__* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %188

109:                                              ; preds = %103
  store i32 0, i32* %12, align 4
  br label %110

110:                                              ; preds = %153, %109
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @AARCH64_MAX_OPND_NUM, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %156

114:                                              ; preds = %110
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  %117 = load i64*, i64** %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  %124 = zext i32 %123 to i64
  %125 = load i64, i64* @AARCH64_OPND_NIL, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %114
  br label %156

128:                                              ; preds = %114
  %129 = load i32*, i32** @aarch64_operands, align 8
  %130 = load i32, i32* %14, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32* %132, i32** %13, align 8
  %133 = load i32*, i32** %13, align 8
  %134 = call i64 @operand_has_extractor(i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %128
  %137 = load i32*, i32** %13, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %139, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i64 %142
  %144 = load i32, i32* %8, align 4
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %146 = load i32*, i32** %11, align 8
  %147 = call i32 @aarch64_extract_operand(i32* %137, %struct.TYPE_14__* %143, i32 %144, %struct.TYPE_16__* %145, i32* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %136
  %150 = load i32, i32* %12, align 4
  %151 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %150)
  br label %188

152:                                              ; preds = %136, %128
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %12, align 4
  br label %110

156:                                              ; preds = %127, %110
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 3
  %159 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %158, align 8
  %160 = icmp ne i32 (%struct.TYPE_15__*, i32)* %159, null
  br i1 %160, label %161, label %171

161:                                              ; preds = %156
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 3
  %164 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %163, align 8
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %166 = load i32, i32* %8, align 4
  %167 = call i32 %164(%struct.TYPE_15__* %165, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %161
  %170 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %188

171:                                              ; preds = %161, %156
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %173 = call i32 @aarch64_match_operands_constraint(%struct.TYPE_16__* %172, i32* null)
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %175, label %185

175:                                              ; preds = %171
  %176 = load i32, i32* %10, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %175
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %180 = load i32*, i32** %11, align 8
  %181 = call i32 @determine_disassembling_preference(%struct.TYPE_16__* %179, i32* %180)
  br label %182

182:                                              ; preds = %178, %175
  %183 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %184 = load i32, i32* @TRUE, align 4
  store i32 %184, i32* %6, align 4
  br label %190

185:                                              ; preds = %171
  %186 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185
  br label %188

188:                                              ; preds = %187, %169, %149, %107, %101, %43
  %189 = load i32, i32* @FALSE, align 4
  store i32 %189, i32* %6, align 4
  br label %190

190:                                              ; preds = %188, %182
  %191 = load i32, i32* %6, align 4
  ret i32 %191
}

declare dso_local i32 @DEBUG_TRACE(i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i8 signext, i32) #1

declare dso_local i64 @opcode_has_special_coder(%struct.TYPE_15__*) #1

declare dso_local i64 @do_special_decoding(%struct.TYPE_16__*) #1

declare dso_local i32 @aarch64_decode_variant_using_iclass(%struct.TYPE_16__*) #1

declare dso_local i64 @operand_has_extractor(i32*) #1

declare dso_local i32 @aarch64_extract_operand(i32*, %struct.TYPE_14__*, i32, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @aarch64_match_operands_constraint(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @determine_disassembling_preference(%struct.TYPE_16__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
