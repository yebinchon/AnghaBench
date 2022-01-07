; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/mqtt/extr_msg_queue.c_msg_size.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/mqtt/extr_msg_queue.c_msg_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msg_size(%struct.TYPE_3__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %3, align 8
  %6 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %7 = icmp ne %struct.TYPE_3__** %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %33

13:                                               ; preds = %8
  store i32 1, i32* %4, align 4
  %14 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %5, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %24, %18
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %19

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30, %13
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %12
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
