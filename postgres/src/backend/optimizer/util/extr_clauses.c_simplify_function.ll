; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_clauses.c_simplify_function.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_clauses.c_simplify_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32*, i8*, i8*, i32, i32, i8*, i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@PROCOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for function %u\00", align 1
@eval_const_expressions_mutator = common dso_local global i32 0, align 4
@T_FuncExpr = common dso_local global i32 0, align 4
@COERCE_EXPLICIT_CALL = common dso_local global i32 0, align 4
@T_SupportRequestSimplify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32, i8*, i8*, i32**, i32, i32, i32, %struct.TYPE_11__*)* @simplify_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @simplify_function(i8* %0, i8* %1, i32 %2, i8* %3, i8* %4, i32** %5, i32 %6, i32 %7, i32 %8, %struct.TYPE_11__* %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_11__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_14__*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_12__, align 8
  %26 = alloca %struct.TYPE_13__, align 8
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i32** %5, i32*** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %20, align 8
  %27 = load i32**, i32*** %16, align 8
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %21, align 8
  %29 = load i32, i32* @PROCOID, align 4
  %30 = load i8*, i8** %11, align 8
  %31 = call i32 @ObjectIdGetDatum(i8* %30)
  %32 = call i32 @SearchSysCache1(i32 %29, i32 %31)
  store i32 %32, i32* %22, align 4
  %33 = load i32, i32* %22, align 4
  %34 = call i32 @HeapTupleIsValid(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %10
  %37 = load i32, i32* @ERROR, align 4
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @elog(i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %36, %10
  %41 = load i32, i32* %22, align 4
  %42 = call i64 @GETSTRUCT(i32 %41)
  %43 = inttoptr i64 %42 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %43, %struct.TYPE_14__** %23, align 8
  %44 = load i32, i32* %18, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = load i32*, i32** %21, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load i32, i32* %22, align 4
  %50 = call i32* @expand_function_arguments(i32* %47, i8* %48, i32 %49)
  store i32* %50, i32** %21, align 8
  %51 = load i32*, i32** %21, align 8
  %52 = load i32, i32* @eval_const_expressions_mutator, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %54 = bitcast %struct.TYPE_11__* %53 to i8*
  %55 = call i64 @expression_tree_mutator(i32* %51, i32 %52, i8* %54)
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %21, align 8
  %57 = load i32*, i32** %21, align 8
  %58 = load i32**, i32*** %16, align 8
  store i32* %57, i32** %58, align 8
  br label %59

59:                                               ; preds = %46, %40
  %60 = load i8*, i8** %11, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i8*, i8** %14, align 8
  %64 = load i8*, i8** %15, align 8
  %65 = load i32*, i32** %21, align 8
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %22, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %69 = call i32* @evaluate_function(i8* %60, i8* %61, i32 %62, i8* %63, i8* %64, i32* %65, i32 %66, i32 %67, %struct.TYPE_11__* %68)
  store i32* %69, i32** %24, align 8
  %70 = load i32*, i32** %24, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %123, label %72

72:                                               ; preds = %59
  %73 = load i32, i32* %19, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %123

75:                                               ; preds = %72
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @OidIsValid(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %123

81:                                               ; preds = %75
  %82 = load i32, i32* @T_FuncExpr, align 4
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 9
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 8
  store i8* %85, i8** %86, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 7
  store i8* %87, i8** %88, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 6
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %17, align 4
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  store i32 %93, i32* %94, align 8
  %95 = load i32, i32* @COERCE_EXPLICIT_CALL, align 4
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 5
  store i32 %95, i32* %96, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 4
  store i8* %97, i8** %98, align 8
  %99 = load i8*, i8** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 3
  store i8* %99, i8** %100, align 8
  %101 = load i32*, i32** %21, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  store i32* %101, i32** %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  store i32 -1, i32* %103, align 4
  %104 = load i32, i32* @T_SupportRequestSimplify, align 4
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  store i32 %104, i32* %105, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  store i32 %108, i32* %109, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %110, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @PointerGetDatum(%struct.TYPE_12__* %25)
  %115 = call i32 @OidFunctionCall1(i32 %113, i32 %114)
  %116 = call i64 @DatumGetPointer(i32 %115)
  %117 = inttoptr i64 %116 to i32*
  store i32* %117, i32** %24, align 8
  %118 = load i32*, i32** %24, align 8
  %119 = bitcast %struct.TYPE_13__* %26 to i32*
  %120 = icmp ne i32* %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @Assert(i32 %121)
  br label %123

123:                                              ; preds = %81, %75, %72, %59
  %124 = load i32*, i32** %24, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %139, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %19, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %126
  %130 = load i8*, i8** %11, align 8
  %131 = load i8*, i8** %12, align 8
  %132 = load i8*, i8** %14, align 8
  %133 = load i8*, i8** %15, align 8
  %134 = load i32*, i32** %21, align 8
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %22, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %138 = call i32* @inline_function(i8* %130, i8* %131, i8* %132, i8* %133, i32* %134, i32 %135, i32 %136, %struct.TYPE_11__* %137)
  store i32* %138, i32** %24, align 8
  br label %139

139:                                              ; preds = %129, %126, %123
  %140 = load i32, i32* %22, align 4
  %141 = call i32 @ReleaseSysCache(i32 %140)
  %142 = load i32*, i32** %24, align 8
  ret i32* %142
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i8*) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i8*) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32* @expand_function_arguments(i32*, i8*, i32) #1

declare dso_local i64 @expression_tree_mutator(i32*, i32, i8*) #1

declare dso_local i32* @evaluate_function(i8*, i8*, i32, i8*, i8*, i32*, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @OidFunctionCall1(i32, i32) #1

declare dso_local i32 @PointerGetDatum(%struct.TYPE_12__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @inline_function(i8*, i8*, i8*, i8*, i32*, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
