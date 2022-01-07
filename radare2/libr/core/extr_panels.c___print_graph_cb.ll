; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___print_graph_cb.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___print_graph_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i64 }

@__do_panels_refreshOneShot = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__print_graph_cb(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %6, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @__check_func_diff(%struct.TYPE_10__* %20, i32* %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %2
  %25 = phi i1 [ false, %2 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i8* @__find_cmd_str_cache(%struct.TYPE_10__* %27, i32* %28)
  store i8* %29, i8** %8, align 8
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32, %24
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i8* @__handle_cmd_str_cache(%struct.TYPE_10__* %36, i32* %37, i32 0)
  store i8* %38, i8** %8, align 8
  br label %39

39:                                               ; preds = %35, %32
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %48, align 8
  %49 = load i64, i64* @__do_panels_refreshOneShot, align 8
  %50 = inttoptr i64 %49 to i32*
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32* %50, i32** %54, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @__update_panel_contents(%struct.TYPE_10__* %55, i32* %56, i8* %57)
  ret void
}

declare dso_local i64 @__check_func_diff(%struct.TYPE_10__*, i32*) #1

declare dso_local i8* @__find_cmd_str_cache(%struct.TYPE_10__*, i32*) #1

declare dso_local i8* @__handle_cmd_str_cache(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @__update_panel_contents(%struct.TYPE_10__*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
