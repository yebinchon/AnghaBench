; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_findRangeSubtypeDiffFunction.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_findRangeSubtypeDiffFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"function %s does not exist\00", align 1
@NIL = common dso_local global i32 0, align 4
@FLOAT8OID = common dso_local global i64 0, align 8
@ERRCODE_INVALID_OBJECT_DEFINITION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"range subtype diff function %s must return type %s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"double precision\00", align 1
@PROVOLATILE_IMMUTABLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"range subtype diff function %s must be immutable\00", align 1
@ACL_EXECUTE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@OBJECT_FUNCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @findRangeSubtypeDiffFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findRangeSubtypeDiffFunction(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %10, i32* %11, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %14 = call i32 @LookupFuncName(i32* %12, i32 2, i32* %13, i32 1)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @OidIsValid(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i32, i32* @ERRCODE_UNDEFINED_FUNCTION, align 4
  %21 = call i32 @errcode(i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @NIL, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %25 = call i32 @func_signature_string(i32* %22, i32 2, i32 %23, i32* %24)
  %26 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = call i32 @ereport(i32 %19, i32 %26)
  br label %28

28:                                               ; preds = %18, %2
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @get_func_rettype(i32 %29)
  %31 = load i64, i64* @FLOAT8OID, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %36 = call i32 @errcode(i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @NIL, align 4
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %40 = call i32 @func_signature_string(i32* %37, i32 2, i32 %38, i32* %39)
  %41 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i32 @ereport(i32 %34, i32 %41)
  br label %43

43:                                               ; preds = %33, %28
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @func_volatile(i32 %44)
  %46 = load i64, i64* @PROVOLATILE_IMMUTABLE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load i32, i32* @ERROR, align 4
  %50 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %51 = call i32 @errcode(i32 %50)
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* @NIL, align 4
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %55 = call i32 @func_signature_string(i32* %52, i32 2, i32 %53, i32* %54)
  %56 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = call i32 @ereport(i32 %49, i32 %56)
  br label %58

58:                                               ; preds = %48, %43
  %59 = load i32, i32* %6, align 4
  %60 = call i32 (...) @GetUserId()
  %61 = load i32, i32* @ACL_EXECUTE, align 4
  %62 = call i64 @pg_proc_aclcheck(i32 %59, i32 %60, i32 %61)
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @ACLCHECK_OK, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load i64, i64* %7, align 8
  %68 = load i32, i32* @OBJECT_FUNCTION, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @get_func_name(i32 %69)
  %71 = call i32 @aclcheck_error(i64 %67, i32 %68, i32 %70)
  br label %72

72:                                               ; preds = %66, %58
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @LookupFuncName(i32*, i32, i32*, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @func_signature_string(i32*, i32, i32, i32*) #1

declare dso_local i64 @get_func_rettype(i32) #1

declare dso_local i64 @func_volatile(i32) #1

declare dso_local i64 @pg_proc_aclcheck(i32, i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i64, i32, i32) #1

declare dso_local i32 @get_func_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
