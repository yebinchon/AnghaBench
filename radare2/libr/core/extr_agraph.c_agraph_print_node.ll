; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_agraph.c_agraph_print_node.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_agraph.c_agraph_print_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_13__*)* @agraph_print_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agraph_print_node(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %58

12:                                               ; preds = %2
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call %struct.TYPE_13__* @get_anode(i64 %20)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = icmp eq %struct.TYPE_13__* %21, %22
  br label %24

24:                                               ; preds = %17, %12
  %25 = phi i1 [ false, %12 ], [ %23, %17 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %5, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %28 = call i32 @is_mini(%struct.TYPE_14__* %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @tiny_RANode_print(%struct.TYPE_14__* %34, %struct.TYPE_13__* %35, i32 %36)
  br label %58

38:                                               ; preds = %24
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41, %38
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @mini_RANode_print(%struct.TYPE_14__* %47, %struct.TYPE_13__* %48, i32 %49, i32 %50)
  br label %57

52:                                               ; preds = %41
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @normal_RANode_print(%struct.TYPE_14__* %53, %struct.TYPE_13__* %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %46
  br label %58

58:                                               ; preds = %11, %57, %33
  ret void
}

declare dso_local %struct.TYPE_13__* @get_anode(i64) #1

declare dso_local i32 @is_mini(%struct.TYPE_14__*) #1

declare dso_local i32 @tiny_RANode_print(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @mini_RANode_print(%struct.TYPE_14__*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @normal_RANode_print(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
