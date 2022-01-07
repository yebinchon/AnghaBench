; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___set_pcb.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___set_pcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32 }

@PANEL_CMD_DISASSEMBLY = common dso_local global i32 0, align 4
@__print_disassembly_cb = common dso_local global i8* null, align 8
@PANEL_CMD_STACK = common dso_local global i32 0, align 4
@__print_stack_cb = common dso_local global i8* null, align 8
@PANEL_CMD_HEXDUMP = common dso_local global i32 0, align 4
@__print_hexdump_cb = common dso_local global i8* null, align 8
@PANEL_CMD_DECOMPILER = common dso_local global i32 0, align 4
@__print_decompiler_cb = common dso_local global i8* null, align 8
@PANEL_CMD_GRAPH = common dso_local global i32 0, align 4
@__print_graph_cb = common dso_local global i8* null, align 8
@PANEL_CMD_TINYGRAPH = common dso_local global i32 0, align 4
@PANEL_CMD_DISASMSUMMARY = common dso_local global i32 0, align 4
@__print_disasmsummary_cb = common dso_local global i8* null, align 8
@__print_default_cb = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__set_pcb(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %93

10:                                               ; preds = %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = load i32, i32* @PANEL_CMD_DISASSEMBLY, align 4
  %13 = call i64 @__check_panel_type(%struct.TYPE_6__* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i8*, i8** @__print_disassembly_cb, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i8* %16, i8** %20, align 8
  br label %93

21:                                               ; preds = %10
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = load i32, i32* @PANEL_CMD_STACK, align 4
  %24 = call i64 @__check_panel_type(%struct.TYPE_6__* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i8*, i8** @__print_stack_cb, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i8* %27, i8** %31, align 8
  br label %93

32:                                               ; preds = %21
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = load i32, i32* @PANEL_CMD_HEXDUMP, align 4
  %35 = call i64 @__check_panel_type(%struct.TYPE_6__* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i8*, i8** @__print_hexdump_cb, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i8* %38, i8** %42, align 8
  br label %93

43:                                               ; preds = %32
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = load i32, i32* @PANEL_CMD_DECOMPILER, align 4
  %46 = call i64 @__check_panel_type(%struct.TYPE_6__* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i8*, i8** @__print_decompiler_cb, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i8* %49, i8** %53, align 8
  br label %93

54:                                               ; preds = %43
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %56 = load i32, i32* @PANEL_CMD_GRAPH, align 4
  %57 = call i64 @__check_panel_type(%struct.TYPE_6__* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i8*, i8** @__print_graph_cb, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i8* %60, i8** %64, align 8
  br label %93

65:                                               ; preds = %54
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %67 = load i32, i32* @PANEL_CMD_TINYGRAPH, align 4
  %68 = call i64 @__check_panel_type(%struct.TYPE_6__* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i8*, i8** @__print_graph_cb, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i8* %71, i8** %75, align 8
  br label %93

76:                                               ; preds = %65
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %78 = load i32, i32* @PANEL_CMD_DISASMSUMMARY, align 4
  %79 = call i64 @__check_panel_type(%struct.TYPE_6__* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i8*, i8** @__print_disasmsummary_cb, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  store i8* %82, i8** %86, align 8
  br label %93

87:                                               ; preds = %76
  %88 = load i8*, i8** @__print_default_cb, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i8* %88, i8** %92, align 8
  br label %93

93:                                               ; preds = %87, %81, %70, %59, %48, %37, %26, %15, %9
  ret void
}

declare dso_local i64 @__check_panel_type(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
