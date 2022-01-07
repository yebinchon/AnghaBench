; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_duplicate_item_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_duplicate_item_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_scene_item = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.obs_scene* }
%struct.obs_scene = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GS_RGBA = common dso_local global i32 0, align 4
@GS_ZS_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_scene_item*, %struct.obs_scene_item*, i32, i32, i32)* @duplicate_item_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @duplicate_item_data(%struct.obs_scene_item* %0, %struct.obs_scene_item* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.obs_scene_item*, align 8
  %7 = alloca %struct.obs_scene_item*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.obs_scene*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.obs_scene_item* %0, %struct.obs_scene_item** %6, align 8
  store %struct.obs_scene_item* %1, %struct.obs_scene_item** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %15 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %14, i32 0, i32 21
  %16 = load %struct.obs_scene*, %struct.obs_scene** %15, align 8
  store %struct.obs_scene* %16, %struct.obs_scene** %11, align 8
  %17 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %18 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %17, i32 0, i32 20
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %23 = call i32 @set_visibility(%struct.obs_scene_item* %22, i32 0)
  br label %24

24:                                               ; preds = %21, %5
  %25 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %26 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %25, i32 0, i32 19
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %29 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %28, i32 0, i32 19
  store i32 %27, i32* %29, align 4
  %30 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %31 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %30, i32 0, i32 18
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %34 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %33, i32 0, i32 18
  store i32 %32, i32* %34, align 8
  %35 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %36 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %35, i32 0, i32 17
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %39 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %38, i32 0, i32 17
  store i32 %37, i32* %39, align 4
  %40 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %41 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %40, i32 0, i32 16
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %44 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %43, i32 0, i32 16
  store i32 %42, i32* %44, align 8
  %45 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %46 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %45, i32 0, i32 15
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %49 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %48, i32 0, i32 15
  store i32 %47, i32* %49, align 4
  %50 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %51 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %50, i32 0, i32 14
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %54 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %53, i32 0, i32 14
  store i32 %52, i32* %54, align 8
  %55 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %56 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %55, i32 0, i32 13
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %59 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %58, i32 0, i32 13
  store i32 %57, i32* %59, align 4
  %60 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %61 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %60, i32 0, i32 12
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %64 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %63, i32 0, i32 12
  store i32 %62, i32* %64, align 8
  %65 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %66 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %65, i32 0, i32 11
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %69 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %68, i32 0, i32 11
  store i32 %67, i32* %69, align 4
  %70 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %71 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %74 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %73, i32 0, i32 10
  store i32 %72, i32* %74, align 8
  %75 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %76 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %79 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %78, i32 0, i32 9
  store i32 %77, i32* %79, align 4
  %80 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %81 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %84 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %83, i32 0, i32 8
  store i32 %82, i32* %84, align 8
  %85 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %86 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %89 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %88, i32 0, i32 7
  store i32 %87, i32* %89, align 4
  %90 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %91 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %94 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %93, i32 0, i32 6
  store i32 %92, i32* %94, align 8
  %95 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %96 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %99 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %125

102:                                              ; preds = %24
  %103 = load %struct.obs_scene*, %struct.obs_scene** %11, align 8
  %104 = getelementptr inbounds %struct.obs_scene, %struct.obs_scene* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %125, label %110

110:                                              ; preds = %102
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %111 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %112 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @obs_hotkey_pair_save(i32 %113, i32** %12, i32** %13)
  %115 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %116 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load i32*, i32** %12, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = call i32 @obs_hotkey_pair_load(i32 %117, i32* %118, i32* %119)
  %121 = load i32*, i32** %12, align 8
  %122 = call i32 @obs_data_array_release(i32* %121)
  %123 = load i32*, i32** %13, align 8
  %124 = call i32 @obs_data_array_release(i32* %123)
  br label %125

125:                                              ; preds = %110, %102, %24
  %126 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %127 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %128 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %127, i32 0, i32 3
  %129 = call i32 @obs_sceneitem_set_crop(%struct.obs_scene_item* %126, i32* %128)
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %125
  %133 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %134 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %133, i32 0, i32 2
  %135 = call i32 @os_atomic_set_bool(i32* %134, i32 1)
  br label %154

136:                                              ; preds = %125
  %137 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %138 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %153, label %141

141:                                              ; preds = %136
  %142 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %143 = call i64 @item_texture_enabled(%struct.obs_scene_item* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %141
  %146 = call i32 (...) @obs_enter_graphics()
  %147 = load i32, i32* @GS_RGBA, align 4
  %148 = load i32, i32* @GS_ZS_NONE, align 4
  %149 = call i64 @gs_texrender_create(i32 %147, i32 %148)
  %150 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %151 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %150, i32 0, i32 1
  store i64 %149, i64* %151, align 8
  %152 = call i32 (...) @obs_leave_graphics()
  br label %153

153:                                              ; preds = %145, %141, %136
  br label %154

154:                                              ; preds = %153, %132
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %154
  %158 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %159 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %162 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @obs_data_apply(i32 %160, i32 %163)
  br label %165

165:                                              ; preds = %157, %154
  ret void
}

declare dso_local i32 @set_visibility(%struct.obs_scene_item*, i32) #1

declare dso_local i32 @obs_hotkey_pair_save(i32, i32**, i32**) #1

declare dso_local i32 @obs_hotkey_pair_load(i32, i32*, i32*) #1

declare dso_local i32 @obs_data_array_release(i32*) #1

declare dso_local i32 @obs_sceneitem_set_crop(%struct.obs_scene_item*, i32*) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

declare dso_local i64 @item_texture_enabled(%struct.obs_scene_item*) #1

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i64 @gs_texrender_create(i32, i32) #1

declare dso_local i32 @obs_leave_graphics(...) #1

declare dso_local i32 @obs_data_apply(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
