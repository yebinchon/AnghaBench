; ModuleID = '/home/carl/AnghaBench/postgres/contrib/ltree/extr_ltree_gist.c_arrq_cons.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/ltree/extr_ltree_gist.c_arrq_cons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_ARRAY_SUBSCRIPT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"array must be one-dimensional\00", align 1
@ERRCODE_NULL_VALUE_NOT_ALLOWED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"array must not contain nulls\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @arrq_cons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arrq_cons(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i64 @ARR_DATA_PTR(i32* %8)
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @ARR_NDIM(i32* %11)
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @ARR_DIMS(i32* %13)
  %15 = call i32 @ArrayGetNItems(i32 %12, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @ARR_NDIM(i32* %16)
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @ERROR, align 4
  %21 = load i32, i32* @ERRCODE_ARRAY_SUBSCRIPT_ERROR, align 4
  %22 = call i32 @errcode(i32 %21)
  %23 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @ereport(i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %19, %2
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @array_contains_nulls(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i32, i32* @ERRCODE_NULL_VALUE_NOT_ALLOWED, align 4
  %32 = call i32 @errcode(i32 %31)
  %33 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @ereport(i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %29, %25
  br label %36

36:                                               ; preds = %50, %35
  %37 = load i32, i32* %7, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i64 @gist_qe(i32* %40, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i64 @gist_between(i32* %45, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %56

50:                                               ; preds = %44, %39
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %7, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = call i32* @NEXTVAL(i32* %53)
  store i32* %54, i32** %6, align 8
  br label %36

55:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %49
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @ARR_DATA_PTR(i32*) #1

declare dso_local i32 @ArrayGetNItems(i32, i32) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i32 @ARR_DIMS(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @array_contains_nulls(i32*) #1

declare dso_local i64 @gist_qe(i32*, i32*) #1

declare dso_local i64 @gist_between(i32*, i32*) #1

declare dso_local i32* @NEXTVAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
