; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_resolveAlias.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_resolveAlias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }

@TK_COLLATE = common dso_local global i64 0, align 8
@EP_Alias = common dso_local global i32 0, align 4
@EP_Static = common dso_local global i32 0, align 4
@EP_IntValue = common dso_local global i32 0, align 4
@EP_Reduced = common dso_local global i32 0, align 4
@EP_TokenOnly = common dso_local global i32 0, align 4
@EP_MemToken = common dso_local global i32 0, align 4
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
  %47 = icmp eq %struct.TYPE_25__* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %24
  br label %125

49:                                               ; preds = %24
  %50 = load i8*, i8** %11, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 71
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @incrAggFunctionDepth(%struct.TYPE_25__* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %49
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TK_COLLATE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.TYPE_25__* @sqlite3ExprAddCollateString(%struct.TYPE_23__* %66, %struct.TYPE_25__* %67, i32 %71)
  store %struct.TYPE_25__* %72, %struct.TYPE_25__** %14, align 8
  br label %73

73:                                               ; preds = %65, %59
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %75 = load i32, i32* @EP_Alias, align 4
  %76 = call i32 @ExprSetProperty(%struct.TYPE_25__* %74, i32 %75)
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %78 = load i32, i32* @EP_Static, align 4
  %79 = call i32 @ExprSetProperty(%struct.TYPE_25__* %77, i32 %78)
  %80 = load i32*, i32** %15, align 8
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %82 = call i32 @sqlite3ExprDelete(i32* %80, %struct.TYPE_25__* %81)
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %85 = call i32 @memcpy(%struct.TYPE_25__* %83, %struct.TYPE_25__* %84, i32 16)
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %87 = load i32, i32* @EP_IntValue, align 4
  %88 = call i32 @ExprHasProperty(%struct.TYPE_25__* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %121, label %90

90:                                               ; preds = %73
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %121

96:                                               ; preds = %90
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @EP_Reduced, align 4
  %101 = load i32, i32* @EP_TokenOnly, align 4
  %102 = or i32 %100, %101
  %103 = and i32 %99, %102
  %104 = icmp eq i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = load i32*, i32** %15, align 8
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @sqlite3DbStrDup(i32* %107, i32 %111)
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 4
  %116 = load i32, i32* @EP_MemToken, align 4
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %96, %90, %73
  %122 = load i32*, i32** %15, align 8
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %124 = call i32 @sqlite3DbFree(i32* %122, %struct.TYPE_25__* %123)
  br label %125

125:                                              ; preds = %121, %48
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
