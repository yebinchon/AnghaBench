; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_expr.c_transformAExprNullIf.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_expr.c_transformAExprNullIf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i32, i64 }

@BOOLOID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"NULLIF requires = operator to yield boolean\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s must not return a set\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"NULLIF\00", align 1
@T_NullIfExpr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*, %struct.TYPE_12__*)* @transformAExprNullIf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @transformAExprNullIf(%struct.TYPE_10__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @transformExprRecurse(%struct.TYPE_10__* %8, i32 %11)
  store i32* %12, i32** %5, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32* @transformExprRecurse(%struct.TYPE_10__* %13, i32 %16)
  store i32* %17, i32** %6, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @make_op(%struct.TYPE_10__* %18, i32 %21, i32* %22, i32* %23, i32 %26, i32 %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %7, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BOOLOID, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %2
  %38 = load i32, i32* @ERROR, align 4
  %39 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %40 = call i32 @errcode(i32 %39)
  %41 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @parser_errposition(%struct.TYPE_10__* %42, i32 %45)
  %47 = call i32 @ereport(i32 %38, i32 %46)
  br label %48

48:                                               ; preds = %37, %2
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load i32, i32* @ERROR, align 4
  %55 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %56 = call i32 @errcode(i32 %55)
  %57 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @parser_errposition(%struct.TYPE_10__* %58, i32 %61)
  %63 = call i32 @ereport(i32 %54, i32 %62)
  br label %64

64:                                               ; preds = %53, %48
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @linitial(i32 %67)
  %69 = inttoptr i64 %68 to i32*
  %70 = call i64 @exprType(i32* %69)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %74 = load i32, i32* @T_NullIfExpr, align 4
  %75 = call i32 @NodeSetTag(%struct.TYPE_11__* %73, i32 %74)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %77 = bitcast %struct.TYPE_11__* %76 to i32*
  ret i32* %77
}

declare dso_local i32* @transformExprRecurse(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @make_op(%struct.TYPE_10__*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @parser_errposition(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @exprType(i32*) #1

declare dso_local i64 @linitial(i32) #1

declare dso_local i32 @NodeSetTag(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
