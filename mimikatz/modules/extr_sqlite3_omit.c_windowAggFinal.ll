; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_windowAggFinal.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_windowAggFinal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_6__*, i32, i32, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }

@SQLITE_FUNC_MINMAX = common dso_local global i32 0, align 4
@TK_UNBOUNDED = common dso_local global i64 0, align 8
@OP_Null = common dso_local global i32 0, align 4
@OP_Last = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@OP_ResetSorter = common dso_local global i32 0, align 4
@OP_AggFinal = common dso_local global i32 0, align 4
@P4_FUNCDEF = common dso_local global i32 0, align 4
@OP_Copy = common dso_local global i32 0, align 4
@OP_AggValue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32)* @windowAggFinal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @windowAggFinal(i32* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32* @sqlite3GetVdbe(i32* %9)
  store i32* %10, i32** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %8, align 8
  br label %12

12:                                               ; preds = %129, %3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %133

15:                                               ; preds = %12
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SQLITE_FUNC_MINMAX, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %69

24:                                               ; preds = %15
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TK_UNBOUNDED, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %69

30:                                               ; preds = %24
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @OP_Null, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @sqlite3VdbeAddOp2(i32* %31, i32 %32, i32 0, i32 %35)
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @OP_Last, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @sqlite3VdbeAddOp1(i32* %37, i32 %38, i32 %41)
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @VdbeCoverage(i32* %43)
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @OP_Column, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @sqlite3VdbeAddOp3(i32* %45, i32 %46, i32 %49, i32 0, i32 %52)
  %54 = load i32*, i32** %7, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i64 @sqlite3VdbeCurrentAddr(i32* %55)
  %57 = sub nsw i64 %56, 2
  %58 = call i32 @sqlite3VdbeJumpHere(i32* %54, i64 %57)
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %30
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* @OP_ResetSorter, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @sqlite3VdbeAddOp1(i32* %62, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %61, %30
  br label %128

69:                                               ; preds = %24, %15
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %127

75:                                               ; preds = %69
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %108

78:                                               ; preds = %75
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* @OP_AggFinal, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %85 = call i32 @windowArgCount(%struct.TYPE_5__* %84)
  %86 = call i32 @sqlite3VdbeAddOp2(i32* %79, i32 %80, i32 %83, i32 %85)
  %87 = load i32*, i32** %7, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = load i32, i32* @P4_FUNCDEF, align 4
  %92 = call i32 @sqlite3VdbeAppendP4(i32* %87, %struct.TYPE_6__* %90, i32 %91)
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* @OP_Copy, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @sqlite3VdbeAddOp2(i32* %93, i32 %94, i32 %97, i32 %100)
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* @OP_Null, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @sqlite3VdbeAddOp2(i32* %102, i32 %103, i32 0, i32 %106)
  br label %126

108:                                              ; preds = %75
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* @OP_AggValue, align 4
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %115 = call i32 @windowArgCount(%struct.TYPE_5__* %114)
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @sqlite3VdbeAddOp3(i32* %109, i32 %110, i32 %113, i32 %115, i32 %118)
  %120 = load i32*, i32** %7, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = load i32, i32* @P4_FUNCDEF, align 4
  %125 = call i32 @sqlite3VdbeAppendP4(i32* %120, %struct.TYPE_6__* %123, i32 %124)
  br label %126

126:                                              ; preds = %108, %78
  br label %127

127:                                              ; preds = %126, %74
  br label %128

128:                                              ; preds = %127, %68
  br label %129

129:                                              ; preds = %128
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 6
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  store %struct.TYPE_5__* %132, %struct.TYPE_5__** %8, align 8
  br label %12

133:                                              ; preds = %12
  ret void
}

declare dso_local i32* @sqlite3GetVdbe(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i64) #1

declare dso_local i64 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @windowArgCount(%struct.TYPE_5__*) #1

declare dso_local i32 @sqlite3VdbeAppendP4(i32*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
