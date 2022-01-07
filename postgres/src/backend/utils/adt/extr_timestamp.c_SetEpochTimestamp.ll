; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_SetEpochTimestamp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_timestamp.c_SetEpochTimestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_tm = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SetEpochTimestamp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pg_tm, align 4
  %3 = alloca %struct.pg_tm*, align 8
  store %struct.pg_tm* %2, %struct.pg_tm** %3, align 8
  %4 = load %struct.pg_tm*, %struct.pg_tm** %3, align 8
  %5 = call i32 @GetEpochTime(%struct.pg_tm* %4)
  %6 = load %struct.pg_tm*, %struct.pg_tm** %3, align 8
  %7 = call i32 @tm2timestamp(%struct.pg_tm* %6, i32 0, i32* null, i32* %1)
  %8 = load i32, i32* %1, align 4
  ret i32 %8
}

declare dso_local i32 @GetEpochTime(%struct.pg_tm*) #1

declare dso_local i32 @tm2timestamp(%struct.pg_tm*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
