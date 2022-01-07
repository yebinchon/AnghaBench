; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeTILEGX_64.c_push_4_buffer.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeTILEGX_64.c_push_4_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tilegx_opcode = type { i32 }
%struct.TYPE_2__ = type { i32*, i64, i64, i32, i32, %struct.tilegx_opcode* }
%struct.sljit_compiler = type { i32 }

@inst_buf_index = common dso_local global i64 0, align 8
@TILEGX_MAX_INSTRUCTIONS_PER_BUNDLE = common dso_local global i64 0, align 8
@tilegx_opcodes = common dso_local global %struct.tilegx_opcode* null, align 8
@inst_buf = common dso_local global %struct.TYPE_2__* null, align 8
@SLJIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sljit_compiler*, i64, i32, i32, i32, i32, i32)* @push_4_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_4_buffer(%struct.sljit_compiler* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.sljit_compiler*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.tilegx_opcode*, align 8
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i64, i64* @inst_buf_index, align 8
  %17 = load i64, i64* @TILEGX_MAX_INSTRUCTIONS_PER_BUNDLE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %7
  %20 = load %struct.sljit_compiler*, %struct.sljit_compiler** %8, align 8
  %21 = call i32 @update_buffer(%struct.sljit_compiler* %20)
  %22 = call i32 @FAIL_IF(i32 %21)
  br label %23

23:                                               ; preds = %19, %7
  %24 = load %struct.tilegx_opcode*, %struct.tilegx_opcode** @tilegx_opcodes, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds %struct.tilegx_opcode, %struct.tilegx_opcode* %24, i64 %25
  store %struct.tilegx_opcode* %26, %struct.tilegx_opcode** %15, align 8
  %27 = load %struct.tilegx_opcode*, %struct.tilegx_opcode** %15, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %29 = load i64, i64* @inst_buf_index, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 5
  store %struct.tilegx_opcode* %27, %struct.tilegx_opcode** %31, align 8
  %32 = load %struct.tilegx_opcode*, %struct.tilegx_opcode** %15, align 8
  %33 = call i32 @get_any_valid_pipe(%struct.tilegx_opcode* %32)
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %35 = load i64, i64* @inst_buf_index, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %40 = load i64, i64* @inst_buf_index, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %38, i32* %44, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %47 = load i64, i64* @inst_buf_index, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 %45, i32* %51, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %54 = load i64, i64* @inst_buf_index, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  store i32 %52, i32* %58, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %61 = load i64, i64* @inst_buf_index, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  store i32 %59, i32* %65, align 4
  %66 = load i32, i32* %11, align 4
  %67 = zext i32 %66 to i64
  %68 = shl i64 1, %67
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %70 = load i64, i64* @inst_buf_index, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i64 %68, i64* %72, align 8
  %73 = load i32, i32* %10, align 4
  %74 = zext i32 %73 to i64
  %75 = shl i64 1, %74
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %77 = load i64, i64* @inst_buf_index, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  store i64 %75, i64* %79, align 8
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %82 = load i64, i64* @inst_buf_index, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  store i32 %80, i32* %84, align 8
  %85 = load i64, i64* @inst_buf_index, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* @inst_buf_index, align 8
  %87 = load i32, i32* @SLJIT_SUCCESS, align 4
  ret i32 %87
}

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @update_buffer(%struct.sljit_compiler*) #1

declare dso_local i32 @get_any_valid_pipe(%struct.tilegx_opcode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
