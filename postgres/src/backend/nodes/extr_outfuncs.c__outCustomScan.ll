; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outCustomScan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outCustomScan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"CUSTOMSCAN\00", align 1
@flags = common dso_local global i32 0, align 4
@custom_plans = common dso_local global i32 0, align 4
@custom_exprs = common dso_local global i32 0, align 4
@custom_private = common dso_local global i32 0, align 4
@custom_scan_tlist = common dso_local global i32 0, align 4
@custom_relids = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c" :methods \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_5__*)* @_outCustomScan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_outCustomScan(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %5 = call i32 @WRITE_NODE_TYPE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = bitcast %struct.TYPE_5__* %7 to i32*
  %9 = call i32 @_outScanInfo(i32 %6, i32* %8)
  %10 = load i32, i32* @flags, align 4
  %11 = call i32 @WRITE_UINT_FIELD(i32 %10)
  %12 = load i32, i32* @custom_plans, align 4
  %13 = call i32 @WRITE_NODE_FIELD(i32 %12)
  %14 = load i32, i32* @custom_exprs, align 4
  %15 = call i32 @WRITE_NODE_FIELD(i32 %14)
  %16 = load i32, i32* @custom_private, align 4
  %17 = call i32 @WRITE_NODE_FIELD(i32 %16)
  %18 = load i32, i32* @custom_scan_tlist, align 4
  %19 = call i32 @WRITE_NODE_FIELD(i32 %18)
  %20 = load i32, i32* @custom_relids, align 4
  %21 = call i32 @WRITE_BITMAPSET_FIELD(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @appendStringInfoString(i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @outToken(i32 %24, i32 %29)
  ret void
}

declare dso_local i32 @WRITE_NODE_TYPE(i8*) #1

declare dso_local i32 @_outScanInfo(i32, i32*) #1

declare dso_local i32 @WRITE_UINT_FIELD(i32) #1

declare dso_local i32 @WRITE_NODE_FIELD(i32) #1

declare dso_local i32 @WRITE_BITMAPSET_FIELD(i32) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @outToken(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
