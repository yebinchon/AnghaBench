; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___handle_mouse_on_panel.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___handle_mouse_on_panel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@PANEL_CMD_FUNCTION = common dso_local global i32 0, align 4
@PANEL_CMD_DISASSEMBLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"scr.highlight\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*, i32, i32, i32*)* @__handle_mouse_on_panel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__handle_mouse_on_panel(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %12, align 8
  %22 = call i32 @r_cons_get_size(i32* %13)
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @__get_panel_idx_in_pos(%struct.TYPE_19__* %23, i32 %24, i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i8* @get_word_from_canvas(%struct.TYPE_19__* %27, i32* %28, i32 %29, i32 %30)
  store i8* %31, i8** %15, align 8
  %32 = load i32, i32* %14, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %114

35:                                               ; preds = %5
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @__set_curnode(%struct.TYPE_19__* %36, i32 %37)
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %40 = call i32 @__set_refresh_all(%struct.TYPE_19__* %39, i32 1, i32 1)
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call %struct.TYPE_18__* @__get_panel(i32* %41, i32 %42)
  store %struct.TYPE_18__* %43, %struct.TYPE_18__** %16, align 8
  %44 = load i8*, i8** %15, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %92

46:                                               ; preds = %35
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %48 = load i32, i32* @PANEL_CMD_FUNCTION, align 4
  %49 = call i64 @__check_panel_type(%struct.TYPE_18__* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %46
  %52 = load i8*, i8** %15, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = call i64 @__check_if_addr(i8* %52, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %51
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = call i8* @r_num_math(i32 %60, i8* %61)
  %63 = ptrtoint i8* %62 to i64
  store i64 %63, i64* %17, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %65 = load i64, i64* %17, align 8
  %66 = call i32 @r_core_seek(%struct.TYPE_19__* %64, i64 %65, i32 1)
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %68 = load i32, i32* @PANEL_CMD_DISASSEMBLY, align 4
  %69 = load i64, i64* %17, align 8
  %70 = call i32 @__set_addr_by_type(%struct.TYPE_19__* %67, i32 %68, i64 %69)
  br label %71

71:                                               ; preds = %57, %51, %46
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %15, align 8
  %76 = call i32 @r_config_set(i32 %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %75)
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i8*, i8** %15, align 8
  %81 = call i8* @r_num_math(i32 %79, i8* %80)
  %82 = ptrtoint i8* %81 to i64
  store i64 %82, i64* %18, align 8
  %83 = load i64, i64* %18, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %71
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %87 = load i64, i64* %18, align 8
  %88 = call i32 @__seek_all(%struct.TYPE_19__* %86, i64 %87)
  br label %89

89:                                               ; preds = %85, %71
  %90 = load i8*, i8** %15, align 8
  %91 = call i32 @free(i8* %90)
  br label %92

92:                                               ; preds = %89, %35
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp sge i32 %93, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %92
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 4
  %110 = icmp slt i32 %102, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %101
  %112 = load i32*, i32** %11, align 8
  store i32 99, i32* %112, align 4
  store i32 0, i32* %6, align 4
  br label %114

113:                                              ; preds = %101, %92
  store i32 1, i32* %6, align 4
  br label %114

114:                                              ; preds = %113, %111, %34
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @r_cons_get_size(i32*) #1

declare dso_local i32 @__get_panel_idx_in_pos(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i8* @get_word_from_canvas(%struct.TYPE_19__*, i32*, i32, i32) #1

declare dso_local i32 @__set_curnode(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @__set_refresh_all(%struct.TYPE_19__*, i32, i32) #1

declare dso_local %struct.TYPE_18__* @__get_panel(i32*, i32) #1

declare dso_local i64 @__check_panel_type(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @__check_if_addr(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @r_num_math(i32, i8*) #1

declare dso_local i32 @r_core_seek(%struct.TYPE_19__*, i64, i32) #1

declare dso_local i32 @__set_addr_by_type(%struct.TYPE_19__*, i32, i64) #1

declare dso_local i32 @r_config_set(i32, i8*, i8*) #1

declare dso_local i32 @__seek_all(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
