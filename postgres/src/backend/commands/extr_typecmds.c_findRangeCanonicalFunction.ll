; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_findRangeCanonicalFunction.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_findRangeCanonicalFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"function %s does not exist\00", align 1
@NIL = common dso_local global i32 0, align 4
@ERRCODE_INVALID_OBJECT_DEFINITION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"range canonical function %s must return range type\00", align 1
@PROVOLATILE_IMMUTABLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"range canonical function %s must be immutable\00", align 1
@ACL_EXECUTE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@OBJECT_FUNCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64)* @findRangeCanonicalFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @findRangeCanonicalFunction(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [1 x i64], align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds [1 x i64], [1 x i64]* %5, i64 0, i64 0
  store i64 %8, i64* %9, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds [1 x i64], [1 x i64]* %5, i64 0, i64 0
  %12 = call i64 @LookupFuncName(i32* %10, i32 1, i64* %11, i32 1)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @OidIsValid(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ERROR, align 4
  %18 = load i32, i32* @ERRCODE_UNDEFINED_FUNCTION, align 4
  %19 = call i32 @errcode(i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @NIL, align 4
  %22 = getelementptr inbounds [1 x i64], [1 x i64]* %5, i64 0, i64 0
  %23 = call i32 @func_signature_string(i32* %20, i32 1, i32 %21, i64* %22)
  %24 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = call i32 @ereport(i32 %17, i32 %24)
  br label %26

26:                                               ; preds = %16, %2
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @get_func_rettype(i64 %27)
  %29 = load i64, i64* %4, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %34 = call i32 @errcode(i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @NIL, align 4
  %37 = getelementptr inbounds [1 x i64], [1 x i64]* %5, i64 0, i64 0
  %38 = call i32 @func_signature_string(i32* %35, i32 1, i32 %36, i64* %37)
  %39 = call i32 @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = call i32 @ereport(i32 %32, i32 %39)
  br label %41

41:                                               ; preds = %31, %26
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @func_volatile(i64 %42)
  %44 = load i64, i64* @PROVOLATILE_IMMUTABLE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load i32, i32* @ERROR, align 4
  %48 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %49 = call i32 @errcode(i32 %48)
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* @NIL, align 4
  %52 = getelementptr inbounds [1 x i64], [1 x i64]* %5, i64 0, i64 0
  %53 = call i32 @func_signature_string(i32* %50, i32 1, i32 %51, i64* %52)
  %54 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = call i32 @ereport(i32 %47, i32 %54)
  br label %56

56:                                               ; preds = %46, %41
  %57 = load i64, i64* %6, align 8
  %58 = call i32 (...) @GetUserId()
  %59 = load i32, i32* @ACL_EXECUTE, align 4
  %60 = call i64 @pg_proc_aclcheck(i64 %57, i32 %58, i32 %59)
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @ACLCHECK_OK, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load i64, i64* %7, align 8
  %66 = load i32, i32* @OBJECT_FUNCTION, align 4
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @get_func_name(i64 %67)
  %69 = call i32 @aclcheck_error(i64 %65, i32 %66, i32 %68)
  br label %70

70:                                               ; preds = %64, %56
  %71 = load i64, i64* %6, align 8
  ret i64 %71
}

declare dso_local i64 @LookupFuncName(i32*, i32, i64*, i32) #1

declare dso_local i32 @OidIsValid(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @func_signature_string(i32*, i32, i32, i64*) #1

declare dso_local i64 @get_func_rettype(i64) #1

declare dso_local i64 @func_volatile(i64) #1

declare dso_local i64 @pg_proc_aclcheck(i64, i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i64, i32, i32) #1

declare dso_local i32 @get_func_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
