; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_pathkeys.c_build_expression_pathkey.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_pathkeys.c_build_expression_pathkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"operator %u is not a valid ordering operator\00", align 1
@BTGreaterStrategyNumber = common dso_local global i64 0, align 8
@NIL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @build_expression_pathkey(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @get_ordering_op_properties(i32 %18, i32* %14, i32* %15, i64* %16)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @ERROR, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @elog(i32 %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %6
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @exprCollation(i32* %31)
  %33 = load i64, i64* %16, align 8
  %34 = load i64, i64* @BTGreaterStrategyNumber, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %16, align 8
  %38 = load i64, i64* @BTGreaterStrategyNumber, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32* @make_pathkey_from_sortinfo(i32* %26, i32* %27, i32 %28, i32 %29, i32 %30, i32 %32, i32 %36, i32 %40, i32 0, i32 %41, i32 %42)
  store i32* %43, i32** %17, align 8
  %44 = load i32*, i32** %17, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %25
  %47 = load i32*, i32** %17, align 8
  %48 = call i32* @list_make1(i32* %47)
  store i32* %48, i32** %13, align 8
  br label %51

49:                                               ; preds = %25
  %50 = load i32*, i32** @NIL, align 8
  store i32* %50, i32** %13, align 8
  br label %51

51:                                               ; preds = %49, %46
  %52 = load i32*, i32** %13, align 8
  ret i32* %52
}

declare dso_local i32 @get_ordering_op_properties(i32, i32*, i32*, i64*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32* @make_pathkey_from_sortinfo(i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @exprCollation(i32*) #1

declare dso_local i32* @list_make1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
