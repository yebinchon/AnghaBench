; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___set_dcb.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___set_dcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i64, i64, i64, i32 }

@PANEL_CMD_GRAPH = common dso_local global i32 0, align 4
@__direction_graph_cb = common dso_local global i8* null, align 8
@__direction_default_cb = common dso_local global i8* null, align 8
@PANEL_CMD_STACK = common dso_local global i32 0, align 4
@__direction_stack_cb = common dso_local global i8* null, align 8
@PANEL_CMD_DISASSEMBLY = common dso_local global i32 0, align 4
@__direction_disassembly_cb = common dso_local global i8* null, align 8
@PANEL_CMD_REGISTERS = common dso_local global i32 0, align 4
@__direction_register_cb = common dso_local global i8* null, align 8
@PANEL_CMD_HEXDUMP = common dso_local global i32 0, align 4
@__direction_hexdump_cb = common dso_local global i8* null, align 8
@__direction_panels_cursor_cb = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__set_dcb(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %115

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = load i32, i32* @PANEL_CMD_GRAPH, align 4
  %15 = call i64 @__check_panel_type(%struct.TYPE_7__* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i8*, i8** @__direction_graph_cb, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i8* %18, i8** %22, align 8
  br label %115

23:                                               ; preds = %12
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %30, %23
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37, %30
  %45 = load i8*, i8** @__direction_default_cb, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i8* %45, i8** %49, align 8
  br label %115

50:                                               ; preds = %37
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = load i32, i32* @PANEL_CMD_STACK, align 4
  %53 = call i64 @__check_panel_type(%struct.TYPE_7__* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i8*, i8** @__direction_stack_cb, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i8* %56, i8** %60, align 8
  br label %115

61:                                               ; preds = %50
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = load i32, i32* @PANEL_CMD_DISASSEMBLY, align 4
  %64 = call i64 @__check_panel_type(%struct.TYPE_7__* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i8*, i8** @__direction_disassembly_cb, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i8* %67, i8** %71, align 8
  br label %114

72:                                               ; preds = %61
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = load i32, i32* @PANEL_CMD_REGISTERS, align 4
  %75 = call i64 @__check_panel_type(%struct.TYPE_7__* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i8*, i8** @__direction_register_cb, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i8* %78, i8** %82, align 8
  br label %113

83:                                               ; preds = %72
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = load i32, i32* @PANEL_CMD_HEXDUMP, align 4
  %86 = call i64 @__check_panel_type(%struct.TYPE_7__* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load i8*, i8** @__direction_hexdump_cb, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i8* %89, i8** %93, align 8
  br label %112

94:                                               ; preds = %83
  %95 = load i32*, i32** %3, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %97 = call i64 @__is_abnormal_cursor_type(i32* %95, %struct.TYPE_7__* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load i8*, i8** @__direction_panels_cursor_cb, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i8* %100, i8** %104, align 8
  br label %111

105:                                              ; preds = %94
  %106 = load i8*, i8** @__direction_default_cb, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  store i8* %106, i8** %110, align 8
  br label %111

111:                                              ; preds = %105, %99
  br label %112

112:                                              ; preds = %111, %88
  br label %113

113:                                              ; preds = %112, %77
  br label %114

114:                                              ; preds = %113, %66
  br label %115

115:                                              ; preds = %11, %17, %44, %114, %55
  ret void
}

declare dso_local i64 @__check_panel_type(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @__is_abnormal_cursor_type(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
