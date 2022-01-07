; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tsearchcmds.c_get_ts_parser_func.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tsearchcmds.c_get_ts_parser_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTERNALOID = common dso_local global i64 0, align 8
@INT4OID = common dso_local global i64 0, align 8
@VOIDOID = common dso_local global i64 0, align 8
@TSQUERYOID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"unrecognized attribute for text search parser: %d\00", align 1
@ERRCODE_INVALID_OBJECT_DEFINITION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"function %s should return type %s\00", align 1
@NIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @get_ts_parser_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ts_parser_func(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [3 x i64], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32* @defGetQualifiedName(i32* %10)
  store i32* %11, i32** %5, align 8
  %12 = load i64, i64* @INTERNALOID, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* @INTERNALOID, align 8
  %14 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  store i64 %13, i64* %14, align 16
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %32 [
    i32 129, label %16
    i32 128, label %19
    i32 132, label %24
    i32 131, label %26
    i32 130, label %31
  ]

16:                                               ; preds = %2
  store i32 2, i32* %8, align 4
  %17 = load i64, i64* @INT4OID, align 8
  %18 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  store i64 %17, i64* %18, align 8
  br label %36

19:                                               ; preds = %2
  store i32 3, i32* %8, align 4
  %20 = load i64, i64* @INTERNALOID, align 8
  %21 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  store i64 %20, i64* %21, align 8
  %22 = load i64, i64* @INTERNALOID, align 8
  %23 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  store i64 %22, i64* %23, align 16
  br label %36

24:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  %25 = load i64, i64* @VOIDOID, align 8
  store i64 %25, i64* %7, align 8
  br label %36

26:                                               ; preds = %2
  store i32 3, i32* %8, align 4
  %27 = load i64, i64* @INTERNALOID, align 8
  %28 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  store i64 %27, i64* %28, align 8
  %29 = load i64, i64* @TSQUERYOID, align 8
  %30 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  store i64 %29, i64* %30, align 16
  br label %36

31:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %36

32:                                               ; preds = %2
  %33 = load i32, i32* @ERROR, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @elog(i32 %33, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %32, %31, %26, %24, %19, %16
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %40 = call i64 @LookupFuncName(i32* %37, i32 %38, i64* %39, i32 0)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i64 @get_func_rettype(i64 %41)
  %43 = load i64, i64* %7, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %36
  %46 = load i32, i32* @ERROR, align 4
  %47 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %48 = call i32 @errcode(i32 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @NIL, align 4
  %52 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %53 = call i32 @func_signature_string(i32* %49, i32 %50, i32 %51, i64* %52)
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @format_type_be(i64 %54)
  %56 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %55)
  %57 = call i32 @ereport(i32 %46, i32 %56)
  br label %58

58:                                               ; preds = %45, %36
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @ObjectIdGetDatum(i64 %59)
  ret i32 %60
}

declare dso_local i32* @defGetQualifiedName(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @LookupFuncName(i32*, i32, i64*, i32) #1

declare dso_local i64 @get_func_rettype(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @func_signature_string(i32*, i32, i32, i64*) #1

declare dso_local i32 @format_type_be(i64) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
