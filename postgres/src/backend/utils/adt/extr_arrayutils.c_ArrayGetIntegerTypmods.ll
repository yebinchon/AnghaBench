; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayutils.c_ArrayGetIntegerTypmods.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayutils.c_ArrayGetIntegerTypmods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CSTRINGOID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_ARRAY_ELEMENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"typmod array must be type cstring[]\00", align 1
@ERRCODE_ARRAY_SUBSCRIPT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"typmod array must be one-dimensional\00", align 1
@ERRCODE_NULL_VALUE_NOT_ALLOWED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"typmod array must not contain nulls\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ArrayGetIntegerTypmods(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @ARR_ELEMTYPE(i32* %8)
  %10 = load i64, i64* @CSTRINGOID, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* @ERROR, align 4
  %14 = load i32, i32* @ERRCODE_ARRAY_ELEMENT_ERROR, align 4
  %15 = call i32 @errcode(i32 %14)
  %16 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @ereport(i32 %13, i32 %16)
  br label %18

18:                                               ; preds = %12, %2
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @ARR_NDIM(i32* %19)
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32, i32* @ERROR, align 4
  %24 = load i32, i32* @ERRCODE_ARRAY_SUBSCRIPT_ERROR, align 4
  %25 = call i32 @errcode(i32 %24)
  %26 = call i32 @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @ereport(i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %18
  %29 = load i32*, i32** %3, align 8
  %30 = call i64 @array_contains_nulls(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* @ERROR, align 4
  %34 = load i32, i32* @ERRCODE_NULL_VALUE_NOT_ALLOWED, align 4
  %35 = call i32 @errcode(i32 %34)
  %36 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %37 = call i32 @ereport(i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %32, %28
  %39 = load i32*, i32** %3, align 8
  %40 = load i64, i64* @CSTRINGOID, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @deconstruct_array(i32* %39, i64 %40, i32 -2, i32 0, i8 signext 99, i32** %6, i32* null, i32* %41)
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = call i64 @palloc(i32 %47)
  %49 = inttoptr i64 %48 to i32*
  store i32* %49, i32** %5, align 8
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %67, %38
  %51 = load i32, i32* %7, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %50
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @DatumGetCString(i32 %60)
  %62 = call i32 @pg_strtoint32(i32 %61)
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %55
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %50

70:                                               ; preds = %50
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @pfree(i32* %71)
  %73 = load i32*, i32** %5, align 8
  ret i32* %73
}

declare dso_local i64 @ARR_ELEMTYPE(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i64 @array_contains_nulls(i32*) #1

declare dso_local i32 @deconstruct_array(i32*, i64, i32, i32, i8 signext, i32**, i32*, i32*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @pg_strtoint32(i32) #1

declare dso_local i32 @DatumGetCString(i32) #1

declare dso_local i32 @pfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
