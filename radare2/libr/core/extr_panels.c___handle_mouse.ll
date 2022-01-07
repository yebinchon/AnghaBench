; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___handle_mouse.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___handle_mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32 }

@PANEL_MODE_MENU = common dso_local global i64 0, align 8
@INT8_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__handle_mouse(%struct.TYPE_26__* %0, %struct.TYPE_25__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 1, i32* %8, align 4
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  store %struct.TYPE_24__* %18, %struct.TYPE_24__** %9, align 8
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %20 = call i64 @__drag_and_resize(%struct.TYPE_26__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %158

23:                                               ; preds = %3
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %150

27:                                               ; preds = %23
  %28 = call i64 @r_cons_get_click(i32* %10, i32* %11)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %148

30:                                               ; preds = %27
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i64 @__handle_mouse_on_top(%struct.TYPE_26__* %34, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %158

40:                                               ; preds = %33, %30
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PANEL_MODE_MENU, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @__handle_mouse_on_menu(%struct.TYPE_26__* %47, i32 %48, i32 %49)
  store i32 1, i32* %4, align 4
  br label %158

51:                                               ; preds = %40
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @__handle_mouse_on_X(%struct.TYPE_26__* %52, i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  br label %158

58:                                               ; preds = %51
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i64 @__check_if_mouse_x_illegal(%struct.TYPE_26__* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i64 @__check_if_mouse_y_illegal(%struct.TYPE_26__* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63, %58
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 1
  store i32 0, i32* %70, align 8
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 2
  store i32 0, i32* %72, align 4
  store i32 1, i32* %4, align 4
  br label %158

73:                                               ; preds = %63
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @__check_if_mouse_x_on_edge(%struct.TYPE_26__* %74, i32 %75, i32 %76)
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @__check_if_mouse_y_on_edge(%struct.TYPE_26__* %80, i32 %81, i32 %82)
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %73
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90, %73
  store i32 1, i32* %4, align 4
  br label %158

96:                                               ; preds = %90
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32*, i32** %7, align 8
  %102 = call i64 @__handle_mouse_on_panel(%struct.TYPE_26__* %97, %struct.TYPE_25__* %98, i32 %99, i32 %100, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  store i32 1, i32* %4, align 4
  br label %158

105:                                              ; preds = %96
  %106 = call i32 @r_cons_get_size(i32* %12)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %126

110:                                              ; preds = %105
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %112 = call %struct.TYPE_25__* @__get_cur_panel(%struct.TYPE_24__* %111)
  store %struct.TYPE_25__* %112, %struct.TYPE_25__** %14, align 8
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @__split_panel_horizontal(%struct.TYPE_26__* %113, %struct.TYPE_25__* %114, i32 %119, i32 %124)
  br label %147

126:                                              ; preds = %105
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %146

130:                                              ; preds = %126
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %132 = call %struct.TYPE_25__* @__get_cur_panel(%struct.TYPE_24__* %131)
  store %struct.TYPE_25__* %132, %struct.TYPE_25__** %15, align 8
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @__split_panel_vertical(%struct.TYPE_26__* %133, %struct.TYPE_25__* %134, i32 %139, i32 %144)
  br label %146

146:                                              ; preds = %130, %126
  br label %147

147:                                              ; preds = %146, %110
  br label %149

148:                                              ; preds = %27
  store i32 0, i32* %4, align 4
  br label %158

149:                                              ; preds = %147
  br label %150

150:                                              ; preds = %149, %23
  %151 = load i32*, i32** %7, align 8
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @INT8_MAX, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = load i32*, i32** %7, align 8
  store i32 34, i32* %156, align 4
  store i32 0, i32* %4, align 4
  br label %158

157:                                              ; preds = %150
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %157, %155, %148, %104, %95, %68, %57, %46, %39, %22
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i64 @__drag_and_resize(%struct.TYPE_26__*) #1

declare dso_local i64 @r_cons_get_click(i32*, i32*) #1

declare dso_local i64 @__handle_mouse_on_top(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @__handle_mouse_on_menu(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i64 @__handle_mouse_on_X(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i64 @__check_if_mouse_x_illegal(%struct.TYPE_26__*, i32) #1

declare dso_local i64 @__check_if_mouse_y_illegal(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @__check_if_mouse_x_on_edge(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @__check_if_mouse_y_on_edge(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i64 @__handle_mouse_on_panel(%struct.TYPE_26__*, %struct.TYPE_25__*, i32, i32, i32*) #1

declare dso_local i32 @r_cons_get_size(i32*) #1

declare dso_local %struct.TYPE_25__* @__get_cur_panel(%struct.TYPE_24__*) #1

declare dso_local i32 @__split_panel_horizontal(%struct.TYPE_26__*, %struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @__split_panel_vertical(%struct.TYPE_26__*, %struct.TYPE_25__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
