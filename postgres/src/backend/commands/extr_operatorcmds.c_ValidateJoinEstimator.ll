; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_operatorcmds.c_ValidateJoinEstimator.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_operatorcmds.c_ValidateJoinEstimator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTERNALOID = common dso_local global i32 0, align 4
@OIDOID = common dso_local global i32 0, align 4
@INT2OID = common dso_local global i32 0, align 4
@FLOAT8OID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_OBJECT_DEFINITION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"join estimator function %s must return type %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"float8\00", align 1
@ACL_EXECUTE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@OBJECT_FUNCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ValidateJoinEstimator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ValidateJoinEstimator(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [5 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* @INTERNALOID, align 4
  %7 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  store i32 %6, i32* %7, align 16
  %8 = load i32, i32* @OIDOID, align 4
  %9 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 1
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @INTERNALOID, align 4
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 2
  store i32 %10, i32* %11, align 8
  %12 = load i32, i32* @INT2OID, align 4
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 3
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @INTERNALOID, align 4
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 4
  store i32 %14, i32* %15, align 16
  %16 = load i32*, i32** %2, align 8
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  %18 = call i32 @LookupFuncName(i32* %16, i32 5, i32* %17, i32 1)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @OidIsValid(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %1
  %23 = load i32*, i32** %2, align 8
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  %25 = call i32 @LookupFuncName(i32* %23, i32 4, i32* %24, i32 1)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %22, %1
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @OidIsValid(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32*, i32** %2, align 8
  %32 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  %33 = call i32 @LookupFuncName(i32* %31, i32 5, i32* %32, i32 0)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @get_func_rettype(i32 %35)
  %37 = load i64, i64* @FLOAT8OID, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i32, i32* @ERROR, align 4
  %41 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %42 = call i32 @errcode(i32 %41)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @NameListToString(i32* %43)
  %45 = call i32 @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %46 = call i32 @ereport(i32 %40, i32 %45)
  br label %47

47:                                               ; preds = %39, %34
  %48 = load i32, i32* %4, align 4
  %49 = call i32 (...) @GetUserId()
  %50 = load i32, i32* @ACL_EXECUTE, align 4
  %51 = call i64 @pg_proc_aclcheck(i32 %48, i32 %49, i32 %50)
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @ACLCHECK_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load i64, i64* %5, align 8
  %57 = load i32, i32* @OBJECT_FUNCTION, align 4
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @NameListToString(i32* %58)
  %60 = call i32 @aclcheck_error(i64 %56, i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %55, %47
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @LookupFuncName(i32*, i32, i32*, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

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
