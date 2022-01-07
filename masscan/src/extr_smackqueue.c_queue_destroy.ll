; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_smackqueue.c_queue_destroy.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_smackqueue.c_queue_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Queue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @queue_destroy(%struct.Queue* %0) #0 {
  %2 = alloca %struct.Queue*, align 8
  store %struct.Queue* %0, %struct.Queue** %2, align 8
  %3 = load %struct.Queue*, %struct.Queue** %2, align 8
  %4 = icmp eq %struct.Queue* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %11, %6
  %8 = load %struct.Queue*, %struct.Queue** %2, align 8
  %9 = call i64 @queue_has_more_items(%struct.Queue* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load %struct.Queue*, %struct.Queue** %2, align 8
  %13 = call i32 @dequeue(%struct.Queue* %12)
  br label %7

14:                                               ; preds = %7
  %15 = load %struct.Queue*, %struct.Queue** %2, align 8
  %16 = call i32 @free(%struct.Queue* %15)
  br label %17

17:                                               ; preds = %14, %5
  ret void
}

declare dso_local i64 @queue_has_more_items(%struct.Queue*) #1

declare dso_local i32 @dequeue(%struct.Queue*) #1

declare dso_local i32 @free(%struct.Queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
