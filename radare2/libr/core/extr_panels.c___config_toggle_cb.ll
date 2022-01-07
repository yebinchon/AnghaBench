; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___config_toggle_cb.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___config_toggle_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_17__**, %struct.TYPE_15__** }
%struct.TYPE_17__ = type { %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_17__*, %struct.TYPE_15__** }

@.str = private unnamed_addr constant [4 x i8] c"asm\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Settings.Disassembly.asm\00", align 1
@__init_menu_disasm_asm_settings_layout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"Screen\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Settings.Screen\00", align 1
@__init_menu_screen_settings_layout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__config_toggle_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %11, %struct.TYPE_18__** %3, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %4, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %18, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %19, i64 %24
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %5, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %28, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %29, i64 %32
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %6, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32* @r_strbuf_new(i32 %37)
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @r_strbuf_get(i32* %39)
  %41 = call i32 @r_str_split(i32 %40, i8 signext 58)
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @r_strbuf_get(i32* %45)
  %47 = call i32 @r_config_toggle(i32 %44, i32 %46)
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @r_strbuf_free(i32* %48)
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %51 = call i32 @__set_refresh_all(%struct.TYPE_18__* %50, i32 0, i32 0)
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @free(i32 %58)
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %62 = call i32 @__draw_menu(%struct.TYPE_18__* %60, %struct.TYPE_15__* %61)
  %63 = call i32 @r_strbuf_drain(i32 %62)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  store i32 %63, i32* %69, align 4
  store i32 1, i32* %8, align 4
  br label %70

70:                                               ; preds = %100, %1
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %103

76:                                               ; preds = %70
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %79, i64 %81
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  store %struct.TYPE_17__* %85, %struct.TYPE_17__** %9, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %92, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %93, i64 %98
  store %struct.TYPE_17__* %90, %struct.TYPE_17__** %99, align 8
  br label %100

100:                                              ; preds = %76
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %70

103:                                              ; preds = %70
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @strcmp(i32 %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %103
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %111 = load i32, i32* @__init_menu_disasm_asm_settings_layout, align 4
  %112 = call i32 @__update_menu(%struct.TYPE_18__* %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %109, %103
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @strcmp(i32 %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %113
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %121 = load i32, i32* @__init_menu_screen_settings_layout, align 4
  %122 = call i32 @__update_menu(%struct.TYPE_18__* %120, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %119, %113
  ret i32 0
}

declare dso_local i32* @r_strbuf_new(i32) #1

declare dso_local i32 @r_str_split(i32, i8 signext) #1

declare dso_local i32 @r_strbuf_get(i32*) #1

declare dso_local i32 @r_config_toggle(i32, i32) #1

declare dso_local i32 @r_strbuf_free(i32*) #1

declare dso_local i32 @__set_refresh_all(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @r_strbuf_drain(i32) #1

declare dso_local i32 @__draw_menu(%struct.TYPE_18__*, %struct.TYPE_15__*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @__update_menu(%struct.TYPE_18__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
