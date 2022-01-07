; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_smackqueue.c_dequeue.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_smackqueue.c_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Queue = type { %struct.QueueElement* }
%struct.QueueElement = type { i32, %struct.QueueElement* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dequeue(%struct.Queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Queue*, align 8
  %4 = alloca %struct.QueueElement*, align 8
  %5 = alloca i32, align 4
  store %struct.Queue* %0, %struct.Queue** %3, align 8
  %6 = load %struct.Queue*, %struct.Queue** %3, align 8
  %7 = getelementptr inbounds %struct.Queue, %struct.Queue* %6, i32 0, i32 0
  %8 = load %struct.QueueElement*, %struct.QueueElement** %7, align 8
  %9 = icmp eq %struct.QueueElement* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = load %struct.Queue*, %struct.Queue** %3, align 8
  %13 = getelementptr inbounds %struct.Queue, %struct.Queue* %12, i32 0, i32 0
  %14 = load %struct.QueueElement*, %struct.QueueElement** %13, align 8
  store %struct.QueueElement* %14, %struct.QueueElement** %4, align 8
  %15 = load %struct.QueueElement*, %struct.QueueElement** %4, align 8
  %16 = getelementptr inbounds %struct.QueueElement, %struct.QueueElement* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load %struct.QueueElement*, %struct.QueueElement** %4, align 8
  %19 = getelementptr inbounds %struct.QueueElement, %struct.QueueElement* %18, i32 0, i32 1
  %20 = load %struct.QueueElement*, %struct.QueueElement** %19, align 8
  %21 = load %struct.Queue*, %struct.Queue** %3, align 8
  %22 = getelementptr inbounds %struct.Queue, %struct.Queue* %21, i32 0, i32 0
  store %struct.QueueElement* %20, %struct.QueueElement** %22, align 8
  %23 = load %struct.QueueElement*, %struct.QueueElement** %4, align 8
  %24 = call i32 @free(%struct.QueueElement* %23)
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %11, %10
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @free(%struct.QueueElement*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
