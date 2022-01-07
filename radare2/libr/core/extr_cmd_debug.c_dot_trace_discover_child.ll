; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_debug.c_dot_trace_discover_child.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_debug.c_dot_trace_discover_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.trace_node*, %struct.TYPE_6__* }
%struct.trace_node = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.dot_trace_ght = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*)* @dot_trace_discover_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dot_trace_discover_child(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.dot_trace_ght*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.trace_node*, align 8
  %10 = alloca %struct.trace_node*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.dot_trace_ght*
  store %struct.dot_trace_ght* %16, %struct.dot_trace_ght** %5, align 8
  %17 = load %struct.dot_trace_ght*, %struct.dot_trace_ght** %5, align 8
  %18 = getelementptr inbounds %struct.dot_trace_ght, %struct.dot_trace_ght* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  %20 = load %struct.dot_trace_ght*, %struct.dot_trace_ght** %5, align 8
  %21 = getelementptr inbounds %struct.dot_trace_ght, %struct.dot_trace_ght* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %7, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %8, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.trace_node*, %struct.trace_node** %27, align 8
  store %struct.trace_node* %28, %struct.trace_node** %9, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.trace_node*, %struct.trace_node** %30, align 8
  store %struct.trace_node* %31, %struct.trace_node** %10, align 8
  %32 = load %struct.trace_node*, %struct.trace_node** %9, align 8
  %33 = icmp ne %struct.trace_node* %32, null
  br i1 %33, label %34, label %57

34:                                               ; preds = %2
  %35 = load %struct.trace_node*, %struct.trace_node** %10, align 8
  %36 = icmp ne %struct.trace_node* %35, null
  br i1 %36, label %37, label %57

37:                                               ; preds = %34
  %38 = load i32*, i32** %6, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.trace_node*, %struct.trace_node** %9, align 8
  %41 = call i32* @get_graphtrace_node(i32* %38, i32* %39, %struct.trace_node* %40)
  store i32* %41, i32** %11, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.trace_node*, %struct.trace_node** %10, align 8
  %45 = call i32* @get_graphtrace_node(i32* %42, i32* %43, %struct.trace_node* %44)
  store i32* %45, i32** %12, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @r_graph_adjacent(i32* %46, i32* %47, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %37
  %52 = load i32*, i32** %6, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @r_graph_add_edge(i32* %52, i32* %53, i32* %54)
  br label %56

56:                                               ; preds = %51, %37
  br label %57

57:                                               ; preds = %56, %34, %2
  ret void
}

declare dso_local i32* @get_graphtrace_node(i32*, i32*, %struct.trace_node*) #1

declare dso_local i32 @r_graph_adjacent(i32*, i32*, i32*) #1

declare dso_local i32 @r_graph_add_edge(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
