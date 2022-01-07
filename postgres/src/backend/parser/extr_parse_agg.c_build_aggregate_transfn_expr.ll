; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_agg.c_build_aggregate_transfn_expr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_agg.c_build_aggregate_transfn_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@InvalidOid = common dso_local global i32 0, align 4
@COERCE_EXPLICIT_CALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @build_aggregate_transfn_expr(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32** %8, i32** %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32**, align 8
  %20 = alloca i32**, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_3__*, align 8
  %23 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32** %8, i32*** %19, align 8
  store i32** %9, i32*** %20, align 8
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %16, align 4
  %26 = call i32 @make_agg_arg(i32 %24, i32 %25)
  %27 = call i32* @list_make1(i32 %26)
  store i32* %27, i32** %21, align 8
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %23, align 4
  br label %29

29:                                               ; preds = %43, %10
  %30 = load i32, i32* %23, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i32*, i32** %21, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %23, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %16, align 4
  %41 = call i32 @make_agg_arg(i32 %39, i32 %40)
  %42 = call i32* @lappend(i32* %34, i32 %41)
  store i32* %42, i32** %21, align 8
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %23, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %23, align 4
  br label %29

46:                                               ; preds = %29
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32*, i32** %21, align 8
  %50 = load i32, i32* @InvalidOid, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* @COERCE_EXPLICIT_CALL, align 4
  %53 = call %struct.TYPE_3__* @makeFuncExpr(i32 %47, i32 %48, i32* %49, i32 %50, i32 %51, i32 %52)
  store %struct.TYPE_3__* %53, %struct.TYPE_3__** %22, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %58 = bitcast %struct.TYPE_3__* %57 to i32*
  %59 = load i32**, i32*** %19, align 8
  store i32* %58, i32** %59, align 8
  %60 = load i32**, i32*** %20, align 8
  %61 = icmp ne i32** %60, null
  br i1 %61, label %62, label %83

62:                                               ; preds = %46
  %63 = load i32, i32* %18, align 4
  %64 = call i64 @OidIsValid(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32*, i32** %21, align 8
  %70 = load i32, i32* @InvalidOid, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* @COERCE_EXPLICIT_CALL, align 4
  %73 = call %struct.TYPE_3__* @makeFuncExpr(i32 %67, i32 %68, i32* %69, i32 %70, i32 %71, i32 %72)
  store %struct.TYPE_3__* %73, %struct.TYPE_3__** %22, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %78 = bitcast %struct.TYPE_3__* %77 to i32*
  %79 = load i32**, i32*** %20, align 8
  store i32* %78, i32** %79, align 8
  br label %82

80:                                               ; preds = %62
  %81 = load i32**, i32*** %20, align 8
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %80, %66
  br label %83

83:                                               ; preds = %82, %46
  ret void
}

declare dso_local i32* @list_make1(i32) #1

declare dso_local i32 @make_agg_arg(i32, i32) #1

declare dso_local i32* @lappend(i32*, i32) #1

declare dso_local %struct.TYPE_3__* @makeFuncExpr(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i64 @OidIsValid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
