; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_expr.c_make_distinct_op.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_expr.c_make_distinct_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64 }

@BOOLOID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"IS DISTINCT FROM requires = operator to yield boolean\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s must not return a set\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"IS DISTINCT FROM\00", align 1
@T_DistinctExpr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i32*, i32*, i32*, i32)* @make_distinct_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_distinct_op(%struct.TYPE_6__* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32* @make_op(%struct.TYPE_6__* %12, i32* %13, i32* %14, i32* %15, i32 %18, i32 %19)
  store i32* %20, i32** %11, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = bitcast i32* %21 to %struct.TYPE_7__*
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BOOLOID, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %5
  %28 = load i32, i32* @ERROR, align 4
  %29 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %30 = call i32 @errcode(i32 %29)
  %31 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @parser_errposition(%struct.TYPE_6__* %32, i32 %33)
  %35 = call i32 @ereport(i32 %28, i32 %34)
  br label %36

36:                                               ; preds = %27, %5
  %37 = load i32*, i32** %11, align 8
  %38 = bitcast i32* %37 to %struct.TYPE_7__*
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load i32, i32* @ERROR, align 4
  %44 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %45 = call i32 @errcode(i32 %44)
  %46 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @parser_errposition(%struct.TYPE_6__* %47, i32 %48)
  %50 = call i32 @ereport(i32 %43, i32 %49)
  br label %51

51:                                               ; preds = %42, %36
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* @T_DistinctExpr, align 4
  %54 = call i32 @NodeSetTag(i32* %52, i32 %53)
  %55 = load i32*, i32** %11, align 8
  ret i32* %55
}

declare dso_local i32* @make_op(%struct.TYPE_6__*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @parser_errposition(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @NodeSetTag(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
