; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c_r_load_panels_layout.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c_r_load_panels_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i8*, i8* }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"No saved layout found for the name: %s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Layout is empty: %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Cmd\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Help\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Visual Ascii Art Panels\00", align 1
@help_msg_panels = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r_load_panels_layout(%struct.TYPE_20__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_19__*, align 8
  %22 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i8* %1, i8** %5, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %26 = icmp ne %struct.TYPE_18__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %181

28:                                               ; preds = %2
  %29 = load i8*, i8** %5, align 8
  %30 = call i8* @__get_panels_config_file_from_dir(i8* %29)
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = load i8*, i8** %5, align 8
  %35 = call i8* @r_str_newf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %34)
  store i8* %35, i8** %7, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @__show_status(%struct.TYPE_20__* %36, i8* %37)
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @free(i8* %39)
  store i32 0, i32* %3, align 4
  br label %181

41:                                               ; preds = %28
  %42 = load i8*, i8** %6, align 8
  %43 = call i8* @r_file_slurp(i8* %42, i32* null)
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load i8*, i8** %8, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %41
  %49 = load i8*, i8** %5, align 8
  %50 = call i8* @r_str_newf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  store i8* %50, i8** %9, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @__show_status(%struct.TYPE_20__* %51, i8* %52)
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @free(i8* %54)
  store i32 0, i32* %3, align 4
  br label %181

56:                                               ; preds = %41
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %58, align 8
  store %struct.TYPE_18__* %59, %struct.TYPE_18__** %10, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %61 = call i32 @__panel_all_clear(%struct.TYPE_18__* %60)
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %65 = call i32 @__set_curnode(%struct.TYPE_20__* %64, i32 0)
  %66 = load i8*, i8** %8, align 8
  store i8* %66, i8** %17, align 8
  %67 = load i8*, i8** %17, align 8
  %68 = load i8*, i8** %17, align 8
  %69 = call i64 @strlen(i8* %68)
  %70 = call i8* @__parse_panels_config(i8* %67, i64 %69)
  store i8* %70, i8** %18, align 8
  %71 = load i8*, i8** %18, align 8
  %72 = call i32 @r_str_split(i8* %71, i8 signext 10)
  store i32 %72, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %73

73:                                               ; preds = %162, %56
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* %20, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %165

