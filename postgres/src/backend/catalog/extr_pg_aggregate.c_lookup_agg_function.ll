; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_aggregate.c_lookup_agg_function.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_aggregate.c_lookup_agg_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIL = common dso_local global i32 0, align 4
@FUNCDETAIL_NORMAL = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"function %s does not exist\00", align 1
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"function %s returns a set\00", align 1
@ANYOID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [66 x i8] c"function %s must accept VARIADIC ANY to be used in this aggregate\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"function %s requires run-time type coercion\00", align 1
@ACL_EXECUTE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@OBJECT_FUNCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i64*, i64, i64*)* @lookup_agg_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lookup_agg_function(i32* %0, i32 %1, i64* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @NIL, align 4
  %21 = load i32, i32* @NIL, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i64*, i64** %8, align 8
  %24 = load i64*, i64** %10, align 8
  %25 = call i64 @func_get_detail(i32* %19, i32 %20, i32 %21, i32 %22, i64* %23, i32 0, i32 0, i64* %11, i64* %24, i32* %12, i32* %13, i64* %14, i64** %15, i32* null)
  store i64 %25, i64* %16, align 8
  %26 = load i64, i64* %16, align 8
  %27 = load i64, i64* @FUNCDETAIL_NORMAL, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %5
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @OidIsValid(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %29, %5
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i32, i32* @ERRCODE_UNDEFINED_FUNCTION, align 4
  %36 = call i32 @errcode(i32 %35)
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @NIL, align 4
  %40 = load i64*, i64** %8, align 8
  %41 = call i32 @func_signature_string(i32* %37, i32 %38, i32 %39, i64* %40)
  %42 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = call i32 @ereport(i32 %34, i32 %42)
  br label %44

44:                                               ; preds = %33, %29
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load i32, i32* @ERROR, align 4
  %49 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %50 = call i32 @errcode(i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @NIL, align 4
  %54 = load i64*, i64** %8, align 8
  %55 = call i32 @func_signature_string(i32* %51, i32 %52, i32 %53, i64* %54)
  %56 = call i32 @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = call i32 @ereport(i32 %48, i32 %56)
  br label %58

58:                                               ; preds = %47, %44
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @ANYOID, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = load i64, i64* %14, align 8
  %64 = load i64, i64* @ANYOID, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load i32, i32* @ERROR, align 4
  %68 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %69 = call i32 @errcode(i32 %68)
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @NIL, align 4
  %73 = load i64*, i64** %8, align 8
  %74 = call i32 @func_signature_string(i32* %70, i32 %71, i32 %72, i64* %73)
  %75 = call i32 @errmsg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = call i32 @ereport(i32 %67, i32 %75)
  br label %77

77:                                               ; preds = %66, %62, %58
  %78 = load i64*, i64** %8, align 8
  %79 = load i64*, i64** %15, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i64*, i64** %10, align 8
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @enforce_generic_type_consistency(i64* %78, i64* %79, i32 %80, i64 %82, i32 1)
  %84 = load i64*, i64** %10, align 8
  store i64 %83, i64* %84, align 8
  store i32 0, i32* %18, align 4
  br label %85

85:                                               ; preds = %114, %77
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %117

89:                                               ; preds = %85
  %90 = load i64*, i64** %8, align 8
  %91 = load i32, i32* %18, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %15, align 8
  %96 = load i32, i32* %18, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @IsBinaryCoercible(i64 %94, i64 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %113, label %102

102:                                              ; preds = %89
  %103 = load i32, i32* @ERROR, align 4
  %104 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %105 = call i32 @errcode(i32 %104)
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @NIL, align 4
  %109 = load i64*, i64** %15, align 8
  %110 = call i32 @func_signature_string(i32* %106, i32 %107, i32 %108, i64* %109)
  %111 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  %112 = call i32 @ereport(i32 %103, i32 %111)
  br label %113

113:                                              ; preds = %102, %89
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %18, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %18, align 4
  br label %85

117:                                              ; preds = %85
  %118 = load i64, i64* %11, align 8
  %119 = call i32 (...) @GetUserId()
  %120 = load i32, i32* @ACL_EXECUTE, align 4
  %121 = call i64 @pg_proc_aclcheck(i64 %118, i32 %119, i32 %120)
  store i64 %121, i64* %17, align 8
  %122 = load i64, i64* %17, align 8
  %123 = load i64, i64* @ACLCHECK_OK, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %117
  %126 = load i64, i64* %17, align 8
  %127 = load i32, i32* @OBJECT_FUNCTION, align 4
  %128 = load i64, i64* %11, align 8
  %129 = call i32 @get_func_name(i64 %128)
  %130 = call i32 @aclcheck_error(i64 %126, i32 %127, i32 %129)
  br label %131

131:                                              ; preds = %125, %117
  %132 = load i64, i64* %11, align 8
  ret i64 %132
}

declare dso_local i64 @func_get_detail(i32*, i32, i32, i32, i64*, i32, i32, i64*, i64*, i32*, i32*, i64*, i64**, i32*) #1

declare dso_local i32 @OidIsValid(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @func_signature_string(i32*, i32, i32, i64*) #1

declare dso_local i64 @enforce_generic_type_consistency(i64*, i64*, i32, i64, i32) #1

declare dso_local i32 @IsBinaryCoercible(i64, i64) #1

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
