; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_resolveAlias.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_resolveAlias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }

@TK_COLLATE = common dso_local global i64 0, align 8
@EP_Static = common dso_local global i32 0, align 4
@EP_IntValue = common dso_local global i32 0, align 4
@EP_Reduced = common dso_local global i32 0, align 4
@EP_TokenOnly = common dso_local global i32 0, align 4
@EP_MemToken = common dso_local global i32 0, align 4
@EP_Alias = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_24__*, i32, %struct.TYPE_25__*, i8*, i32)* @resolveAlias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolveAlias(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1, i32 %2, %struct.TYPE_25__* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_25__* %3, %struct.TYPE_25__** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %6
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br label %24

24:                                               ; preds = %18, %6
  %25 = phi i1 [ false, %6 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %34, align 8
  store %struct.TYPE_25__* %35, %struct.TYPE_25__** %13, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %37 = icmp ne %struct.TYPE_25__* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %15, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %45 = call %struct.TYPE_25__* @sqlite3ExprDup(i32* %43, %struct.TYPE_25__* %44, i32 0)
  store %struct.TYPE_25__* %45, %struct.TYPE_25__** %14, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %47 = icmp ne %struct.TYPE_25__* %46, null
  br i1 %47, label %48, label %121

48:                                               ; preds = %24
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 71
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @incrAggFunctionDepth(%struct.TYPE_25__* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %48
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TK_COLLATE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.TYPE_25__* @sqlite3ExprAddCollateString(%struct.TYPE_23__* %65, %struct.TYPE_25__* %66, i32 %70)
  store %struct.TYPE_25__* %71, %struct.TYPE_25__** %14, align 8
  br label %72

72:                                               ; preds = %64, %58
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %74 = load i32, i32* @EP_Static, align 4
  %75 = call i32 @ExprSetProperty(%struct.TYPE_25__* %73, i32 %74)
  %76 = load i32*, i32** %15, align 8
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %78 = call i32 @sqlite3ExprDelete(i32* %76, %struct.TYPE_25__* %77)
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %81 = call i32 @memcpy(%struct.TYPE_25__* %79, %struct.TYPE_25__* %80, i32 16)
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %83 = load i32, i32* @EP_IntValue, align 4
  %84 = call i32 @ExprHasProperty(%struct.TYPE_25__* %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %117, label %86

86:                                               ; preds = %72
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %117

92:                                               ; preds = %86
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @EP_Reduced, align 4
  %97 = load i32, i32* @EP_TokenOnly, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %95, %98
  %100 = icmp eq i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load i32*, i32** %15, align 8
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @sqlite3DbStrDup(i32* %103, i32 %107)
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* @EP_MemToken, align 4
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %92, %86, %72
  %118 = load i32*, i32** %15, align 8
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %120 = call i32 @sqlite3DbFree(i32* %118, %struct.TYPE_25__* %119)
  br label %121

121:                                              ; preds = %117, %24
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %123 = load i32, i32* @EP_Alias, align 4
  %124 = call i32 @ExprSetProperty(%struct.TYPE_25__* %122, i32 %123)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_25__* @sqlite3ExprDup(i32*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @incrAggFunctionDepth(%struct.TYPE_25__*, i32) #1

declare dso_local %struct.TYPE_25__* @sqlite3ExprAddCollateString(%struct.TYPE_23__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @ExprSetProperty(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @sqlite3ExprDelete(i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_25__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @sqlite3DbStrDup(i32*, i32) #1

declare dso_local i32 @sqlite3DbFree(i32*, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
