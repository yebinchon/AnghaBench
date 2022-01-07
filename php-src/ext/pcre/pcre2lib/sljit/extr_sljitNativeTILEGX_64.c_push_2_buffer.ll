; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeTILEGX_64.c_push_2_buffer.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeTILEGX_64.c_push_2_buffer.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sljit_compiler*, i64, i32, i32, i32)* @push_2_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_2_buffer(%struct.sljit_compiler* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sljit_compiler*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tilegx_opcode*, align 8
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i64, i64* @inst_buf_index, align 8
  %13 = load i64, i64* @TILEGX_MAX_INSTRUCTIONS_PER_BUNDLE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load %struct.sljit_compiler*, %struct.sljit_compiler** %6, align 8
  %17 = call i32 @update_buffer(%struct.sljit_compiler* %16)
  %18 = call i32 @FAIL_IF(i32 %17)
  br label %19

19:                                               ; preds = %15, %5
  %20 = load %struct.tilegx_opcode*, %struct.tilegx_opcode** @tilegx_opcodes, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.tilegx_opcode, %struct.tilegx_opcode* %20, i64 %21
  store %struct.tilegx_opcode* %22, %struct.tilegx_opcode** %11, align 8
  %23 = load %struct.tilegx_opcode*, %struct.tilegx_opcode** %11, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %25 = load i64, i64* @inst_buf_index, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 5
  store %struct.tilegx_opcode* %23, %struct.tilegx_opcode** %27, align 8
  %28 = load %struct.tilegx_opcode*, %struct.tilegx_opcode** %11, align 8
  %29 = call i32 @get_any_valid_pipe(%struct.tilegx_opcode* %28)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %31 = load i64, i64* @inst_buf_index, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  store i32 %29, i32* %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %36 = load i64, i64* @inst_buf_index, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %34, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %43 = load i64, i64* @inst_buf_index, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %41, i32* %47, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %50 = load i64, i64* @inst_buf_index, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 8
  %53 = load i64, i64* %7, align 8
  switch i64 %53, label %93 [
    i64 141, label %54
    i64 140, label %54
    i64 131, label %62
    i64 130, label %62
    i64 129, label %62
    i64 128, label %62
    i64 139, label %78
    i64 138, label %78
    i64 136, label %78
    i64 137, label %78
    i64 134, label %78
    i64 135, label %78
    i64 132, label %78
    i64 133, label %78
  ]

54:                                               ; preds = %19, %19
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = shl i64 1, %56
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %59 = load i64, i64* @inst_buf_index, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store i64 %57, i64* %61, align 8
  br label %99

62:                                               ; preds = %19, %19, %19, %19
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = shl i64 1, %64
  %66 = load i32, i32* %9, align 4
  %67 = zext i32 %66 to i64
  %68 = shl i64 1, %67
  %69 = or i64 %65, %68
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %71 = load i64, i64* @inst_buf_index, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  store i64 %69, i64* %73, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %75 = load i64, i64* @inst_buf_index, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  store i64 0, i64* %77, align 8
  br label %99

78:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19
  %79 = load i32, i32* %9, align 4
  %80 = zext i32 %79 to i64
  %81 = shl i64 1, %80
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %83 = load i64, i64* @inst_buf_index, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  store i64 %81, i64* %85, align 8
  %86 = load i32, i32* %8, align 4
  %87 = zext i32 %86 to i64
  %88 = shl i64 1, %87
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %90 = load i64, i64* @inst_buf_index, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 3
  store i64 %88, i64* %92, align 8
  br label %99

93:                                               ; preds = %19
  %94 = load %struct.tilegx_opcode*, %struct.tilegx_opcode** %11, align 8
  %95 = getelementptr inbounds %struct.tilegx_opcode, %struct.tilegx_opcode* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %96)
  %98 = call i32 (...) @SLJIT_UNREACHABLE()
  br label %99

99:                                               ; preds = %93, %78, %62, %54
  %100 = load i64, i64* @inst_buf_index, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* @inst_buf_index, align 8
  %102 = load i32, i32* @SLJIT_SUCCESS, align 4
  ret i32 %102
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
