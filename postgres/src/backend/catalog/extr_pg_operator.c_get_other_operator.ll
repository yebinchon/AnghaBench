; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_operator.c_get_other_operator.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_operator.c_get_other_operator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_FUNCTION_DEFINITION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"operator cannot be its own negator or sort operator\00", align 1
@InvalidOid = common dso_local global i64 0, align 8
@ACL_CREATE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@OBJECT_SCHEMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i64, i8*, i64, i64, i64, i32)* @get_other_operator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_other_operator(i32* %0, i64 %1, i64 %2, i8* %3, i64 %4, i64 %5, i64 %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %12, align 8
  %26 = call i64 @OperatorLookup(i32* %23, i64 %24, i64 %25, i32* %19)
  store i64 %26, i64* %18, align 8
  %27 = load i64, i64* %18, align 8
  %28 = call i64 @OidIsValid(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %8
  %31 = load i64, i64* %18, align 8
  store i64 %31, i64* %9, align 8
  br label %83

32:                                               ; preds = %8
  %33 = load i32*, i32** %10, align 8
  %34 = call i64 @QualifiedNameGetCreationNamespace(i32* %33, i8** %20)
  store i64 %34, i64* %21, align 8
  %35 = load i8*, i8** %20, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = call i64 @strcmp(i8* %35, i8* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %32
  %40 = load i64, i64* %21, align 8
  %41 = load i64, i64* %14, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %39
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %15, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %16, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load i32, i32* %17, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @ERROR, align 4
  %56 = load i32, i32* @ERRCODE_INVALID_FUNCTION_DEFINITION, align 4
  %57 = call i32 @errcode(i32 %56)
  %58 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %59 = call i32 @ereport(i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %54, %51
  %61 = load i64, i64* @InvalidOid, align 8
  store i64 %61, i64* %9, align 8
  br label %83

62:                                               ; preds = %47, %43, %39, %32
  %63 = load i64, i64* %21, align 8
  %64 = call i32 (...) @GetUserId()
  %65 = load i32, i32* @ACL_CREATE, align 4
  %66 = call i64 @pg_namespace_aclcheck(i64 %63, i32 %64, i32 %65)
  store i64 %66, i64* %22, align 8
  %67 = load i64, i64* %22, align 8
  %68 = load i64, i64* @ACLCHECK_OK, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load i64, i64* %22, align 8
  %72 = load i32, i32* @OBJECT_SCHEMA, align 4
  %73 = load i64, i64* %21, align 8
  %74 = call i32 @get_namespace_name(i64 %73)
  %75 = call i32 @aclcheck_error(i64 %71, i32 %72, i32 %74)
  br label %76

76:                                               ; preds = %70, %62
  %77 = load i8*, i8** %20, align 8
  %78 = load i64, i64* %21, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* %12, align 8
  %81 = call i64 @OperatorShellMake(i8* %77, i64 %78, i64 %79, i64 %80)
  store i64 %81, i64* %18, align 8
  %82 = load i64, i64* %18, align 8
  store i64 %82, i64* %9, align 8
  br label %83

83:                                               ; preds = %76, %60, %30
  %84 = load i64, i64* %9, align 8
  ret i64 %84
}

declare dso_local i64 @OperatorLookup(i32*, i64, i64, i32*) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i64 @QualifiedNameGetCreationNamespace(i32*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @pg_namespace_aclcheck(i64, i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i64, i32, i32) #1

declare dso_local i32 @get_namespace_name(i64) #1

declare dso_local i64 @OperatorShellMake(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
