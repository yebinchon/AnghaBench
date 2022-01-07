; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeTILEGX_64.c_push_3_buffer.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeTILEGX_64.c_push_3_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tilegx_opcode = type { i8* }
%struct.TYPE_2__ = type { i32*, i32, i64, i64, i32, %struct.tilegx_opcode* }
%struct.sljit_compiler = type { i32 }

@inst_buf_index = common dso_local global i64 0, align 8
@TILEGX_MAX_INSTRUCTIONS_PER_BUNDLE = common dso_local global i64 0, align 8
@tilegx_opcodes = common dso_local global %struct.tilegx_opcode* null, align 8
@inst_buf = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"unrecoginzed opc: %s\0A\00", align 1
@SLJIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sljit_compiler*, i64, i32, i32, i32, i32)* @push_3_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_3_buffer(%struct.sljit_compiler* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sljit_compiler*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.tilegx_opcode*, align 8
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i64, i64* @inst_buf_index, align 8
  %15 = load i64, i64* @TILEGX_MAX_INSTRUCTIONS_PER_BUNDLE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %6
  %18 = load %struct.sljit_compiler*, %struct.sljit_compiler** %7, align 8
  %19 = call i32 @update_buffer(%struct.sljit_compiler* %18)
  %20 = call i32 @FAIL_IF(i32 %19)
  br label %21

21:                                               ; preds = %17, %6
  %22 = load %struct.tilegx_opcode*, %struct.tilegx_opcode** @tilegx_opcodes, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.tilegx_opcode, %struct.tilegx_opcode* %22, i64 %23
  store %struct.tilegx_opcode* %24, %struct.tilegx_opcode** %13, align 8
  %25 = load %struct.tilegx_opcode*, %struct.tilegx_opcode** %13, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %27 = load i64, i64* @inst_buf_index, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 5
  store %struct.tilegx_opcode* %25, %struct.tilegx_opcode** %29, align 8
  %30 = load %struct.tilegx_opcode*, %struct.tilegx_opcode** %13, align 8
  %31 = call i32 @get_any_valid_pipe(%struct.tilegx_opcode* %30)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %33 = load i64, i64* @inst_buf_index, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  store i32 %31, i32* %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %38 = load i64, i64* @inst_buf_index, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %36, i32* %42, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %45 = load i64, i64* @inst_buf_index, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %43, i32* %49, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %52 = load i64, i64* @inst_buf_index, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32 %50, i32* %56, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %59 = load i64, i64* @inst_buf_index, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %57, i32* %61, align 8
  %62 = load i64, i64* %8, align 8
  switch i64 %62, label %135 [
    i64 131, label %63
    i64 143, label %82
    i64 152, label %101
    i64 150, label %101
    i64 130, label %101
    i64 142, label %101
    i64 140, label %101
    i64 129, label %101
    i64 141, label %101
    i64 138, label %101
    i64 133, label %101
    i64 135, label %101
    i64 145, label %101
    i64 147, label %101
    i64 149, label %101
    i64 148, label %101
    i64 151, label %120
    i64 128, label %120
    i64 139, label %120
    i64 136, label %120
    i64 132, label %120
    i64 134, label %120
    i64 137, label %120
    i64 144, label %120
    i64 146, label %120
  ]

63:                                               ; preds = %21
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = shl i64 1, %65
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = shl i64 1, %68
  %70 = or i64 %66, %69
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %72 = load i64, i64* @inst_buf_index, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  store i64 %70, i64* %74, align 8
  %75 = load i32, i32* %9, align 4
  %76 = zext i32 %75 to i64
  %77 = shl i64 1, %76
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %79 = load i64, i64* @inst_buf_index, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  store i64 %77, i64* %81, align 8
  br label %141

82:                                               ; preds = %21
  %83 = load i32, i32* %10, align 4
  %84 = zext i32 %83 to i64
  %85 = shl i64 1, %84
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %87 = load i64, i64* @inst_buf_index, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  store i64 %85, i64* %89, align 8
  %90 = load i32, i32* %9, align 4
  %91 = zext i32 %90 to i64
  %92 = shl i64 1, %91
  %93 = load i32, i32* %10, align 4
  %94 = zext i32 %93 to i64
  %95 = shl i64 1, %94
  %96 = or i64 %92, %95
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %98 = load i64, i64* @inst_buf_index, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  store i64 %96, i64* %100, align 8
  br label %141

101:                                              ; preds = %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21
  %102 = load i32, i32* %10, align 4
  %103 = zext i32 %102 to i64
  %104 = shl i64 1, %103
  %105 = load i32, i32* %11, align 4
  %106 = zext i32 %105 to i64
  %107 = shl i64 1, %106
  %108 = or i64 %104, %107
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %110 = load i64, i64* @inst_buf_index, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  store i64 %108, i64* %112, align 8
  %113 = load i32, i32* %9, align 4
  %114 = zext i32 %113 to i64
  %115 = shl i64 1, %114
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %117 = load i64, i64* @inst_buf_index, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 3
  store i64 %115, i64* %119, align 8
  br label %141

120:                                              ; preds = %21, %21, %21, %21, %21, %21, %21, %21, %21
  %121 = load i32, i32* %10, align 4
  %122 = zext i32 %121 to i64
  %123 = shl i64 1, %122
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %125 = load i64, i64* @inst_buf_index, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  store i64 %123, i64* %127, align 8
  %128 = load i32, i32* %9, align 4
  %129 = zext i32 %128 to i64
  %130 = shl i64 1, %129
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %132 = load i64, i64* @inst_buf_index, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 3
  store i64 %130, i64* %134, align 8
  br label %141

135:                                              ; preds = %21
  %136 = load %struct.tilegx_opcode*, %struct.tilegx_opcode** %13, align 8
  %137 = getelementptr inbounds %struct.tilegx_opcode, %struct.tilegx_opcode* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %138)
  %140 = call i32 (...) @SLJIT_UNREACHABLE()
  br label %141

141:                                              ; preds = %135, %120, %101, %82, %63
  %142 = load i64, i64* @inst_buf_index, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* @inst_buf_index, align 8
  %144 = load i32, i32* @SLJIT_SUCCESS, align 4
  ret i32 %144
}

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @update_buffer(%struct.sljit_compiler*) #1

declare dso_local i32 @get_any_valid_pipe(%struct.tilegx_opcode*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @SLJIT_UNREACHABLE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
