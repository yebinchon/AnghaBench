; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___handle_tab_key.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___handle_tab_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@PANEL_MODE_MENU = common dso_local global i64 0, align 8
@PANEL_MODE_DEFAULT = common dso_local global i32 0, align 4
@PANEL_MODE_ZOOM = common dso_local global i64 0, align 8
@PANEL_CMD_DISASSEMBLY = common dso_local global i32 0, align 4
@PANEL_FUN_SNOW = common dso_local global i64 0, align 8
@PANEL_FUN_SAKURA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__handle_tab_key(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %8 = call i32 @__set_cursor(%struct.TYPE_17__* %7, i32 0)
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %5, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = call %struct.TYPE_16__* @__get_cur_panel(%struct.TYPE_15__* %12)
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %6, align 8
  %14 = call i32 @r_cons_switchbuf(i32 0)
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %55, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PANEL_MODE_MENU, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %29 = call i32 @__set_curnode(%struct.TYPE_17__* %28, i64 0)
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %31 = load i32, i32* @PANEL_MODE_DEFAULT, align 4
  %32 = call i32 @__set_mode(%struct.TYPE_17__* %30, i32 %31)
  br label %54

33:                                               ; preds = %21
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PANEL_MODE_ZOOM, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = call i32 @__set_curnode(%struct.TYPE_17__* %40, i64 %44)
  br label %53

46:                                               ; preds = %33
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = call i32 @__set_curnode(%struct.TYPE_17__* %47, i64 %51)
  br label %53

53:                                               ; preds = %46, %39
  br label %54

54:                                               ; preds = %53, %27
  br label %93

55:                                               ; preds = %2
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PANEL_MODE_MENU, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %65, 1
  %67 = call i32 @__set_curnode(%struct.TYPE_17__* %62, i64 %66)
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %69 = load i32, i32* @PANEL_MODE_DEFAULT, align 4
  %70 = call i32 @__set_mode(%struct.TYPE_17__* %68, i32 %69)
  br label %92

71:                                               ; preds = %55
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PANEL_MODE_ZOOM, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, -1
  store i64 %82, i64* %80, align 8
  %83 = call i32 @__set_curnode(%struct.TYPE_17__* %78, i64 %82)
  br label %91

84:                                               ; preds = %71
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, -1
  store i64 %89, i64* %87, align 8
  %90 = call i32 @__set_curnode(%struct.TYPE_17__* %85, i64 %89)
  br label %91

91:                                               ; preds = %84, %77
  br label %92

92:                                               ; preds = %91, %61
  br label %93

93:                                               ; preds = %92, %54
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %95 = call %struct.TYPE_16__* @__get_cur_panel(%struct.TYPE_15__* %94)
  store %struct.TYPE_16__* %95, %struct.TYPE_16__** %6, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %97 = load i32, i32* @PANEL_CMD_DISASSEMBLY, align 4
  %98 = call i64 @__check_panel_type(%struct.TYPE_16__* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %102 = call i32 @__set_refresh_all(%struct.TYPE_17__* %101, i32 0, i32 0)
  br label %122

103:                                              ; preds = %93
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 4
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @PANEL_FUN_SNOW, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %119, label %113

113:                                              ; preds = %103
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @PANEL_FUN_SAKURA, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113, %103
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %121 = call i32 @__reset_snow(%struct.TYPE_15__* %120)
  br label %122

122:                                              ; preds = %100, %119, %113
  ret void
}

declare dso_local i32 @__set_cursor(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_16__* @__get_cur_panel(%struct.TYPE_15__*) #1

declare dso_local i32 @r_cons_switchbuf(i32) #1

declare dso_local i32 @__set_curnode(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @__set_mode(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @__check_panel_type(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @__set_refresh_all(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @__reset_snow(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
