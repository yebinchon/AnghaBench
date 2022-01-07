; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_planner.c_preprocess_expression.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_planner.c_preprocess_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i64 }

@EXPRKIND_RTFUNC = common dso_local global i32 0, align 4
@EXPRKIND_VALUES = common dso_local global i32 0, align 4
@EXPRKIND_TABLESAMPLE = common dso_local global i32 0, align 4
@EXPRKIND_TABLEFUNC = common dso_local global i32 0, align 4
@EXPRKIND_RTFUNC_LATERAL = common dso_local global i32 0, align 4
@EXPRKIND_QUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i32*, i32)* @preprocess_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @preprocess_expression(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32*, i32** %6, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %97

11:                                               ; preds = %3
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %11
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @EXPRKIND_RTFUNC, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %38, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @EXPRKIND_VALUES, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %38, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @EXPRKIND_TABLESAMPLE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @EXPRKIND_TABLEFUNC, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32* @flatten_join_alias_vars(%struct.TYPE_8__* %35, i32* %36)
  store i32* %37, i32** %6, align 8
  br label %38

38:                                               ; preds = %32, %28, %24, %20, %16, %11
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @EXPRKIND_RTFUNC, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %55, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @EXPRKIND_RTFUNC_LATERAL, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46, %42
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32* @eval_const_expressions(%struct.TYPE_7__* %52, i32* %53)
  store i32* %54, i32** %6, align 8
  br label %55

55:                                               ; preds = %51, %46, %38
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @EXPRKIND_QUAL, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32*, i32** %6, align 8
  %61 = call i64 @canonicalize_qual(i32* %60, i32 0)
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %6, align 8
  br label %63

63:                                               ; preds = %59, %55
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @EXPRKIND_QUAL, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32* @SS_process_sublinks(%struct.TYPE_7__* %71, i32* %72, i32 %76)
  store i32* %77, i32** %6, align 8
  br label %78

78:                                               ; preds = %70, %63
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = call i32* @SS_replace_correlation_vars(%struct.TYPE_7__* %84, i32* %85)
  store i32* %86, i32** %6, align 8
  br label %87

87:                                               ; preds = %83, %78
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @EXPRKIND_QUAL, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i32*, i32** %6, align 8
  %93 = call i64 @make_ands_implicit(i32* %92)
  %94 = inttoptr i64 %93 to i32*
  store i32* %94, i32** %6, align 8
  br label %95

95:                                               ; preds = %91, %87
  %96 = load i32*, i32** %6, align 8
  store i32* %96, i32** %4, align 8
  br label %97

97:                                               ; preds = %95, %10
  %98 = load i32*, i32** %4, align 8
  ret i32* %98
}

declare dso_local i32* @flatten_join_alias_vars(%struct.TYPE_8__*, i32*) #1

declare dso_local i32* @eval_const_expressions(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @canonicalize_qual(i32*, i32) #1

declare dso_local i32* @SS_process_sublinks(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32* @SS_replace_correlation_vars(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @make_ands_implicit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
