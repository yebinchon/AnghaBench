; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_integrityCheckResultRow.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_integrityCheckResultRow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OP_ResultRow = common dso_local global i32 0, align 4
@OP_IfPos = common dso_local global i32 0, align 4
@OP_Halt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @integrityCheckResultRow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @integrityCheckResultRow(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @OP_ResultRow, align 4
  %6 = call i32 @sqlite3VdbeAddOp2(i32* %4, i32 %5, i32 3, i32 1)
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @OP_IfPos, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @sqlite3VdbeCurrentAddr(i32* %9)
  %11 = add nsw i64 %10, 2
  %12 = call i32 @sqlite3VdbeAddOp3(i32* %7, i32 %8, i32 1, i64 %11, i32 1)
  store i32 %12, i32* %3, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @VdbeCoverage(i32* %13)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @OP_Halt, align 4
  %17 = call i32 @sqlite3VdbeAddOp0(i32* %15, i32 %16)
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i64, i32) #1

declare dso_local i64 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp0(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
