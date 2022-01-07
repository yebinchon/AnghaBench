; ModuleID = '/home/carl/AnghaBench/postgres/contrib/ltree/extr__ltree_op.c_array_iterator.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/ltree/extr__ltree_op.c_array_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_ARRAY_SUBSCRIPT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"array must be one-dimensional\00", align 1
@ERRCODE_NULL_VALUE_NOT_ALLOWED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"array must not contain nulls\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i8**)* @array_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @array_iterator(i32* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @ARR_NDIM(i32* %12)
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @ARR_DIMS(i32* %14)
  %16 = call i32 @ArrayGetNItems(i32 %13, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @ARR_DATA_PTR(i32* %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %11, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @ARR_NDIM(i32* %20)
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* @ERRCODE_ARRAY_SUBSCRIPT_ERROR, align 4
  %26 = call i32 @errcode(i32 %25)
  %27 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @ereport(i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %23, %4
  %30 = load i32*, i32** %6, align 8
  %31 = call i64 @array_contains_nulls(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i32, i32* @ERRCODE_NULL_VALUE_NOT_ALLOWED, align 4
  %36 = call i32 @errcode(i32 %35)
  %37 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @ereport(i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %33, %29
  %40 = load i8**, i8*** %9, align 8
  %41 = icmp ne i8** %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i8**, i8*** %9, align 8
  store i8* null, i8** %43, align 8
  br label %44

44:                                               ; preds = %42, %39
  br label %45

45:                                               ; preds = %64, %44
  %46 = load i32, i32* %10, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @PointerGetDatum(i8* %50)
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @PointerGetDatum(i8* %52)
  %54 = call i32 @DirectFunctionCall2(i32 %49, i32 %51, i32 %53)
  %55 = call i64 @DatumGetBool(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %48
  %58 = load i8**, i8*** %9, align 8
  %59 = icmp ne i8** %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i8*, i8** %11, align 8
  %62 = load i8**, i8*** %9, align 8
  store i8* %61, i8** %62, align 8
  br label %63

63:                                               ; preds = %60, %57
  store i32 1, i32* %5, align 4
  br label %70

64:                                               ; preds = %48
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %10, align 4
  %67 = load i8*, i8** %11, align 8
  %68 = call i8* @NEXTVAL(i8* %67)
  store i8* %68, i8** %11, align 8
  br label %45

69:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %63
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @ArrayGetNItems(i32, i32) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i32 @ARR_DIMS(i32*) #1

declare dso_local i64 @ARR_DATA_PTR(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @array_contains_nulls(i32*) #1

declare dso_local i64 @DatumGetBool(i32) #1

declare dso_local i32 @DirectFunctionCall2(i32, i32, i32) #1

declare dso_local i32 @PointerGetDatum(i8*) #1

declare dso_local i8* @NEXTVAL(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
