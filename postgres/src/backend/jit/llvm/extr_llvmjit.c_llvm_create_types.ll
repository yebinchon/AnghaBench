; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/jit/llvm/extr_llvmjit.c_llvm_create_types.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/jit/llvm/extr_llvmjit.c_llvm_create_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@pkglib_path = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"llvmjit_types.bc\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"LLVMCreateMemoryBufferWithContentsOfFile(%s) failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"LLVMParseBitcode2 of %s failed\00", align 1
@llvm_triple = common dso_local global i8* null, align 8
@llvm_layout = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"TypeSizeT\00", align 1
@TypeSizeT = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"FunctionReturningBool\00", align 1
@TypeParamBool = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"TypeStorageBool\00", align 1
@TypeStorageBool = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"TypePGFunction\00", align 1
@TypePGFunction = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"StructNullableDatum\00", align 1
@StructNullableDatum = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [18 x i8] c"StructExprContext\00", align 1
@StructExprContext = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [19 x i8] c"StructExprEvalStep\00", align 1
@StructExprEvalStep = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [16 x i8] c"StructExprState\00", align 1
@StructExprState = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [27 x i8] c"StructFunctionCallInfoData\00", align 1
@StructFunctionCallInfoData = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [24 x i8] c"StructMemoryContextData\00", align 1
@StructMemoryContextData = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [21 x i8] c"StructTupleTableSlot\00", align 1
@StructTupleTableSlot = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [25 x i8] c"StructHeapTupleTableSlot\00", align 1
@StructHeapTupleTableSlot = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [28 x i8] c"StructMinimalTupleTableSlot\00", align 1
@StructMinimalTupleTableSlot = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [20 x i8] c"StructHeapTupleData\00", align 1
@StructHeapTupleData = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [20 x i8] c"StructTupleDescData\00", align 1
@StructTupleDescData = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [15 x i8] c"StructAggState\00", align 1
@StructAggState = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [27 x i8] c"StructAggStatePerGroupData\00", align 1
@StructAggStatePerGroupData = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [27 x i8] c"StructAggStatePerTransData\00", align 1
@StructAggStatePerTransData = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [18 x i8] c"AttributeTemplate\00", align 1
@AttributeTemplate = common dso_local global i8* null, align 8
@.str.23 = private unnamed_addr constant [7 x i8] c"strlen\00", align 1
@FuncStrlen = common dso_local global i8* null, align 8
@.str.24 = private unnamed_addr constant [12 x i8] c"varsize_any\00", align 1
@FuncVarsizeAny = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [22 x i8] c"slot_getsomeattrs_int\00", align 1
@FuncSlotGetsomeattrsInt = common dso_local global i8* null, align 8
@.str.26 = private unnamed_addr constant [21 x i8] c"slot_getmissingattrs\00", align 1
@FuncSlotGetmissingattrs = common dso_local global i8* null, align 8
@.str.27 = private unnamed_addr constant [35 x i8] c"MakeExpandedObjectReadOnlyInternal\00", align 1
@FuncMakeExpandedObjectReadOnlyInternal = common dso_local global i8* null, align 8
@.str.28 = private unnamed_addr constant [24 x i8] c"ExecEvalSubscriptingRef\00", align 1
@FuncExecEvalSubscriptingRef = common dso_local global i8* null, align 8
@.str.29 = private unnamed_addr constant [15 x i8] c"ExecEvalSysVar\00", align 1
@FuncExecEvalSysVar = common dso_local global i8* null, align 8
@.str.30 = private unnamed_addr constant [21 x i8] c"ExecAggTransReparent\00", align 1
@FuncExecAggTransReparent = common dso_local global i8* null, align 8
@.str.31 = private unnamed_addr constant [17 x i8] c"ExecAggInitGroup\00", align 1
@FuncExecAggInitGroup = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @llvm_create_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llvm_create_types() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = load i32, i32* @MAXPGPATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %1, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %2, align 8
  store i32* null, i32** %5, align 8
  %10 = load i32, i32* @MAXPGPATH, align 4
  %11 = load i8*, i8** @pkglib_path, align 8
  %12 = call i32 @snprintf(i8* %9, i32 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i64 @LLVMCreateMemoryBufferWithContentsOfFile(i8* %9, i32* %3, i8** %4)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %0
  %16 = load i32, i32* @ERROR, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 (i32, i8*, i8*, ...) @elog(i32 %16, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i8* %9, i8* %17)
  br label %19

19:                                               ; preds = %15, %0
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @LLVMParseBitcode2(i32 %20, i32** %5)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @ERROR, align 4
  %25 = call i32 (i32, i8*, i8*, ...) @elog(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %9)
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @LLVMDisposeMemoryBuffer(i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @LLVMGetTarget(i32* %29)
  %31 = call i8* @pstrdup(i32 %30)
  store i8* %31, i8** @llvm_triple, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @LLVMGetDataLayoutStr(i32* %32)
  %34 = call i8* @pstrdup(i32 %33)
  store i8* %34, i8** @llvm_layout, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i8* @load_type(i32* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i8* %36, i8** @TypeSizeT, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @load_return_type(i32* %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i32 %38, i32* @TypeParamBool, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = call i8* @load_type(i32* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  store i8* %40, i8** @TypeStorageBool, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i8* @load_type(i32* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  store i8* %42, i8** @TypePGFunction, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = call i8* @load_type(i32* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  store i8* %44, i8** @StructNullableDatum, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i8* @load_type(i32* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  store i8* %46, i8** @StructExprContext, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i8* @load_type(i32* %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  store i8* %48, i8** @StructExprEvalStep, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i8* @load_type(i32* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  store i8* %50, i8** @StructExprState, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = call i8* @load_type(i32* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  store i8* %52, i8** @StructFunctionCallInfoData, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = call i8* @load_type(i32* %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  store i8* %54, i8** @StructMemoryContextData, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = call i8* @load_type(i32* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  store i8* %56, i8** @StructTupleTableSlot, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = call i8* @load_type(i32* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  store i8* %58, i8** @StructHeapTupleTableSlot, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = call i8* @load_type(i32* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  store i8* %60, i8** @StructMinimalTupleTableSlot, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = call i8* @load_type(i32* %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  store i8* %62, i8** @StructHeapTupleData, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i8* @load_type(i32* %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0))
  store i8* %64, i8** @StructTupleDescData, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i8* @load_type(i32* %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  store i8* %66, i8** @StructAggState, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i8* @load_type(i32* %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0))
  store i8* %68, i8** @StructAggStatePerGroupData, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = call i8* @load_type(i32* %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0))
  store i8* %70, i8** @StructAggStatePerTransData, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = call i8* @LLVMGetNamedFunction(i32* %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0))
  store i8* %72, i8** @AttributeTemplate, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = call i8* @LLVMGetNamedFunction(i32* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  store i8* %74, i8** @FuncStrlen, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = call i8* @LLVMGetNamedFunction(i32* %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0))
  store i8* %76, i8** @FuncVarsizeAny, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = call i8* @LLVMGetNamedFunction(i32* %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0))
  store i8* %78, i8** @FuncSlotGetsomeattrsInt, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = call i8* @LLVMGetNamedFunction(i32* %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0))
  store i8* %80, i8** @FuncSlotGetmissingattrs, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = call i8* @LLVMGetNamedFunction(i32* %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0))
  store i8* %82, i8** @FuncMakeExpandedObjectReadOnlyInternal, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = call i8* @LLVMGetNamedFunction(i32* %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0))
  store i8* %84, i8** @FuncExecEvalSubscriptingRef, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = call i8* @LLVMGetNamedFunction(i32* %85, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0))
  store i8* %86, i8** @FuncExecEvalSysVar, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = call i8* @LLVMGetNamedFunction(i32* %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0))
  store i8* %88, i8** @FuncExecAggTransReparent, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = call i8* @LLVMGetNamedFunction(i32* %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0))
  store i8* %90, i8** @FuncExecAggInitGroup, align 8
  %91 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %91)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @LLVMCreateMemoryBufferWithContentsOfFile(i8*, i32*, i8**) #2

declare dso_local i32 @elog(i32, i8*, i8*, ...) #2

declare dso_local i64 @LLVMParseBitcode2(i32, i32**) #2

declare dso_local i32 @LLVMDisposeMemoryBuffer(i32) #2

declare dso_local i8* @pstrdup(i32) #2

declare dso_local i32 @LLVMGetTarget(i32*) #2

declare dso_local i32 @LLVMGetDataLayoutStr(i32*) #2

declare dso_local i8* @load_type(i32*, i8*) #2

declare dso_local i32 @load_return_type(i32*, i8*) #2

declare dso_local i8* @LLVMGetNamedFunction(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
