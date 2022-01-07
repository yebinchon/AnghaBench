; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_pushOntoSorter.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_pushOntoSorter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }

@OP_Sequence = common dso_local global i32 0, align 4
@OP_MakeRecord = common dso_local global i32 0, align 4
@SF_UseSorter = common dso_local global i32 0, align 4
@OP_SorterInsert = common dso_local global i32 0, align 4
@OP_IdxInsert = common dso_local global i32 0, align 4
@OP_IfZero = common dso_local global i32 0, align 4
@OP_AddImm = common dso_local global i32 0, align 4
@OP_Goto = common dso_local global i32 0, align 4
@OP_Last = common dso_local global i32 0, align 4
@OP_Delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_15__*, i32)* @pushOntoSorter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pushOntoSorter(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, %struct.TYPE_15__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %9, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %24, 2
  %26 = call i32 @sqlite3GetTempRange(%struct.TYPE_16__* %23, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = call i32 @sqlite3GetTempReg(%struct.TYPE_16__* %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %30 = call i32 @sqlite3ExprCacheClear(%struct.TYPE_16__* %29)
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @sqlite3ExprCodeExprList(%struct.TYPE_16__* %31, %struct.TYPE_17__* %32, i32 %33, i32 0)
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* @OP_Sequence, align 4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %40, %41
  %43 = call i32 @sqlite3VdbeAddOp2(i32* %35, i32 %36, i32 %39, i32 %42)
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %46, %47
  %49 = add nsw i32 %48, 1
  %50 = call i32 @sqlite3ExprCodeMove(%struct.TYPE_16__* %44, i32 %45, i32 %49, i32 1)
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* @OP_MakeRecord, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 2
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @sqlite3VdbeAddOp3(i32* %51, i32 %52, i32 %53, i32 %55, i32 %56)
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SF_UseSorter, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %4
  %65 = load i32, i32* @OP_SorterInsert, align 4
  store i32 %65, i32* %13, align 4
  br label %68

66:                                               ; preds = %4
  %67 = load i32, i32* @OP_IdxInsert, align 4
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @sqlite3VdbeAddOp2(i32* %69, i32 %70, i32 %73, i32 %74)
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_16__* %76, i32 %77)
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 2
  %83 = call i32 @sqlite3ReleaseTempRange(%struct.TYPE_16__* %79, i32 %80, i32 %82)
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %132

88:                                               ; preds = %68
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %16, align 4
  br label %102

98:                                               ; preds = %88
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %16, align 4
  br label %102

102:                                              ; preds = %98, %93
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* @OP_IfZero, align 4
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @sqlite3VdbeAddOp1(i32* %103, i32 %104, i32 %105)
  store i32 %106, i32* %14, align 4
  %107 = load i32*, i32** %9, align 8
  %108 = load i32, i32* @OP_AddImm, align 4
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @sqlite3VdbeAddOp2(i32* %107, i32 %108, i32 %109, i32 -1)
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* @OP_Goto, align 4
  %113 = call i32 @sqlite3VdbeAddOp0(i32* %111, i32 %112)
  store i32 %113, i32* %15, align 4
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @sqlite3VdbeJumpHere(i32* %114, i32 %115)
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* @OP_Last, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @sqlite3VdbeAddOp1(i32* %117, i32 %118, i32 %121)
  %123 = load i32*, i32** %9, align 8
  %124 = load i32, i32* @OP_Delete, align 4
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @sqlite3VdbeAddOp1(i32* %123, i32 %124, i32 %127)
  %129 = load i32*, i32** %9, align 8
  %130 = load i32, i32* %15, align 4
  %131 = call i32 @sqlite3VdbeJumpHere(i32* %129, i32 %130)
  br label %132

132:                                              ; preds = %102, %68
  ret void
}

declare dso_local i32 @sqlite3GetTempRange(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_16__*) #1

declare dso_local i32 @sqlite3ExprCacheClear(%struct.TYPE_16__*) #1

declare dso_local i32 @sqlite3ExprCodeExprList(%struct.TYPE_16__*, %struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3ExprCodeMove(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempRange(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp0(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
