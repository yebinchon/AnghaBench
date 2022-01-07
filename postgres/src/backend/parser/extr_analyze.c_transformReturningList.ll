; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_analyze.c_transformReturningList.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_analyze.c_transformReturningList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }

@NIL = common dso_local global i32* null, align 8
@EXPR_KIND_RETURNING = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"RETURNING must have at least one column\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i32*)* @transformReturningList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @transformReturningList(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32*, i32** @NIL, align 8
  %10 = icmp eq i32* %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32*, i32** @NIL, align 8
  store i32* %12, i32** %3, align 8
  br label %54

13:                                               ; preds = %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @EXPR_KIND_RETURNING, align 4
  %22 = call i32* @transformTargetList(%struct.TYPE_7__* %19, i32* %20, i32 %21)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** @NIL, align 8
  %25 = icmp eq i32* %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %13
  %27 = load i32, i32* @ERROR, align 4
  %28 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %29 = call i32 @errcode(i32 %28)
  %30 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @linitial(i32* %32)
  %34 = call i32 @exprLocation(i32 %33)
  %35 = call i32 @parser_errposition(%struct.TYPE_7__* %31, i32 %34)
  %36 = call i32 @ereport(i32 %27, i32 %35)
  br label %37

37:                                               ; preds = %26, %13
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @markTargetListOrigins(%struct.TYPE_7__* %38, i32* %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @resolveTargetListUnknowns(%struct.TYPE_7__* %46, i32* %47)
  br label %49

49:                                               ; preds = %45, %37
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32*, i32** %6, align 8
  store i32* %53, i32** %3, align 8
  br label %54

54:                                               ; preds = %49, %11
  %55 = load i32*, i32** %3, align 8
  ret i32* %55
}

declare dso_local i32* @transformTargetList(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @parser_errposition(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @exprLocation(i32) #1

declare dso_local i32 @linitial(i32*) #1

declare dso_local i32 @markTargetListOrigins(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @resolveTargetListUnknowns(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
