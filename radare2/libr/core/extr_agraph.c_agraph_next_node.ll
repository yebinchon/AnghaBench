; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_agraph.c_agraph_next_node.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_agraph.c_agraph_next_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @agraph_next_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agraph_next_node(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @find_near_of(%struct.TYPE_11__* %4, i32 %7, i32 1)
  %9 = call %struct.TYPE_10__* @get_anode(i32 %8)
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %3, align 8
  br label %10

10:                                               ; preds = %20, %1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = icmp ne %struct.TYPE_10__* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %13, %10
  %19 = phi i1 [ false, %10 ], [ %17, %13 ]
  br i1 %19, label %20, label %27

20:                                               ; preds = %18
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @find_near_of(%struct.TYPE_11__* %21, i32 %24, i32 1)
  %26 = call %struct.TYPE_10__* @get_anode(i32 %25)
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %3, align 8
  br label %10

27:                                               ; preds = %18
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = call i32 @r_agraph_set_curnode(%struct.TYPE_11__* %28, %struct.TYPE_10__* %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.TYPE_10__* @get_anode(i32 %34)
  %36 = call i32 @agraph_update_seek(%struct.TYPE_11__* %31, %struct.TYPE_10__* %35, i32 0)
  ret void
}

declare dso_local %struct.TYPE_10__* @get_anode(i32) #1

declare dso_local i32 @find_near_of(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @r_agraph_set_curnode(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @agraph_update_seek(%struct.TYPE_11__*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
