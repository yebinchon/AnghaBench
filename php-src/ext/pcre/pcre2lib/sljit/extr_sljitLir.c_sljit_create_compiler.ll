; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitLir.c_sljit_create_compiler.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitLir.c_sljit_create_compiler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_compiler = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32*, i32*, %struct.sljit_compiler*, %struct.sljit_compiler*, i64, i32*, i8*, i32 }
%struct.sljit_memory_fragment = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32*, i32*, %struct.sljit_memory_fragment*, %struct.sljit_memory_fragment*, i64, i32*, i8*, i32 }

@invalid_integer_types = common dso_local global i32 0, align 4
@SLJIT_I32_OP = common dso_local global i64 0, align 8
@SLJIT_F32_OP = common dso_local global i64 0, align 8
@int_op_and_single_op_must_be_the_same = common dso_local global i32 0, align 4
@SLJIT_REWRITABLE_JUMP = common dso_local global i64 0, align 8
@rewritable_jump_and_single_op_must_not_be_the_same = common dso_local global i32 0, align 4
@SLJIT_EQUAL = common dso_local global i32 0, align 4
@SLJIT_LESS = common dso_local global i32 0, align 4
@SLJIT_EQUAL_F64 = common dso_local global i32 0, align 4
@SLJIT_JUMP = common dso_local global i32 0, align 4
@conditional_flags_must_be_even_numbers = common dso_local global i32 0, align 4
@SLJIT_SUCCESS = common dso_local global i32 0, align 4
@BUF_SIZE = common dso_local global i32 0, align 4
@ABUF_SIZE = common dso_local global i32 0, align 4
@CPOOL_SIZE = common dso_local global i32 0, align 4
@UNMOVABLE_INS = common dso_local global i8* null, align 8
@compiler_initialized = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sljit_compiler* @sljit_create_compiler(i8* %0) #0 {
  %2 = alloca %struct.sljit_compiler*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sljit_compiler*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i64 @SLJIT_MALLOC(i32 104, i8* %5)
  %7 = inttoptr i64 %6 to %struct.sljit_compiler*
  store %struct.sljit_compiler* %7, %struct.sljit_compiler** %4, align 8
  %8 = load %struct.sljit_compiler*, %struct.sljit_compiler** %4, align 8
  %9 = icmp ne %struct.sljit_compiler* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.sljit_compiler* null, %struct.sljit_compiler** %2, align 8
  br label %136

11:                                               ; preds = %1
  %12 = load %struct.sljit_compiler*, %struct.sljit_compiler** %4, align 8
  %13 = bitcast %struct.sljit_compiler* %12 to %struct.sljit_memory_fragment*
  %14 = call i32 @SLJIT_ZEROMEM(%struct.sljit_memory_fragment* %13, i32 104)
  %15 = load i32, i32* @invalid_integer_types, align 4
  %16 = call i32 @SLJIT_COMPILE_ASSERT(i32 0, i32 %15)
  %17 = load i64, i64* @SLJIT_I32_OP, align 8
  %18 = load i64, i64* @SLJIT_F32_OP, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* @int_op_and_single_op_must_be_the_same, align 4
  %22 = call i32 @SLJIT_COMPILE_ASSERT(i32 %20, i32 %21)
  %23 = load i64, i64* @SLJIT_REWRITABLE_JUMP, align 8
  %24 = load i64, i64* @SLJIT_F32_OP, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* @rewritable_jump_and_single_op_must_not_be_the_same, align 4
  %28 = call i32 @SLJIT_COMPILE_ASSERT(i32 %26, i32 %27)
  %29 = load i32, i32* @SLJIT_EQUAL, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %11
  %33 = load i32, i32* @SLJIT_LESS, align 4
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @SLJIT_EQUAL_F64, align 4
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @SLJIT_JUMP, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %40, %36, %32, %11
  %46 = phi i1 [ false, %36 ], [ false, %32 ], [ false, %11 ], [ %44, %40 ]
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* @conditional_flags_must_be_even_numbers, align 4
  %49 = call i32 @SLJIT_COMPILE_ASSERT(i32 %47, i32 %48)
  %50 = load i32, i32* @SLJIT_SUCCESS, align 4
  %51 = load %struct.sljit_compiler*, %struct.sljit_compiler** %4, align 8
  %52 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %51, i32 0, i32 15
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = load %struct.sljit_compiler*, %struct.sljit_compiler** %4, align 8
  %55 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %54, i32 0, i32 14
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @BUF_SIZE, align 4
  %57 = load i8*, i8** %3, align 8
  %58 = call i64 @SLJIT_MALLOC(i32 %56, i8* %57)
  %59 = inttoptr i64 %58 to %struct.sljit_memory_fragment*
  %60 = bitcast %struct.sljit_memory_fragment* %59 to %struct.sljit_compiler*
  %61 = load %struct.sljit_compiler*, %struct.sljit_compiler** %4, align 8
  %62 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %61, i32 0, i32 11
  store %struct.sljit_compiler* %60, %struct.sljit_compiler** %62, align 8
  %63 = load i32, i32* @ABUF_SIZE, align 4
  %64 = load i8*, i8** %3, align 8
  %65 = call i64 @SLJIT_MALLOC(i32 %63, i8* %64)
  %66 = inttoptr i64 %65 to %struct.sljit_memory_fragment*
  %67 = bitcast %struct.sljit_memory_fragment* %66 to %struct.sljit_compiler*
  %68 = load %struct.sljit_compiler*, %struct.sljit_compiler** %4, align 8
  %69 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %68, i32 0, i32 10
  store %struct.sljit_compiler* %67, %struct.sljit_compiler** %69, align 8
  %70 = load %struct.sljit_compiler*, %struct.sljit_compiler** %4, align 8
  %71 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %70, i32 0, i32 11
  %72 = load %struct.sljit_compiler*, %struct.sljit_compiler** %71, align 8
  %73 = icmp ne %struct.sljit_compiler* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %45
  %75 = load %struct.sljit_compiler*, %struct.sljit_compiler** %4, align 8
  %76 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %75, i32 0, i32 10
  %77 = load %struct.sljit_compiler*, %struct.sljit_compiler** %76, align 8
  %78 = icmp ne %struct.sljit_compiler* %77, null
  br i1 %78, label %108, label %79

