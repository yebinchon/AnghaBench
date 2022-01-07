; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_agg.c_build_aggregate_finalfn_expr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_agg.c_build_aggregate_finalfn_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidOid = common dso_local global i32 0, align 4
@COERCE_EXPLICIT_CALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @build_aggregate_finalfn_expr(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32** %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32** %6, i32*** %14, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call i32 @make_agg_arg(i32 %17, i32 %18)
  %20 = call i32* @list_make1(i32 %19)
  store i32* %20, i32** %15, align 8
  store i32 0, i32* %16, align 4
  br label %21

21:                                               ; preds = %36, %7
  %22 = load i32, i32* %16, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %23, 1
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load i32*, i32** %15, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %16, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @make_agg_arg(i32 %32, i32 %33)
  %35 = call i32* @lappend(i32* %27, i32 %34)
  store i32* %35, i32** %15, align 8
  br label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %16, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %16, align 4
  br label %21

39:                                               ; preds = %21
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32*, i32** %15, align 8
  %43 = load i32, i32* @InvalidOid, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @COERCE_EXPLICIT_CALL, align 4
  %46 = call i64 @makeFuncExpr(i32 %40, i32 %41, i32* %42, i32 %43, i32 %44, i32 %45)
  %47 = inttoptr i64 %46 to i32*
  %48 = load i32**, i32*** %14, align 8
  store i32* %47, i32** %48, align 8
  ret void
}

declare dso_local i32* @list_make1(i32) #1

declare dso_local i32 @make_agg_arg(i32, i32) #1

declare dso_local i32* @lappend(i32*, i32) #1

declare dso_local i64 @makeFuncExpr(i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
