; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges6.c_range6list_remove_range2.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges6.c_range6list_remove_range2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Range6List = type { i32 }
%struct.Range6 = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @range6list_remove_range2(%struct.Range6List* %0, i64 %1) #0 {
  %3 = alloca %struct.Range6, align 4
  %4 = alloca %struct.Range6List*, align 8
  %5 = bitcast %struct.Range6* %3 to i64*
  store i64 %1, i64* %5, align 4
  store %struct.Range6List* %0, %struct.Range6List** %4, align 8
  %6 = load %struct.Range6List*, %struct.Range6List** %4, align 8
  %7 = getelementptr inbounds %struct.Range6, %struct.Range6* %3, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.Range6, %struct.Range6* %3, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @range6list_remove_range(%struct.Range6List* %6, i32 %8, i32 %10)
  ret void
}

declare dso_local i32 @range6list_remove_range(%struct.Range6List*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
