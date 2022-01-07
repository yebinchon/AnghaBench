; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c_r_save_panels_layout.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c_r_save_panels_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Name for the layout: \00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Name can't be empty!\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Cmd\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"File.Load Layout.Saved\00", align 1
@__init_menu_saved_layout = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"Panels layout saved!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r_save_panels_layout(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %14 = icmp ne %struct.TYPE_16__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %118

16:                                               ; preds = %1
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %18 = call i8* @__show_status_input(%struct.TYPE_18__* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @R_STR_ISEMPTY(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %24 = call i32 @__show_status(%struct.TYPE_18__* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %118

25:                                               ; preds = %16
  %26 = load i8*, i8** %4, align 8
  %27 = call i8* @__create_panels_config_path(i8* %26)
  store i8* %27, i8** %5, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %6, align 8
  %31 = call i32* (...) @pj_new()
  store i32* %31, i32** %7, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %92, %25
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %95

38:                                               ; preds = %32
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call %struct.TYPE_17__* @__get_panel(%struct.TYPE_16__* %39, i32 %40)
  store %struct.TYPE_17__* %41, %struct.TYPE_17__** %8, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @pj_o(i32* %42)
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pj_ks(i32* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @pj_ks(i32* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pj_kn(i32* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  %66 = load i32*, i32** %7, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pj_kn(i32* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  %74 = load i32*, i32** %7, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @pj_kn(i32* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %80)
  %82 = load i32*, i32** %7, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @pj_kn(i32* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 %88)
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @pj_end(i32* %90)
  br label %92

92:                                               ; preds = %38
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %3, align 4
  br label %32

95:                                               ; preds = %32
  %96 = load i8*, i8** %5, align 8
  %97 = call i32* @r_sandbox_fopen(i8* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %97, i32** %9, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %115

100:                                              ; preds = %95
  %101 = load i32*, i32** %7, align 8
  %102 = call i8* @pj_drain(i32* %101)
  store i8* %102, i8** %10, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = call i32 @fprintf(i32* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %104)
  %106 = load i8*, i8** %10, align 8
  %107 = call i32 @free(i8* %106)
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @fclose(i32* %108)
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %111 = load i32, i32* @__init_menu_saved_layout, align 4
  %112 = call i32 @__update_menu(%struct.TYPE_18__* %110, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %111)
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %114 = call i32 @__show_status(%struct.TYPE_18__* %113, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %115

115:                                              ; preds = %100, %95
  %116 = load i8*, i8** %5, align 8
  %117 = call i32 @free(i8* %116)
  br label %118

118:                                              ; preds = %115, %22, %15
  ret void
}

declare dso_local i8* @__show_status_input(%struct.TYPE_18__*, i8*) #1

declare dso_local i64 @R_STR_ISEMPTY(i8*) #1

declare dso_local i32 @__show_status(%struct.TYPE_18__*, i8*) #1

declare dso_local i8* @__create_panels_config_path(i8*) #1

declare dso_local i32* @pj_new(...) #1

declare dso_local %struct.TYPE_17__* @__get_panel(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @pj_o(i32*) #1

declare dso_local i32 @pj_ks(i32*, i8*, i32) #1

declare dso_local i32 @pj_kn(i32*, i8*, i32) #1

declare dso_local i32 @pj_end(i32*) #1

declare dso_local i32* @r_sandbox_fopen(i8*, i8*) #1

declare dso_local i8* @pj_drain(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @__update_menu(%struct.TYPE_18__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
