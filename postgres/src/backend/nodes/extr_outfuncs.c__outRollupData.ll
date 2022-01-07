; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outRollupData.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outRollupData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"ROLLUP\00", align 1
@groupClause = common dso_local global i32 0, align 4
@gsets = common dso_local global i32 0, align 4
@gsets_data = common dso_local global i32 0, align 4
@numGroups = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%.0f\00", align 1
@hashable = common dso_local global i32 0, align 4
@is_hashed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @_outRollupData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_outRollupData(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = call i32 @WRITE_NODE_TYPE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @groupClause, align 4
  %7 = call i32 @WRITE_NODE_FIELD(i32 %6)
  %8 = load i32, i32* @gsets, align 4
  %9 = call i32 @WRITE_NODE_FIELD(i32 %8)
  %10 = load i32, i32* @gsets_data, align 4
  %11 = call i32 @WRITE_NODE_FIELD(i32 %10)
  %12 = load i32, i32* @numGroups, align 4
  %13 = call i32 @WRITE_FLOAT_FIELD(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @hashable, align 4
  %15 = call i32 @WRITE_BOOL_FIELD(i32 %14)
  %16 = load i32, i32* @is_hashed, align 4
  %17 = call i32 @WRITE_BOOL_FIELD(i32 %16)
  ret void
}

declare dso_local i32 @WRITE_NODE_TYPE(i8*) #1

declare dso_local i32 @WRITE_NODE_FIELD(i32) #1

declare dso_local i32 @WRITE_FLOAT_FIELD(i32, i8*) #1

declare dso_local i32 @WRITE_BOOL_FIELD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
