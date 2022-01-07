; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeTILEGX_64.c_push_jr_buffer.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeTILEGX_64.c_push_jr_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tilegx_opcode = type { i32 }
%struct.TYPE_2__ = type { i32*, i64, i32, i64, i32, %struct.tilegx_opcode* }
%struct.sljit_compiler = type { i32 }

@inst_buf_index = common dso_local global i64 0, align 8
@TILEGX_MAX_INSTRUCTIONS_PER_BUNDLE = common dso_local global i64 0, align 8
@tilegx_opcodes = common dso_local global %struct.tilegx_opcode* null, align 8
@inst_buf = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sljit_compiler*, i64, i32, i32)* @push_jr_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_jr_buffer(%struct.sljit_compiler* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sljit_compiler*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tilegx_opcode*, align 8
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* @inst_buf_index, align 8
  %11 = load i64, i64* @TILEGX_MAX_INSTRUCTIONS_PER_BUNDLE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %15 = call i32 @update_buffer(%struct.sljit_compiler* %14)
  %16 = call i32 @FAIL_IF(i32 %15)
  br label %17

17:                                               ; preds = %13, %4
  %18 = load %struct.tilegx_opcode*, %struct.tilegx_opcode** @tilegx_opcodes, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.tilegx_opcode, %struct.tilegx_opcode* %18, i64 %19
  store %struct.tilegx_opcode* %20, %struct.tilegx_opcode** %9, align 8
  %21 = load %struct.tilegx_opcode*, %struct.tilegx_opcode** %9, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %23 = load i64, i64* @inst_buf_index, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 5
  store %struct.tilegx_opcode* %21, %struct.tilegx_opcode** %25, align 8
  %26 = load %struct.tilegx_opcode*, %struct.tilegx_opcode** %9, align 8
  %27 = call i32 @get_any_valid_pipe(%struct.tilegx_opcode* %26)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %29 = load i64, i64* @inst_buf_index, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  store i32 %27, i32* %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %34 = load i64, i64* @inst_buf_index, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %32, i32* %38, align 4
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = shl i64 1, %40
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %43 = load i64, i64* @inst_buf_index, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i64 %41, i64* %45, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %47 = load i64, i64* @inst_buf_index, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @inst_buf, align 8
  %52 = load i64, i64* @inst_buf_index, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store i32 %50, i32* %54, align 8
  %55 = load i64, i64* @inst_buf_index, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* @inst_buf_index, align 8
  %57 = load %struct.sljit_compiler*, %struct.sljit_compiler** %5, align 8
  %58 = call i32 @flush_buffer(%struct.sljit_compiler* %57)
  ret i32 %58
}

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @update_buffer(%struct.sljit_compiler*) #1

declare dso_local i32 @get_any_valid_pipe(%struct.tilegx_opcode*) #1

declare dso_local i32 @flush_buffer(%struct.sljit_compiler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