77:                                               ; preds = %73
  %78 = load i8*, i8** %18, align 8
  %79 = call i64 @R_STR_ISEMPTY(i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %165

82:                                               ; preds = %77
  %83 = load i8*, i8** %18, align 8
  %84 = call i8* @sdb_json_get_str(i8* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %84, i8** %11, align 8
  %85 = load i8*, i8** %18, align 8
  %86 = call i8* @sdb_json_get_str(i8* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i8* %86, i8** %12, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = call i32 @r_str_arg_unescape(i8* %87)
  %89 = load i8*, i8** %18, align 8
  %90 = call i8* @sdb_json_get_str(i8* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %90, i8** %13, align 8
  %91 = load i8*, i8** %18, align 8
  %92 = call i8* @sdb_json_get_str(i8* %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i8* %92, i8** %14, align 8
  %93 = load i8*, i8** %18, align 8
  %94 = call i8* @sdb_json_get_str(i8* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i8* %94, i8** %15, align 8
  %95 = load i8*, i8** %18, align 8
  %96 = call i8* @sdb_json_get_str(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i8* %96, i8** %16, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call %struct.TYPE_19__* @__get_panel(%struct.TYPE_18__* %97, i64 %100)
  store %struct.TYPE_19__* %101, %struct.TYPE_19__** %21, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i8*, i8** %13, align 8
  %107 = call i32 @atoi(i8* %106)
  %108 = load i8*, i8** %14, align 8
  %109 = call i32 @atoi(i8* %108)
  %110 = load i8*, i8** %15, align 8
  %111 = call i32 @atoi(i8* %110)
  %112 = load i8*, i8** %16, align 8
  %113 = call i32 @atoi(i8* %112)
  %114 = call i32 @__set_geometry(i32* %105, i32 %107, i32 %109, i32 %111, i32 %113)
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = load i8*, i8** %12, align 8
  %119 = call i32 @__init_panel_param(%struct.TYPE_20__* %115, %struct.TYPE_19__* %116, i8* %117, i8* %118)
  %120 = load i8*, i8** %12, align 8
  %121 = call i64 @r_str_endswith(i8* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %156

123:                                              ; preds = %82
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = call i8* @r_str_dup(i8* %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  store i8* %129, i8** %133, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i8* @r_str_dup(i8* %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  store i8* %139, i8** %143, align 8
  %144 = call i32* @r_strbuf_new(i32* null)
  store i32* %144, i32** %22, align 8
  %145 = load i32*, i32** %22, align 8
  %146 = load i32, i32* @help_msg_panels, align 4
  %147 = call i32 @r_core_visual_append_help(i32* %145, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %146)
  %148 = load i32*, i32** %22, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %181

151:                                              ; preds = %123
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %153 = load i32*, i32** %22, align 8
  %154 = call i32 @r_strbuf_drain(i32* %153)
  %155 = call i32 @__set_read_only(%struct.TYPE_19__* %152, i32 %154)
  br label %156

156:                                              ; preds = %151, %82
  %157 = load i8*, i8** %18, align 8
  %158 = call i64 @strlen(i8* %157)
  %159 = add nsw i64 %158, 1
  %160 = load i8*, i8** %18, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 %159
  store i8* %161, i8** %18, align 8
  br label %162

162:                                              ; preds = %156
  %163 = load i32, i32* %19, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %19, align 4
  br label %73

165:                                              ; preds = %81, %73
  %166 = load i8*, i8** %17, align 8
  %167 = call i64 @strlen(i8* %166)
  %168 = add nsw i64 %167, 1
  %169 = load i8*, i8** %17, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 %168
  store i8* %170, i8** %17, align 8
  %171 = load i8*, i8** %8, align 8
  %172 = call i32 @free(i8* %171)
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %165
  store i32 0, i32* %3, align 4
  br label %181

178:                                              ; preds = %165
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %180 = call i32 @__set_refresh_all(%struct.TYPE_20__* %179, i32 1, i32 0)
  store i32 1, i32* %3, align 4
  br label %181

181:                                              ; preds = %178, %177, %150, %48, %33, %27
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i8* @__get_panels_config_file_from_dir(i8*) #1

declare dso_local i8* @r_str_newf(i8*, i8*) #1

declare dso_local i32 @__show_status(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @r_file_slurp(i8*, i32*) #1

declare dso_local i32 @__panel_all_clear(%struct.TYPE_18__*) #1

declare dso_local i32 @__set_curnode(%struct.TYPE_20__*, i32) #1

declare dso_local i8* @__parse_panels_config(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @r_str_split(i8*, i8 signext) #1

declare dso_local i64 @R_STR_ISEMPTY(i8*) #1

declare dso_local i8* @sdb_json_get_str(i8*, i8*) #1

declare dso_local i32 @r_str_arg_unescape(i8*) #1

declare dso_local %struct.TYPE_19__* @__get_panel(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @__set_geometry(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @__init_panel_param(%struct.TYPE_20__*, %struct.TYPE_19__*, i8*, i8*) #1

declare dso_local i64 @r_str_endswith(i8*, i8*) #1

declare dso_local i8* @r_str_dup(i8*, i8*) #1

declare dso_local i32* @r_strbuf_new(i32*) #1

declare dso_local i32 @r_core_visual_append_help(i32*, i8*, i32) #1

declare dso_local i32 @__set_read_only(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @r_strbuf_drain(i32*) #1

declare dso_local i32 @__set_refresh_all(%struct.TYPE_20__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
