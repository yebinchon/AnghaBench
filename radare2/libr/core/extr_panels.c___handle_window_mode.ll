; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___handle_window_mode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___handle_window_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"New command: \00", align 1
@LEFT = common dso_local global i32 0, align 4
@PANEL_FUN_SNOW = common dso_local global i32 0, align 4
@PANEL_FUN_SAKURA = common dso_local global i32 0, align 4
@DOWN = common dso_local global i32 0, align 4
@UP = common dso_local global i32 0, align 4
@RIGHT = common dso_local global i32 0, align 4
@VERTICAL = common dso_local global i32 0, align 4
@HORIZONTAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__handle_window_mode(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %6, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %13 = call i32* @__get_cur_panel(%struct.TYPE_19__* %12)
  store i32* %13, i32** %7, align 8
  %14 = call i32 @r_cons_switchbuf(i32 0)
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %174 [
    i32 81, label %16
    i32 113, label %16
    i32 119, label %16
    i32 13, label %19
    i32 9, label %22
    i32 90, label %25
    i32 101, label %28
    i32 104, label %42
    i32 106, label %66
    i32 107, label %90
    i32 108, label %114
    i32 72, label %138
    i32 76, label %142
    i32 74, label %146
    i32 75, label %150
    i32 110, label %154
    i32 78, label %159
    i32 88, label %164
    i32 34, label %173
    i32 58, label %173
    i32 59, label %173
    i32 47, label %173
    i32 100, label %173
    i32 98, label %173
    i32 112, label %173
    i32 80, label %173
    i32 116, label %173
    i32 84, label %173
    i32 63, label %173
    i32 124, label %173
    i32 45, label %173
  ]

16:                                               ; preds = %2, %2, %2
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %18 = call i32 @__toggle_window_mode(%struct.TYPE_20__* %17)
  br label %174

19:                                               ; preds = %2
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %21 = call i32 @__toggle_zoom_mode(%struct.TYPE_20__* %20)
  br label %174

22:                                               ; preds = %2
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %24 = call i32 @__handle_tab_key(%struct.TYPE_20__* %23, i32 0)
  br label %174

25:                                               ; preds = %2
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %27 = call i32 @__handle_tab_key(%struct.TYPE_20__* %26, i32 1)
  br label %174

28:                                               ; preds = %2
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %30 = call i8* @__show_status_input(%struct.TYPE_20__* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @R_STR_ISNOTEMPTY(i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @__replace_cmd(%struct.TYPE_20__* %35, i8* %36, i8* %37)
  br label %39

39:                                               ; preds = %34, %28
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @free(i8* %40)
  br label %174

42:                                               ; preds = %2
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %44 = load i32, i32* @LEFT, align 4
  %45 = call i32 @__move_to_direction(%struct.TYPE_20__* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %49 = call i32 @__set_refresh_all(%struct.TYPE_20__* %48, i32 0, i32 0)
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PANEL_FUN_SNOW, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PANEL_FUN_SAKURA, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56, %50
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %64 = call i32 @__reset_snow(%struct.TYPE_19__* %63)
  br label %65

65:                                               ; preds = %62, %56
  br label %174

66:                                               ; preds = %2
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %68 = load i32, i32* @DOWN, align 4
  %69 = call i32 @__move_to_direction(%struct.TYPE_20__* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %73 = call i32 @__set_refresh_all(%struct.TYPE_20__* %72, i32 0, i32 0)
  br label %74

74:                                               ; preds = %71, %66
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @PANEL_FUN_SNOW, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PANEL_FUN_SAKURA, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80, %74
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %88 = call i32 @__reset_snow(%struct.TYPE_19__* %87)
  br label %89

89:                                               ; preds = %86, %80
  br label %174

90:                                               ; preds = %2
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %92 = load i32, i32* @UP, align 4
  %93 = call i32 @__move_to_direction(%struct.TYPE_20__* %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %97 = call i32 @__set_refresh_all(%struct.TYPE_20__* %96, i32 0, i32 0)
  br label %98

98:                                               ; preds = %95, %90
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @PANEL_FUN_SNOW, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @PANEL_FUN_SAKURA, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104, %98
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %112 = call i32 @__reset_snow(%struct.TYPE_19__* %111)
  br label %113

113:                                              ; preds = %110, %104
  br label %174

114:                                              ; preds = %2
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %116 = load i32, i32* @RIGHT, align 4
  %117 = call i32 @__move_to_direction(%struct.TYPE_20__* %115, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %121 = call i32 @__set_refresh_all(%struct.TYPE_20__* %120, i32 0, i32 0)
  br label %122

122:                                              ; preds = %119, %114
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @PANEL_FUN_SNOW, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %134, label %128

128:                                              ; preds = %122
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @PANEL_FUN_SAKURA, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %128, %122
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %136 = call i32 @__reset_snow(%struct.TYPE_19__* %135)
  br label %137

137:                                              ; preds = %134, %128
  br label %174

138:                                              ; preds = %2
  %139 = call i32 @r_cons_switchbuf(i32 0)
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %141 = call i32 @__resize_panel_left(%struct.TYPE_19__* %140)
  br label %174

142:                                              ; preds = %2
  %143 = call i32 @r_cons_switchbuf(i32 0)
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %145 = call i32 @__resize_panel_right(%struct.TYPE_19__* %144)
  br label %174

146:                                              ; preds = %2
  %147 = call i32 @r_cons_switchbuf(i32 0)
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %149 = call i32 @__resize_panel_down(%struct.TYPE_19__* %148)
  br label %174

150:                                              ; preds = %2
  %151 = call i32 @r_cons_switchbuf(i32 0)
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %153 = call i32 @__resize_panel_up(%struct.TYPE_19__* %152)
  br label %174

154:                                              ; preds = %2
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %156 = load i32*, i32** %7, align 8
  %157 = load i32, i32* @VERTICAL, align 4
  %158 = call i32 @__create_panel_input(%struct.TYPE_20__* %155, i32* %156, i32 %157, i32* null)
  br label %174

159:                                              ; preds = %2
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %161 = load i32*, i32** %7, align 8
  %162 = load i32, i32* @HORIZONTAL, align 4
  %163 = call i32 @__create_panel_input(%struct.TYPE_20__* %160, i32* %161, i32 %162, i32* null)
  br label %174

164:                                              ; preds = %2
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %166 = load i32*, i32** %7, align 8
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @__dismantle_del_panel(%struct.TYPE_20__* %165, i32* %166, i32 %169)
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %172 = call i32 @__set_refresh_all(%struct.TYPE_20__* %171, i32 0, i32 0)
  br label %174

173:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  store i32 0, i32* %3, align 4
  br label %175

174:                                              ; preds = %2, %164, %159, %154, %150, %146, %142, %138, %137, %113, %89, %65, %39, %25, %22, %19, %16
  store i32 1, i32* %3, align 4
  br label %175

175:                                              ; preds = %174, %173
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32* @__get_cur_panel(%struct.TYPE_19__*) #1

declare dso_local i32 @r_cons_switchbuf(i32) #1

declare dso_local i32 @__toggle_window_mode(%struct.TYPE_20__*) #1

declare dso_local i32 @__toggle_zoom_mode(%struct.TYPE_20__*) #1

declare dso_local i32 @__handle_tab_key(%struct.TYPE_20__*, i32) #1

declare dso_local i8* @__show_status_input(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @R_STR_ISNOTEMPTY(i8*) #1

declare dso_local i32 @__replace_cmd(%struct.TYPE_20__*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @__move_to_direction(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @__set_refresh_all(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @__reset_snow(%struct.TYPE_19__*) #1

declare dso_local i32 @__resize_panel_left(%struct.TYPE_19__*) #1

declare dso_local i32 @__resize_panel_right(%struct.TYPE_19__*) #1

declare dso_local i32 @__resize_panel_down(%struct.TYPE_19__*) #1

declare dso_local i32 @__resize_panel_up(%struct.TYPE_19__*) #1

declare dso_local i32 @__create_panel_input(%struct.TYPE_20__*, i32*, i32, i32*) #1

declare dso_local i32 @__dismantle_del_panel(%struct.TYPE_20__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
