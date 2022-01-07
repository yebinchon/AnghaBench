; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/json/src/extr_json.c_json_delete.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/json/src/extr_json.c_json_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_delete(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = icmp ne %struct.TYPE_7__* %5, null
  br i1 %6, label %7, label %38

7:                                                ; preds = %1
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = call i32 @json_remove_from_parent(%struct.TYPE_7__* %8)
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %34 [
    i32 128, label %13
    i32 130, label %18
    i32 129, label %18
  ]

13:                                               ; preds = %7
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = call i32 @free(%struct.TYPE_7__* %16)
  br label %35

18:                                               ; preds = %7, %7
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %3, align 8
  br label %23

23:                                               ; preds = %31, %18
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = icmp ne %struct.TYPE_7__* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %4, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  call void @json_delete(%struct.TYPE_7__* %30)
  br label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %3, align 8
  br label %23

33:                                               ; preds = %23
  br label %35

34:                                               ; preds = %7
  br label %35

35:                                               ; preds = %34, %33, %13
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = call i32 @free(%struct.TYPE_7__* %36)
  br label %38

38:                                               ; preds = %35, %1
  ret void
}

declare dso_local i32 @json_remove_from_parent(%struct.TYPE_7__*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
