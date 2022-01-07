; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_event-timeout.h_timeout_unlink.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_event-timeout.h_timeout_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TimeoutEntry = type { i64, %struct.TYPE_2__**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TimeoutEntry*)* @timeout_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timeout_unlink(%struct.TimeoutEntry* %0) #0 {
  %2 = alloca %struct.TimeoutEntry*, align 8
  store %struct.TimeoutEntry* %0, %struct.TimeoutEntry** %2, align 8
  %3 = load %struct.TimeoutEntry*, %struct.TimeoutEntry** %2, align 8
  %4 = getelementptr inbounds %struct.TimeoutEntry, %struct.TimeoutEntry* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %4, align 8
  %6 = icmp eq %struct.TYPE_2__** %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.TimeoutEntry*, %struct.TimeoutEntry** %2, align 8
  %9 = getelementptr inbounds %struct.TimeoutEntry, %struct.TimeoutEntry* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp eq %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %39

13:                                               ; preds = %7, %1
  %14 = load %struct.TimeoutEntry*, %struct.TimeoutEntry** %2, align 8
  %15 = getelementptr inbounds %struct.TimeoutEntry, %struct.TimeoutEntry* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load %struct.TimeoutEntry*, %struct.TimeoutEntry** %2, align 8
  %18 = getelementptr inbounds %struct.TimeoutEntry, %struct.TimeoutEntry* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %18, align 8
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %19, align 8
  %20 = load %struct.TimeoutEntry*, %struct.TimeoutEntry** %2, align 8
  %21 = getelementptr inbounds %struct.TimeoutEntry, %struct.TimeoutEntry* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %13
  %25 = load %struct.TimeoutEntry*, %struct.TimeoutEntry** %2, align 8
  %26 = getelementptr inbounds %struct.TimeoutEntry, %struct.TimeoutEntry* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %26, align 8
  %28 = load %struct.TimeoutEntry*, %struct.TimeoutEntry** %2, align 8
  %29 = getelementptr inbounds %struct.TimeoutEntry, %struct.TimeoutEntry* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store %struct.TYPE_2__** %27, %struct.TYPE_2__*** %31, align 8
  br label %32

32:                                               ; preds = %24, %13
  %33 = load %struct.TimeoutEntry*, %struct.TimeoutEntry** %2, align 8
  %34 = getelementptr inbounds %struct.TimeoutEntry, %struct.TimeoutEntry* %33, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %34, align 8
  %35 = load %struct.TimeoutEntry*, %struct.TimeoutEntry** %2, align 8
  %36 = getelementptr inbounds %struct.TimeoutEntry, %struct.TimeoutEntry* %35, i32 0, i32 1
  store %struct.TYPE_2__** null, %struct.TYPE_2__*** %36, align 8
  %37 = load %struct.TimeoutEntry*, %struct.TimeoutEntry** %2, align 8
  %38 = getelementptr inbounds %struct.TimeoutEntry, %struct.TimeoutEntry* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %32, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