79:                                               ; preds = %74, %45
  %80 = load %struct.sljit_compiler*, %struct.sljit_compiler** %4, align 8
  %81 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %80, i32 0, i32 11
  %82 = load %struct.sljit_compiler*, %struct.sljit_compiler** %81, align 8
  %83 = icmp ne %struct.sljit_compiler* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load %struct.sljit_compiler*, %struct.sljit_compiler** %4, align 8
  %86 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %85, i32 0, i32 11
  %87 = load %struct.sljit_compiler*, %struct.sljit_compiler** %86, align 8
  %88 = bitcast %struct.sljit_compiler* %87 to %struct.sljit_memory_fragment*
  %89 = load i8*, i8** %3, align 8
  %90 = call i32 @SLJIT_FREE(%struct.sljit_memory_fragment* %88, i8* %89)
  br label %91

91:                                               ; preds = %84, %79
  %92 = load %struct.sljit_compiler*, %struct.sljit_compiler** %4, align 8
  %93 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %92, i32 0, i32 10
  %94 = load %struct.sljit_compiler*, %struct.sljit_compiler** %93, align 8
  %95 = icmp ne %struct.sljit_compiler* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load %struct.sljit_compiler*, %struct.sljit_compiler** %4, align 8
  %98 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %97, i32 0, i32 10
  %99 = load %struct.sljit_compiler*, %struct.sljit_compiler** %98, align 8
  %100 = bitcast %struct.sljit_compiler* %99 to %struct.sljit_memory_fragment*
  %101 = load i8*, i8** %3, align 8
  %102 = call i32 @SLJIT_FREE(%struct.sljit_memory_fragment* %100, i8* %101)
  br label %103

103:                                              ; preds = %96, %91
  %104 = load %struct.sljit_compiler*, %struct.sljit_compiler** %4, align 8
  %105 = bitcast %struct.sljit_compiler* %104 to %struct.sljit_memory_fragment*
  %106 = load i8*, i8** %3, align 8
  %107 = call i32 @SLJIT_FREE(%struct.sljit_memory_fragment* %105, i8* %106)
  store %struct.sljit_compiler* null, %struct.sljit_compiler** %2, align 8
  br label %136

108:                                              ; preds = %74
  %109 = load %struct.sljit_compiler*, %struct.sljit_compiler** %4, align 8
  %110 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %109, i32 0, i32 11
  %111 = load %struct.sljit_compiler*, %struct.sljit_compiler** %110, align 8
  %112 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %111, i32 0, i32 13
  store i32* null, i32** %112, align 8
  %113 = load %struct.sljit_compiler*, %struct.sljit_compiler** %4, align 8
  %114 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %113, i32 0, i32 11
  %115 = load %struct.sljit_compiler*, %struct.sljit_compiler** %114, align 8
  %116 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %115, i32 0, i32 12
  store i64 0, i64* %116, align 8
  %117 = load %struct.sljit_compiler*, %struct.sljit_compiler** %4, align 8
  %118 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %117, i32 0, i32 10
  %119 = load %struct.sljit_compiler*, %struct.sljit_compiler** %118, align 8
  %120 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %119, i32 0, i32 13
  store i32* null, i32** %120, align 8
  %121 = load %struct.sljit_compiler*, %struct.sljit_compiler** %4, align 8
  %122 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %121, i32 0, i32 10
  %123 = load %struct.sljit_compiler*, %struct.sljit_compiler** %122, align 8
  %124 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %123, i32 0, i32 12
  store i64 0, i64* %124, align 8
  %125 = load %struct.sljit_compiler*, %struct.sljit_compiler** %4, align 8
  %126 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %125, i32 0, i32 0
  store i32 -1, i32* %126, align 8
  %127 = load %struct.sljit_compiler*, %struct.sljit_compiler** %4, align 8
  %128 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %127, i32 0, i32 1
  store i32 -1, i32* %128, align 4
  %129 = load %struct.sljit_compiler*, %struct.sljit_compiler** %4, align 8
  %130 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %129, i32 0, i32 2
  store i32 -1, i32* %130, align 8
  %131 = load %struct.sljit_compiler*, %struct.sljit_compiler** %4, align 8
  %132 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %131, i32 0, i32 3
  store i32 -1, i32* %132, align 4
  %133 = load %struct.sljit_compiler*, %struct.sljit_compiler** %4, align 8
  %134 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %133, i32 0, i32 4
  store i32 -1, i32* %134, align 8
  %135 = load %struct.sljit_compiler*, %struct.sljit_compiler** %4, align 8
  store %struct.sljit_compiler* %135, %struct.sljit_compiler** %2, align 8
  br label %136

136:                                              ; preds = %108, %103, %10
  %137 = load %struct.sljit_compiler*, %struct.sljit_compiler** %2, align 8
  ret %struct.sljit_compiler* %137
}

declare dso_local i64 @SLJIT_MALLOC(i32, i8*) #1

declare dso_local i32 @SLJIT_ZEROMEM(%struct.sljit_memory_fragment*, i32) #1

declare dso_local i32 @SLJIT_COMPILE_ASSERT(i32, i32) #1

declare dso_local i32 @SLJIT_FREE(%struct.sljit_memory_fragment*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
