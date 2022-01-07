; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_text-freetype2.c_ft2_source_properties.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_text-freetype2.c_ft2_source_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Font\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@OBS_TEXT_MULTILINE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"from_file\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"ReadFromFile\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"log_mode\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ChatLogMode\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"log_lines\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"ChatLogLines\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"text_file\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"TextFile\00", align 1
@OBS_PATH_FILE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"TextFileFilter\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"color1\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Color1\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"color2\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"Color2\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"outline\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"Outline\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"drop_shadow\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"DropShadow\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"custom_width\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"CustomWidth\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"word_wrap\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"WordWrap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @ft2_source_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ft2_source_properties(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @UNUSED_PARAMETER(i8* %4)
  %6 = call i32* (...) @obs_properties_create()
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @obs_module_text(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 @obs_properties_add_font(i32* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @obs_module_text(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %12 = load i32, i32* @OBS_TEXT_MULTILINE, align 4
  %13 = call i32 @obs_properties_add_text(i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @obs_module_text(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %16 = call i32 @obs_properties_add_bool(i32* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @obs_module_text(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %19 = call i32 @obs_properties_add_bool(i32* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @obs_module_text(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %22 = call i32 @obs_properties_add_int(i32* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %21, i32 1, i32 1000, i32 1)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @obs_module_text(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %25 = load i32, i32* @OBS_PATH_FILE, align 4
  %26 = call i32 @obs_module_text(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %27 = call i32 @obs_properties_add_path(i32* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %24, i32 %25, i32 %26, i32* null)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @obs_module_text(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %30 = call i32 @obs_properties_add_color(i32* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @obs_module_text(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %33 = call i32 @obs_properties_add_color(i32* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @obs_module_text(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %36 = call i32 @obs_properties_add_bool(i32* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @obs_module_text(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %39 = call i32 @obs_properties_add_bool(i32* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @obs_module_text(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0))
  %42 = call i32 @obs_properties_add_int(i32* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i32 %41, i32 0, i32 4096, i32 1)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @obs_module_text(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0))
  %45 = call i32 @obs_properties_add_bool(i32* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i32 %44)
  %46 = load i32*, i32** %3, align 8
  ret i32* %46
}

declare dso_local i32 @UNUSED_PARAMETER(i8*) #1

declare dso_local i32* @obs_properties_create(...) #1

declare dso_local i32 @obs_properties_add_font(i32*, i8*, i32) #1

declare dso_local i32 @obs_module_text(i8*) #1

declare dso_local i32 @obs_properties_add_text(i32*, i8*, i32, i32) #1

declare dso_local i32 @obs_properties_add_bool(i32*, i8*, i32) #1

declare dso_local i32 @obs_properties_add_int(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @obs_properties_add_path(i32*, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @obs_properties_add_color(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
