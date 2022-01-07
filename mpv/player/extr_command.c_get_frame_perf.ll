; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_get_frame_perf.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_get_frame_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mp_frame_perf = type { i32, i32*, %struct.mp_pass_perf* }
%struct.mp_pass_perf = type { i32, i32, i32, i32, i32* }

@MPV_FORMAT_NODE_MAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@MPV_FORMAT_INT64 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"avg\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"peak\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"samples\00", align 1
@MPV_FORMAT_NODE_ARRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpv_node*, %struct.mp_frame_perf*)* @get_frame_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_frame_perf(%struct.mpv_node* %0, %struct.mp_frame_perf* %1) #0 {
  %3 = alloca %struct.mpv_node*, align 8
  %4 = alloca %struct.mp_frame_perf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_pass_perf*, align 8
  %7 = alloca %struct.mpv_node*, align 8
  %8 = alloca %struct.mpv_node*, align 8
  %9 = alloca i32, align 4
  store %struct.mpv_node* %0, %struct.mpv_node** %3, align 8
  store %struct.mp_frame_perf* %1, %struct.mp_frame_perf** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %93, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.mp_frame_perf*, %struct.mp_frame_perf** %4, align 8
  %13 = getelementptr inbounds %struct.mp_frame_perf, %struct.mp_frame_perf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %96

16:                                               ; preds = %10
  %17 = load %struct.mp_frame_perf*, %struct.mp_frame_perf** %4, align 8
  %18 = getelementptr inbounds %struct.mp_frame_perf, %struct.mp_frame_perf* %17, i32 0, i32 2
  %19 = load %struct.mp_pass_perf*, %struct.mp_pass_perf** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mp_pass_perf, %struct.mp_pass_perf* %19, i64 %21
  store %struct.mp_pass_perf* %22, %struct.mp_pass_perf** %6, align 8
  %23 = load %struct.mpv_node*, %struct.mpv_node** %3, align 8
  %24 = load i32, i32* @MPV_FORMAT_NODE_MAP, align 4
  %25 = call %struct.mpv_node* @node_array_add(%struct.mpv_node* %23, i32 %24)
  store %struct.mpv_node* %25, %struct.mpv_node** %7, align 8
  %26 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %27 = load %struct.mp_frame_perf*, %struct.mp_frame_perf** %4, align 8
  %28 = getelementptr inbounds %struct.mp_frame_perf, %struct.mp_frame_perf* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @node_map_add_string(%struct.mpv_node* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.mp_pass_perf*, %struct.mp_pass_perf** %6, align 8
  %36 = getelementptr inbounds %struct.mp_pass_perf, %struct.mp_pass_perf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %39 = load i32, i32* @MPV_FORMAT_INT64, align 4
  %40 = call %struct.mpv_node* @node_map_add(%struct.mpv_node* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %37, i32* %42, align 4
  %43 = load %struct.mp_pass_perf*, %struct.mp_pass_perf** %6, align 8
  %44 = getelementptr inbounds %struct.mp_pass_perf, %struct.mp_pass_perf* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %47 = load i32, i32* @MPV_FORMAT_INT64, align 4
  %48 = call %struct.mpv_node* @node_map_add(%struct.mpv_node* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %45, i32* %50, align 4
  %51 = load %struct.mp_pass_perf*, %struct.mp_pass_perf** %6, align 8
  %52 = getelementptr inbounds %struct.mp_pass_perf, %struct.mp_pass_perf* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %55 = load i32, i32* @MPV_FORMAT_INT64, align 4
  %56 = call %struct.mpv_node* @node_map_add(%struct.mpv_node* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %53, i32* %58, align 4
  %59 = load %struct.mp_pass_perf*, %struct.mp_pass_perf** %6, align 8
  %60 = getelementptr inbounds %struct.mp_pass_perf, %struct.mp_pass_perf* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %63 = load i32, i32* @MPV_FORMAT_INT64, align 4
  %64 = call %struct.mpv_node* @node_map_add(%struct.mpv_node* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  %65 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 %61, i32* %66, align 4
  %67 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %68 = load i32, i32* @MPV_FORMAT_NODE_ARRAY, align 4
  %69 = call %struct.mpv_node* @node_map_add(%struct.mpv_node* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %68)
  store %struct.mpv_node* %69, %struct.mpv_node** %8, align 8
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %89, %16
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.mp_pass_perf*, %struct.mp_pass_perf** %6, align 8
  %73 = getelementptr inbounds %struct.mp_pass_perf, %struct.mp_pass_perf* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %70
  %77 = load %struct.mp_pass_perf*, %struct.mp_pass_perf** %6, align 8
  %78 = getelementptr inbounds %struct.mp_pass_perf, %struct.mp_pass_perf* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mpv_node*, %struct.mpv_node** %8, align 8
  %85 = load i32, i32* @MPV_FORMAT_INT64, align 4
  %86 = call %struct.mpv_node* @node_array_add(%struct.mpv_node* %84, i32 %85)
  %87 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i32 %83, i32* %88, align 4
  br label %89

89:                                               ; preds = %76
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %70

92:                                               ; preds = %70
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %10

96:                                               ; preds = %10
  ret void
}

declare dso_local %struct.mpv_node* @node_array_add(%struct.mpv_node*, i32) #1

declare dso_local i32 @node_map_add_string(%struct.mpv_node*, i8*, i32) #1

declare dso_local %struct.mpv_node* @node_map_add(%struct.mpv_node*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
