; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___del_invalid_panels.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___del_invalid_panels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__del_invalid_panels(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %3, align 8
  store i32 1, i32* %4, align 4
  br label %9

9:                                                ; preds = %45, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %9
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.TYPE_13__* @__get_panel(%struct.TYPE_12__* %16, i32 %17)
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %5, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %31

26:                                               ; preds = %15
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @__del_panel(%struct.TYPE_14__* %27, i32 %28)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  call void @__del_invalid_panels(%struct.TYPE_14__* %30)
  br label %48

31:                                               ; preds = %15
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @__del_panel(%struct.TYPE_14__* %40, i32 %41)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  call void @__del_invalid_panels(%struct.TYPE_14__* %43)
  br label %48

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %9

48:                                               ; preds = %39, %26, %9
  ret void
}

declare dso_local %struct.TYPE_13__* @__get_panel(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @__del_panel(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
