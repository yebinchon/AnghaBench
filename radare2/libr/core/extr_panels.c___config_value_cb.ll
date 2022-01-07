; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___config_value_cb.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___config_value_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_18__**, %struct.TYPE_16__** }
%struct.TYPE_18__ = type { %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_18__*, %struct.TYPE_16__** }

@.str = private unnamed_addr constant [12 x i8] c"New value: \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"asm\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Settings.Disassembly.asm\00", align 1
@__init_menu_disasm_asm_settings_layout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"Screen\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Settings.Screen\00", align 1
@__init_menu_screen_settings_layout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__config_value_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %3, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %4, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %19, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %20, i64 %25
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %5, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %29, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %30, i64 %33
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  store %struct.TYPE_16__* %35, %struct.TYPE_16__** %6, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32* @r_strbuf_new(i32 %38)
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @r_strbuf_get(i32* %40)
  %42 = call i32 @r_str_split(i32 %41, i8 signext 58)
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %44 = call i8* @__show_status_input(%struct.TYPE_19__* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %44, i8** %8, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @r_strbuf_get(i32* %48)
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @r_config_set(i32 %47, i32 %49, i8* %50)
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @r_strbuf_free(i32* %52)
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %55 = call i32 @__set_refresh_all(%struct.TYPE_19__* %54, i32 0, i32 0)
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @free(i32 %62)
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %66 = call i32 @__draw_menu(%struct.TYPE_19__* %64, %struct.TYPE_16__* %65)
  %67 = call i32 @r_strbuf_drain(i32 %66)
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  store i32 %67, i32* %73, align 4
  store i32 1, i32* %9, align 4
  br label %74

74:                                               ; preds = %104, %1
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %107

80:                                               ; preds = %74
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %83, i64 %85
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  store %struct.TYPE_18__* %89, %struct.TYPE_18__** %10, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %96, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %97, i64 %102
  store %struct.TYPE_18__* %94, %struct.TYPE_18__** %103, align 8
  br label %104

104:                                              ; preds = %80
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %74

107:                                              ; preds = %74
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @strcmp(i32 %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %107
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %115 = load i32, i32* @__init_menu_disasm_asm_settings_layout, align 4
  %116 = call i32 @__update_menu(%struct.TYPE_19__* %114, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %113, %107
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @strcmp(i32 %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %117
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %125 = load i32, i32* @__init_menu_screen_settings_layout, align 4
  %126 = call i32 @__update_menu(%struct.TYPE_19__* %124, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %123, %117
  ret i32 0
}

declare dso_local i32* @r_strbuf_new(i32) #1

declare dso_local i32 @r_str_split(i32, i8 signext) #1

declare dso_local i32 @r_strbuf_get(i32*) #1

declare dso_local i8* @__show_status_input(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @r_config_set(i32, i32, i8*) #1

declare dso_local i32 @r_strbuf_free(i32*) #1

declare dso_local i32 @__set_refresh_all(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @r_strbuf_drain(i32) #1

declare dso_local i32 @__draw_menu(%struct.TYPE_19__*, %struct.TYPE_16__*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @__update_menu(%struct.TYPE_19__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
