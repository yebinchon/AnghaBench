; ModuleID = '/home/carl/AnghaBench/netdata/database/extr_rrdcalctemplate.c_rrdcalctemplate_link_matching.c'
source_filename = "/home/carl/AnghaBench/netdata/database/extr_rrdcalctemplate.c_rrdcalctemplate_link_matching.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_10__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrdcalctemplate_link_matching(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %4, align 8
  br label %11

11:                                               ; preds = %19, %1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = icmp ne %struct.TYPE_10__* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = call i32 @rrdcalctemplate_link_matching_test(%struct.TYPE_10__* %15, %struct.TYPE_8__* %16, %struct.TYPE_9__* %17)
  br label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %4, align 8
  br label %11

23:                                               ; preds = %11
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %4, align 8
  br label %27

27:                                               ; preds = %35, %23
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = icmp ne %struct.TYPE_10__* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = call i32 @rrdcalctemplate_link_matching_test(%struct.TYPE_10__* %31, %struct.TYPE_8__* %32, %struct.TYPE_9__* %33)
  br label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %4, align 8
  br label %27

39:                                               ; preds = %27
  ret void
}

declare dso_local i32 @rrdcalctemplate_link_matching_test(%struct.TYPE_10__*, %struct.TYPE_8__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
