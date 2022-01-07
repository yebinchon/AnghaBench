; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___add_cmd_panel.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___add_cmd_panel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__** }
%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_17__** }
%struct.TYPE_20__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }

@PANEL_CONFIG_SIDEPANEL_W = common dso_local global i32 0, align 4
@PANEL_MODE_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__add_cmd_panel(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_20__*, align 8
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %4, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %5, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %18 = call i32 @__check_panel_num(%struct.TYPE_21__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %82

21:                                               ; preds = %1
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  store %struct.TYPE_18__* %26, %struct.TYPE_18__** %6, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %28, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %29, i64 %34
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  store %struct.TYPE_17__* %36, %struct.TYPE_17__** %7, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %38, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %39, i64 %42
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  store %struct.TYPE_17__* %44, %struct.TYPE_17__** %8, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @__search_db(%struct.TYPE_21__* %45, i32 %48)
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %82

53:                                               ; preds = %21
  %54 = call i32 @r_cons_get_size(i32* %10)
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %56 = call i32 @__adjust_side_panels(%struct.TYPE_21__* %55)
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @__insert_panel(%struct.TYPE_21__* %57, i32 0, i32 %60, i8* %61)
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %64 = call %struct.TYPE_20__* @__get_panel(%struct.TYPE_19__* %63, i32 0)
  store %struct.TYPE_20__* %64, %struct.TYPE_20__** %11, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i32, i32* @PANEL_CONFIG_SIDEPANEL_W, align 4
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 %70, 1
  %72 = call i32 @__set_geometry(i32* %68, i32 0, i32 1, i32 %69, i32 %71)
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %74 = call i32 @__set_curnode(%struct.TYPE_21__* %73, i32 0)
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %76 = call i32 @__set_refresh_all(%struct.TYPE_21__* %75, i32 0, i32 0)
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %78 = load i32, i32* @PANEL_MODE_DEFAULT, align 4
  %79 = call i32 @__set_mode(%struct.TYPE_21__* %77, i32 %78)
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @free(i8* %80)
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %53, %52, %20
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @__check_panel_num(%struct.TYPE_21__*) #1

declare dso_local i8* @__search_db(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @r_cons_get_size(i32*) #1

declare dso_local i32 @__adjust_side_panels(%struct.TYPE_21__*) #1

declare dso_local i32 @__insert_panel(%struct.TYPE_21__*, i32, i32, i8*) #1

declare dso_local %struct.TYPE_20__* @__get_panel(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @__set_geometry(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @__set_curnode(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @__set_refresh_all(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @__set_mode(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
