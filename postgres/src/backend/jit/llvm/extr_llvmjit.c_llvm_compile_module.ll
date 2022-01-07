; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/jit/llvm/extr_llvmjit.c_llvm_compile_module.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/jit/llvm/extr_llvmjit.c_llvm_compile_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, i32, i32*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32 }

@llvm_compile_module.compile_orc = internal global i32 0, align 4
@PGJIT_OPT3 = common dso_local global i32 0, align 4
@llvm_opt3_orc = common dso_local global i32 0, align 4
@llvm_opt0_orc = common dso_local global i32 0, align 4
@PGJIT_INLINE = common dso_local global i32 0, align 4
@jit_dump_bitcode = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"%u.%zu.bc\00", align 1
@MyProcPid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%u.%zu.optimized.bc\00", align 1
@llvm_resolve_symbol = common dso_local global i32 0, align 4
@TopMemoryContext = common dso_local global i32 0, align 4
@DEBUG1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"time to inline: %.3fs, opt: %.3fs, emit: %.3fs\00", align 1
@ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @llvm_compile_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llvm_compile_module(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PGJIT_OPT3, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @llvm_opt3_orc, align 4
  store i32 %18, i32* @llvm_compile_module.compile_orc, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @llvm_opt0_orc, align 4
  store i32 %20, i32* @llvm_compile_module.compile_orc, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PGJIT_INLINE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @INSTR_TIME_SET_CURRENT(i32 %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @llvm_inline(i32* %34)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @INSTR_TIME_SET_CURRENT(i32 %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @INSTR_TIME_ACCUM_DIFF(i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %29, %21
  %47 = load i64, i64* @jit_dump_bitcode, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = load i32, i32* @MyProcPid, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @psprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53)
  store i8* %54, i8** %7, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @LLVMWriteBitcodeToFile(i32* %57, i8* %58)
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @pfree(i8* %60)
  br label %62

62:                                               ; preds = %49, %46
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @INSTR_TIME_SET_CURRENT(i32 %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @llvm_optimize_module(%struct.TYPE_11__* %65, i32* %68)
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @INSTR_TIME_SET_CURRENT(i32 %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @INSTR_TIME_ACCUM_DIFF(i32 %76, i32 %77, i32 %78)
  %80 = load i64, i64* @jit_dump_bitcode, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %62
  %83 = load i32, i32* @MyProcPid, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = call i8* @psprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %86)
  store i8* %87, i8** %8, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @LLVMWriteBitcodeToFile(i32* %90, i8* %91)
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @pfree(i8* %93)
  br label %95

95:                                               ; preds = %82, %62
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @INSTR_TIME_SET_CURRENT(i32 %96)
  %98 = load i32, i32* @llvm_compile_module.compile_orc, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* @llvm_resolve_symbol, align 4
  %103 = call i64 (i32, i32*, i32, i32*, ...) @LLVMOrcAddEagerlyCompiledIR(i32 %98, i32* %101, i32 %102, i32* null)
  store i64 %103, i64* %3, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @LLVMDisposeModule(i32* %106)
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @INSTR_TIME_SET_CURRENT(i32 %108)
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @INSTR_TIME_ACCUM_DIFF(i32 %114, i32 %115, i32 %116)
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 3
  store i32* null, i32** %119, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  store i32 1, i32* %121, align 8
  %122 = load i32, i32* @TopMemoryContext, align 4
  %123 = call i32 @MemoryContextSwitchTo(i32 %122)
  store i32 %123, i32* %4, align 4
  %124 = call i64 @palloc(i32 16)
  %125 = inttoptr i64 %124 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %125, %struct.TYPE_10__** %9, align 8
  %126 = load i32, i32* @llvm_compile_module.compile_orc, align 4
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 8
  %129 = load i64, i64* %3, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %136 = call i32 @lappend(i32 %134, %struct.TYPE_10__* %135)
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %4, align 4
  %140 = call i32 @MemoryContextSwitchTo(i32 %139)
  %141 = load i32, i32* @DEBUG1, align 4
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @INSTR_TIME_GET_DOUBLE(i32 %146)
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @INSTR_TIME_GET_DOUBLE(i32 %152)
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @INSTR_TIME_GET_DOUBLE(i32 %158)
  %160 = call i32 @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %147, i32 %153, i32 %159)
  %161 = call i32 @errhidestmt(i32 1)
  %162 = call i32 @errhidecontext(i32 1)
  %163 = call i32 @ereport(i32 %141, i32 %162)
  ret void
}

declare dso_local i32 @INSTR_TIME_SET_CURRENT(i32) #1

declare dso_local i32 @llvm_inline(i32*) #1

declare dso_local i32 @INSTR_TIME_ACCUM_DIFF(i32, i32, i32) #1

declare dso_local i8* @psprintf(i8*, i32, i32) #1

declare dso_local i32 @LLVMWriteBitcodeToFile(i32*, i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @llvm_optimize_module(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @LLVMOrcAddEagerlyCompiledIR(i32, i32*, i32, i32*, ...) #1

declare dso_local i32 @LLVMDisposeModule(i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @lappend(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32, i32) #1

declare dso_local i32 @INSTR_TIME_GET_DOUBLE(i32) #1

declare dso_local i32 @errhidestmt(i32) #1

declare dso_local i32 @errhidecontext(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
