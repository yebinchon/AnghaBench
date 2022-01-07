; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_get_profiles.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_get_profiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_config = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32*, i32, i32, %struct.TYPE_2__* }
%struct.mpv_node = type { i32 }

@MPV_FORMAT_NODE_ARRAY = common dso_local global i32 0, align 4
@MPV_FORMAT_NODE_MAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"profile-desc\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m_config_get_profiles(%struct.m_config* %0) #0 {
  %2 = alloca %struct.mpv_node, align 4
  %3 = alloca %struct.m_config*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca %struct.mpv_node*, align 8
  %6 = alloca %struct.mpv_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mpv_node*, align 8
  store %struct.m_config* %0, %struct.m_config** %3, align 8
  %9 = load i32, i32* @MPV_FORMAT_NODE_ARRAY, align 4
  %10 = call i32 @node_init(%struct.mpv_node* %2, i32 %9, i32* null)
  %11 = load %struct.m_config*, %struct.m_config** %3, align 8
  %12 = getelementptr inbounds %struct.m_config, %struct.m_config* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %4, align 8
  br label %14

14:                                               ; preds = %75, %1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %79

17:                                               ; preds = %14
  %18 = load i32, i32* @MPV_FORMAT_NODE_MAP, align 4
  %19 = call %struct.mpv_node* @node_array_add(%struct.mpv_node* %2, i32 %18)
  store %struct.mpv_node* %19, %struct.mpv_node** %5, align 8
  %20 = load %struct.mpv_node*, %struct.mpv_node** %5, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @node_map_add_string(%struct.mpv_node* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load %struct.mpv_node*, %struct.mpv_node** %5, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @node_map_add_string(%struct.mpv_node* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %29, %17
  %36 = load %struct.mpv_node*, %struct.mpv_node** %5, align 8
  %37 = load i32, i32* @MPV_FORMAT_NODE_ARRAY, align 4
  %38 = call %struct.mpv_node* @node_map_add(%struct.mpv_node* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  store %struct.mpv_node* %38, %struct.mpv_node** %6, align 8
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %71, %35
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %39
  %46 = load %struct.mpv_node*, %struct.mpv_node** %6, align 8
  %47 = load i32, i32* @MPV_FORMAT_NODE_MAP, align 4
  %48 = call %struct.mpv_node* @node_array_add(%struct.mpv_node* %46, i32 %47)
  store %struct.mpv_node* %48, %struct.mpv_node** %8, align 8
  %49 = load %struct.mpv_node*, %struct.mpv_node** %8, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = mul nsw i32 %53, 2
  %55 = add nsw i32 %54, 0
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @node_map_add_string(%struct.mpv_node* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load %struct.mpv_node*, %struct.mpv_node** %8, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = mul nsw i32 %64, 2
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @node_map_add_string(%struct.mpv_node* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %45
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %39

74:                                               ; preds = %39
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  store %struct.TYPE_2__* %78, %struct.TYPE_2__** %4, align 8
  br label %14

79:                                               ; preds = %14
  %80 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %2, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  ret i32 %81
}

declare dso_local i32 @node_init(%struct.mpv_node*, i32, i32*) #1

declare dso_local %struct.mpv_node* @node_array_add(%struct.mpv_node*, i32) #1

declare dso_local i32 @node_map_add_string(%struct.mpv_node*, i8*, i32) #1

declare dso_local %struct.mpv_node* @node_map_add(%struct.mpv_node*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
