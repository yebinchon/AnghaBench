; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_addWhereTerm.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_addWhereTerm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { i64, i64 }

@TK_EQ = common dso_local global i32 0, align 4
@EP_FromJoin = common dso_local global i32 0, align 4
@EP_TokenOnly = common dso_local global i32 0, align 4
@EP_Reduced = common dso_local global i32 0, align 4
@EP_NoReduce = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_22__*, i32, i32, i32, i32, i32, %struct.TYPE_24__**)* @addWhereTerm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addWhereTerm(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.TYPE_24__** %7) #0 {
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_24__**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_24__*, align 8
  %19 = alloca %struct.TYPE_24__*, align 8
  %20 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %9, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.TYPE_24__** %7, %struct.TYPE_24__*** %16, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %17, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %13, align 4
  %33 = icmp sgt i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @assert(i32 %52)
  %54 = load i32*, i32** %17, align 8
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call %struct.TYPE_24__* @sqlite3CreateColumnExpr(i32* %54, %struct.TYPE_22__* %55, i32 %56, i32 %57)
  store %struct.TYPE_24__* %58, %struct.TYPE_24__** %18, align 8
  %59 = load i32*, i32** %17, align 8
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = call %struct.TYPE_24__* @sqlite3CreateColumnExpr(i32* %59, %struct.TYPE_22__* %60, i32 %61, i32 %62)
  store %struct.TYPE_24__* %63, %struct.TYPE_24__** %19, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %65 = load i32, i32* @TK_EQ, align 4
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %68 = call %struct.TYPE_24__* @sqlite3PExpr(%struct.TYPE_23__* %64, i32 %65, %struct.TYPE_24__* %66, %struct.TYPE_24__* %67)
  store %struct.TYPE_24__* %68, %struct.TYPE_24__** %20, align 8
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %70 = icmp ne %struct.TYPE_24__* %69, null
  br i1 %70, label %71, label %95

71:                                               ; preds = %8
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %71
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %76 = load i32, i32* @EP_FromJoin, align 4
  %77 = call i32 @ExprSetProperty(%struct.TYPE_24__* %75, i32 %76)
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %79 = load i32, i32* @EP_TokenOnly, align 4
  %80 = load i32, i32* @EP_Reduced, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @ExprHasProperty(%struct.TYPE_24__* %78, i32 %81)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %88 = load i32, i32* @EP_NoReduce, align 4
  %89 = call i32 @ExprSetVVAProperty(%struct.TYPE_24__* %87, i32 %88)
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %74, %71, %8
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %97 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %16, align 8
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %97, align 8
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %100 = call %struct.TYPE_24__* @sqlite3ExprAnd(%struct.TYPE_23__* %96, %struct.TYPE_24__* %98, %struct.TYPE_24__* %99)
  %101 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %16, align 8
  store %struct.TYPE_24__* %100, %struct.TYPE_24__** %101, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_24__* @sqlite3CreateColumnExpr(i32*, %struct.TYPE_22__*, i32, i32) #1

declare dso_local %struct.TYPE_24__* @sqlite3PExpr(%struct.TYPE_23__*, i32, %struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @ExprSetProperty(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @ExprSetVVAProperty(%struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_24__* @sqlite3ExprAnd(%struct.TYPE_23__*, %struct.TYPE_24__*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
