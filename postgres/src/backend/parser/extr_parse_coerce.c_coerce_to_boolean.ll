; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_coerce.c_coerce_to_boolean.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_coerce.c_coerce_to_boolean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BOOLOID = common dso_local global i64 0, align 8
@COERCION_ASSIGNMENT = common dso_local global i32 0, align 4
@COERCE_IMPLICIT_CAST = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"argument of %s must be type %s, not type %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"argument of %s must not return a set\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @coerce_to_boolean(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i64 @exprType(i32* %9)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @BOOLOID, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @BOOLOID, align 8
  %19 = load i32, i32* @COERCION_ASSIGNMENT, align 4
  %20 = load i32, i32* @COERCE_IMPLICIT_CAST, align 4
  %21 = call i32* @coerce_to_target_type(i32* %15, i32* %16, i64 %17, i64 %18, i32 -1, i32 %19, i32 %20, i32 -1)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %14
  %25 = load i32, i32* @ERROR, align 4
  %26 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %27 = call i32 @errcode(i32 %26)
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @format_type_be(i64 %29)
  %31 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @exprLocation(i32* %33)
  %35 = call i32 @parser_errposition(i32* %32, i32 %34)
  %36 = call i32 @ereport(i32 %25, i32 %35)
  br label %37

37:                                               ; preds = %24, %14
  %38 = load i32*, i32** %8, align 8
  store i32* %38, i32** %5, align 8
  br label %39

39:                                               ; preds = %37, %3
  %40 = load i32*, i32** %5, align 8
  %41 = call i64 @expression_returns_set(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load i32, i32* @ERROR, align 4
  %45 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %46 = call i32 @errcode(i32 %45)
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @exprLocation(i32* %50)
  %52 = call i32 @parser_errposition(i32* %49, i32 %51)
  %53 = call i32 @ereport(i32 %44, i32 %52)
  br label %54

54:                                               ; preds = %43, %39
  %55 = load i32*, i32** %5, align 8
  ret i32* %55
}

declare dso_local i64 @exprType(i32*) #1

declare dso_local i32* @coerce_to_target_type(i32*, i32*, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i32 @format_type_be(i64) #1

declare dso_local i32 @parser_errposition(i32*, i32) #1

declare dso_local i32 @exprLocation(i32*) #1

declare dso_local i64 @expression_returns_set(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
