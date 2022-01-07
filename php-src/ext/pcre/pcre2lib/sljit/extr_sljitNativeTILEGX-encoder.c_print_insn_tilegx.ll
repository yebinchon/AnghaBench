; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeTILEGX-encoder.c_print_insn_tilegx.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeTILEGX-encoder.c_print_insn_tilegx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tilegx_opcode = type { i64, i8*, i32, i32 }
%struct.tilegx_operand = type { i32 }
%struct.tilegx_decoded_instruction = type { i64*, %struct.tilegx_operand**, %struct.tilegx_opcode* }

@TILEGX_MAX_INSTRUCTIONS_PER_BUNDLE = common dso_local global i32 0, align 4
@TILEGX_BUNDLE_SIZE_IN_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@TILEGX_OPC_FNOP = common dso_local global i64 0, align 8
@TILEGX_OPC_NOP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c" ; \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"<invalid>\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@tilegx_register_names = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"0x%016llx\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" }\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @print_insn_tilegx(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.tilegx_opcode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.tilegx_operand*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %16 = load i32, i32* @TILEGX_MAX_INSTRUCTIONS_PER_BUNDLE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %3, align 8
  %19 = alloca %struct.tilegx_decoded_instruction, i64 %17, align 16
  store i64 %17, i64* %4, align 8
  %20 = load i32, i32* @TILEGX_BUNDLE_SIZE_IN_BYTES, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %5, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = load i32, i32* @TILEGX_BUNDLE_SIZE_IN_BYTES, align 4
  %25 = call i32 @memcpy(i8* %22, i8* %23, i32 %24)
  %26 = bitcast i8* %22 to i64*
  %27 = load i64, i64* %26, align 16
  %28 = load i8*, i8** %2, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = call i32 @parse_insn_tilegx(i64 %27, i64 %29, %struct.tilegx_decoded_instruction* %19)
  store i32 %30, i32* %7, align 4
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  %32 = load i64, i64* @TILEGX_OPC_FNOP, align 8
  store i64 %32, i64* %9, align 8
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %49, %1
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.tilegx_decoded_instruction, %struct.tilegx_decoded_instruction* %19, i64 %39
  %41 = getelementptr inbounds %struct.tilegx_decoded_instruction, %struct.tilegx_decoded_instruction* %40, i32 0, i32 2
  %42 = load %struct.tilegx_opcode*, %struct.tilegx_opcode** %41, align 8
  %43 = getelementptr inbounds %struct.tilegx_opcode, %struct.tilegx_opcode* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %37
  %47 = load i64, i64* @TILEGX_OPC_NOP, align 8
  store i64 %47, i64* %9, align 8
  br label %52

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %33

52:                                               ; preds = %46, %33
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %163, %52
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %166

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.tilegx_decoded_instruction, %struct.tilegx_decoded_instruction* %19, i64 %59
  %61 = getelementptr inbounds %struct.tilegx_decoded_instruction, %struct.tilegx_decoded_instruction* %60, i32 0, i32 2
  %62 = load %struct.tilegx_opcode*, %struct.tilegx_opcode** %61, align 8
  store %struct.tilegx_opcode* %62, %struct.tilegx_opcode** %10, align 8
  %63 = load %struct.tilegx_opcode*, %struct.tilegx_opcode** %10, align 8
  %64 = getelementptr inbounds %struct.tilegx_opcode, %struct.tilegx_opcode* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %57
  %69 = load i32, i32* %8, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71, %68
  br label %163

77:                                               ; preds = %71, %57
  %78 = load i32, i32* %8, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %77
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  %85 = load %struct.tilegx_opcode*, %struct.tilegx_opcode** %10, align 8
  %86 = getelementptr inbounds %struct.tilegx_opcode, %struct.tilegx_opcode* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %11, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %91

91:                                               ; preds = %90, %82
  %92 = load i8*, i8** %11, align 8
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %92)
  store i32 0, i32* %12, align 4
  br label %94

94:                                               ; preds = %159, %91
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.tilegx_opcode*, %struct.tilegx_opcode** %10, align 8
  %97 = getelementptr inbounds %struct.tilegx_opcode, %struct.tilegx_opcode* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %162

100:                                              ; preds = %94
  %101 = load i32, i32* %12, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %100
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.tilegx_decoded_instruction, %struct.tilegx_decoded_instruction* %19, i64 %108
  %110 = getelementptr inbounds %struct.tilegx_decoded_instruction, %struct.tilegx_decoded_instruction* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %13, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.tilegx_decoded_instruction, %struct.tilegx_decoded_instruction* %19, i64 %117
  %119 = getelementptr inbounds %struct.tilegx_decoded_instruction, %struct.tilegx_decoded_instruction* %118, i32 0, i32 1
  %120 = load %struct.tilegx_operand**, %struct.tilegx_operand*** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.tilegx_operand*, %struct.tilegx_operand** %120, i64 %122
  %124 = load %struct.tilegx_operand*, %struct.tilegx_operand** %123, align 8
  store %struct.tilegx_operand* %124, %struct.tilegx_operand** %14, align 8
  %125 = load %struct.tilegx_operand*, %struct.tilegx_operand** %14, align 8
  %126 = getelementptr inbounds %struct.tilegx_operand, %struct.tilegx_operand* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  switch i32 %127, label %156 [
    i32 129, label %128
    i32 128, label %136
    i32 130, label %149
    i32 131, label %153
  ]

128:                                              ; preds = %105
  %129 = load i8**, i8*** @tilegx_register_names, align 8
  %130 = load i64, i64* %13, align 8
  %131 = trunc i64 %130 to i32
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %129, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %134)
  br label %158

136:                                              ; preds = %105
  %137 = load i64, i64* %13, align 8
  %138 = call i8* @get_tilegx_spr_name(i64 %137)
  store i8* %138, i8** %15, align 8
  %139 = load i8*, i8** %15, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i8*, i8** %15, align 8
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %142)
  br label %148

144:                                              ; preds = %136
  %145 = load i64, i64* %13, align 8
  %146 = trunc i64 %145 to i32
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %144, %141
  br label %158

149:                                              ; preds = %105
  %150 = load i64, i64* %13, align 8
  %151 = trunc i64 %150 to i32
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %151)
  br label %158

153:                                              ; preds = %105
  %154 = load i64, i64* %13, align 8
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i64 %154)
  br label %158

156:                                              ; preds = %105
  %157 = call i32 (...) @abort() #4
  unreachable

158:                                              ; preds = %153, %149, %148, %128
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %12, align 4
  br label %94

162:                                              ; preds = %94
  br label %163

163:                                              ; preds = %162, %76
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %6, align 4
  br label %53

166:                                              ; preds = %53
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %168 = load i32, i32* @TILEGX_BUNDLE_SIZE_IN_BYTES, align 4
  %169 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %169)
  ret i32 %168
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @parse_insn_tilegx(i64, i64, %struct.tilegx_decoded_instruction*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @get_tilegx_spr_name(i64) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
