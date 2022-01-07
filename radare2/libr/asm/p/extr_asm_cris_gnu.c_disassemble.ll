; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_cris_gnu.c_disassemble.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_cris_gnu.c_disassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.disassemble_info = type { i8*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32 }

@buf_global = common dso_local global i32* null, align 8
@Offset = common dso_local global i32 0, align 4
@bytes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"64\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@cris_buffer_read_memory = common dso_local global i32 0, align 4
@symbol_at_address = common dso_local global i32 0, align 4
@memory_error_func = common dso_local global i32 0, align 4
@generic_print_address_func = common dso_local global i32 0, align 4
@generic_fprintf_func = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"v10\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"v32\00", align 1
@R_ASM_SYNTAX_ATT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"(data)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*, i32*, i32)* @disassemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disassemble(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.disassemble_info, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 2, i32* %11, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %133

15:                                               ; preds = %4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i32* %17, i32** @buf_global, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* @Offset, align 4
  %21 = load i32, i32* @bytes, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @R_MIN(i32 %23, i32 8)
  %25 = call i32 @memcpy(i32 %21, i32* %22, i32 %24)
  %26 = call i32 @memset(%struct.disassemble_info* %10, i8 signext 0, i32 64)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 64
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %33 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %10, i32 0, i32 0
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* @bytes, align 4
  %35 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %10, i32 0, i32 8
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %10, i32 0, i32 7
  store i32* @cris_buffer_read_memory, i32** %36, align 8
  %37 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %10, i32 0, i32 6
  store i32* @symbol_at_address, i32** %37, align 8
  %38 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %10, i32 0, i32 5
  store i32* @memory_error_func, i32** %38, align 8
  %39 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %10, i32 0, i32 4
  store i32* @generic_print_address_func, i32** %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %10, i32 0, i32 1
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %10, i32 0, i32 3
  store i32* @generic_fprintf_func, i32** %47, align 8
  %48 = load i32, i32* @stdout, align 4
  %49 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %10, i32 0, i32 2
  store i32 %48, i32* %49, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = icmp ne i64* %52, null
  br i1 %53, label %54, label %75

54:                                               ; preds = %15
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %54
  store i32 0, i32* %11, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = call i64 @strstr(i64* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 1, i32* %11, align 4
  br label %67

67:                                               ; preds = %66, %60
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i64*, i64** %69, align 8
  %71 = call i64 @strstr(i64* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 2, i32* %11, align 4
  br label %74

74:                                               ; preds = %73, %67
  br label %76

75:                                               ; preds = %54, %15
  store i32 2, i32* %11, align 4
  br label %76

76:                                               ; preds = %75, %74
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @cris_parse_disassembler_options(%struct.disassemble_info* %10, i32 %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @R_ASM_SYNTAX_ATT, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %76
  %85 = load i32, i32* %11, align 4
  switch i32 %85, label %96 [
    i32 0, label %86
    i32 1, label %91
  ]

86:                                               ; preds = %84
  %87 = load i32, i32* @Offset, align 4
  %88 = call i32 @print_insn_cris_with_register_prefix(i32 %87, %struct.disassemble_info* %10)
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  br label %101

91:                                               ; preds = %84
  %92 = load i32, i32* @Offset, align 4
  %93 = call i32 @print_insn_crisv10_v32_with_register_prefix(i32 %92, %struct.disassemble_info* %10)
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  br label %101

96:                                               ; preds = %84
  %97 = load i32, i32* @Offset, align 4
  %98 = call i32 @print_insn_crisv32_with_register_prefix(i32 %97, %struct.disassemble_info* %10)
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %96, %91, %86
  br label %120

102:                                              ; preds = %76
  %103 = load i32, i32* %11, align 4
  switch i32 %103, label %114 [
    i32 0, label %104
    i32 1, label %109
  ]

104:                                              ; preds = %102
  %105 = load i32, i32* @Offset, align 4
  %106 = call i32 @print_insn_cris_without_register_prefix(i32 %105, %struct.disassemble_info* %10)
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  br label %119

109:                                              ; preds = %102
  %110 = load i32, i32* @Offset, align 4
  %111 = call i32 @print_insn_crisv10_v32_without_register_prefix(i32 %110, %struct.disassemble_info* %10)
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  br label %119

114:                                              ; preds = %102
  %115 = load i32, i32* @Offset, align 4
  %116 = call i32 @print_insn_crisv32_without_register_prefix(i32 %115, %struct.disassemble_info* %10)
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %114, %109, %104
  br label %120

120:                                              ; preds = %119, %101
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = call i32 @r_strbuf_set(i32* %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %129

129:                                              ; preds = %125, %120
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %129, %14
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @R_MIN(i32, i32) #1

declare dso_local i32 @memset(%struct.disassemble_info*, i8 signext, i32) #1

declare dso_local i64 @strstr(i64*, i8*) #1

declare dso_local i32 @cris_parse_disassembler_options(%struct.disassemble_info*, i32) #1

declare dso_local i32 @print_insn_cris_with_register_prefix(i32, %struct.disassemble_info*) #1

declare dso_local i32 @print_insn_crisv10_v32_with_register_prefix(i32, %struct.disassemble_info*) #1

declare dso_local i32 @print_insn_crisv32_with_register_prefix(i32, %struct.disassemble_info*) #1

declare dso_local i32 @print_insn_cris_without_register_prefix(i32, %struct.disassemble_info*) #1

declare dso_local i32 @print_insn_crisv10_v32_without_register_prefix(i32, %struct.disassemble_info*) #1

declare dso_local i32 @print_insn_crisv32_without_register_prefix(i32, %struct.disassemble_info*) #1

declare dso_local i32 @r_strbuf_set(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
