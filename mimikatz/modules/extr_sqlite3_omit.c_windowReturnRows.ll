; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_windowReturnRows.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_windowReturnRows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@OP_IfPos = common dso_local global i32 0, align 4
@OP_Goto = common dso_local global i32 0, align 4
@OP_Next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i32, i32, i32, i32, i32)* @windowReturnRows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @windowReturnRows(i32* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = call i32* @sqlite3GetVdbe(i32* %17)
  store i32* %18, i32** %16, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = call i32 @windowAggFinal(i32* %19, %struct.TYPE_6__* %20, i32 0)
  %22 = load i32*, i32** %16, align 8
  %23 = load i32, i32* @OP_IfPos, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32*, i32** %16, align 8
  %26 = call i64 @sqlite3VdbeCurrentAddr(i32* %25)
  %27 = add nsw i64 %26, 2
  %28 = call i32 @sqlite3VdbeAddOp3(i32* %22, i32 %23, i32 %24, i64 %27, i32 1)
  store i32 %28, i32* %15, align 4
  %29 = load i32*, i32** %16, align 8
  %30 = call i32 @VdbeCoverage(i32* %29)
  %31 = load i32*, i32** %16, align 8
  %32 = load i32, i32* @OP_Goto, align 4
  %33 = call i32 @sqlite3VdbeAddOp2(i32* %31, i32 %32, i32 0, i32 0)
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @windowReturnOneRow(i32* %34, %struct.TYPE_6__* %35, i32 %36, i32 %37)
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %7
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @windowAggStep(i32* %42, %struct.TYPE_6__* %43, i32 %46, i32 1, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %41, %7
  %51 = load i32*, i32** %16, align 8
  %52 = load i32, i32* @OP_Next, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @sqlite3VdbeAddOp2(i32* %51, i32 %52, i32 %55, i32 %56)
  %58 = load i32*, i32** %16, align 8
  %59 = call i32 @VdbeCoverage(i32* %58)
  %60 = load i32*, i32** %16, align 8
  %61 = load i32, i32* %15, align 4
  %62 = add nsw i32 %61, 1
  %63 = call i32 @sqlite3VdbeJumpHere(i32* %60, i32 %62)
  ret void
}

declare dso_local i32* @sqlite3GetVdbe(i32*) #1

declare dso_local i32 @windowAggFinal(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i64, i32) #1

declare dso_local i64 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @windowReturnOneRow(i32*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @windowAggStep(i32*, %struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
