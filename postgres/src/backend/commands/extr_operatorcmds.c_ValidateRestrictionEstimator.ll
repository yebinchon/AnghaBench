; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_operatorcmds.c_ValidateRestrictionEstimator.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_operatorcmds.c_ValidateRestrictionEstimator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTERNALOID = common dso_local global i32 0, align 4
@OIDOID = common dso_local global i32 0, align 4
@INT4OID = common dso_local global i32 0, align 4
@FLOAT8OID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_OBJECT_DEFINITION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"restriction estimator function %s must return type %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"float8\00", align 1
@ACL_EXECUTE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@OBJECT_FUNCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ValidateRestrictionEstimator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ValidateRestrictionEstimator(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [4 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* @INTERNALOID, align 4
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  store i32 %6, i32* %7, align 16
  %8 = load i32, i32* @OIDOID, align 4
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @INTERNALOID, align 4
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  store i32 %10, i32* %11, align 8
  %12 = load i32, i32* @INT4OID, align 4
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 3
  store i32 %12, i32* %13, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %16 = call i32 @LookupFuncName(i32* %14, i32 4, i32* %15, i32 0)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @get_func_rettype(i32 %17)
  %19 = load i64, i64* @FLOAT8OID, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load i32, i32* @ERROR, align 4
  %23 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %24 = call i32 @errcode(i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @NameListToString(i32* %25)
  %27 = call i32 @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 @ereport(i32 %22, i32 %27)
  br label %29

29:                                               ; preds = %21, %1
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (...) @GetUserId()
  %32 = load i32, i32* @ACL_EXECUTE, align 4
  %33 = call i64 @pg_proc_aclcheck(i32 %30, i32 %31, i32 %32)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @ACLCHECK_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load i64, i64* %5, align 8
  %39 = load i32, i32* @OBJECT_FUNCTION, align 4
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @NameListToString(i32* %40)
  %42 = call i32 @aclcheck_error(i64 %38, i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %37, %29
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @LookupFuncName(i32*, i32, i32*, i32) #1

declare dso_local i64 @get_func_rettype(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i8*) #1

declare dso_local i32 @NameListToString(i32*) #1

declare dso_local i64 @pg_proc_aclcheck(i32, i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
