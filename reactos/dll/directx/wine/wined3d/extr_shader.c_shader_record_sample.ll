; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_record_sample.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_record_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_reg_maps = type { %struct.wined3d_shader_sampler_map }
%struct.wined3d_shader_sampler_map = type { i32, i32, %struct.wined3d_shader_sampler_map_entry* }
%struct.wined3d_shader_sampler_map_entry = type { i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Failed to allocate sampler map entries.\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to resize sampler map entries.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_reg_maps*, i32, i32, i32)* @shader_record_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_record_sample(%struct.wined3d_shader_reg_maps* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wined3d_shader_sampler_map_entry*, align 8
  %10 = alloca %struct.wined3d_shader_sampler_map_entry*, align 8
  %11 = alloca %struct.wined3d_shader_sampler_map*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.wined3d_shader_reg_maps* %0, %struct.wined3d_shader_reg_maps** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %5, align 8
  %15 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %14, i32 0, i32 0
  store %struct.wined3d_shader_sampler_map* %15, %struct.wined3d_shader_sampler_map** %11, align 8
  %16 = load %struct.wined3d_shader_sampler_map*, %struct.wined3d_shader_sampler_map** %11, align 8
  %17 = getelementptr inbounds %struct.wined3d_shader_sampler_map, %struct.wined3d_shader_sampler_map* %16, i32 0, i32 2
  %18 = load %struct.wined3d_shader_sampler_map_entry*, %struct.wined3d_shader_sampler_map_entry** %17, align 8
  store %struct.wined3d_shader_sampler_map_entry* %18, %struct.wined3d_shader_sampler_map_entry** %9, align 8
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %45, %4
  %20 = load i32, i32* %12, align 4
  %21 = load %struct.wined3d_shader_sampler_map*, %struct.wined3d_shader_sampler_map** %11, align 8
  %22 = getelementptr inbounds %struct.wined3d_shader_sampler_map, %struct.wined3d_shader_sampler_map* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %19
  %26 = load %struct.wined3d_shader_sampler_map_entry*, %struct.wined3d_shader_sampler_map_entry** %9, align 8
  %27 = load i32, i32* %12, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.wined3d_shader_sampler_map_entry, %struct.wined3d_shader_sampler_map_entry* %26, i64 %28
  %30 = getelementptr inbounds %struct.wined3d_shader_sampler_map_entry, %struct.wined3d_shader_sampler_map_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %25
  %35 = load %struct.wined3d_shader_sampler_map_entry*, %struct.wined3d_shader_sampler_map_entry** %9, align 8
  %36 = load i32, i32* %12, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.wined3d_shader_sampler_map_entry, %struct.wined3d_shader_sampler_map_entry* %35, i64 %37
  %39 = getelementptr inbounds %struct.wined3d_shader_sampler_map_entry, %struct.wined3d_shader_sampler_map_entry* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %121

44:                                               ; preds = %34, %25
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %12, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %12, align 4
  br label %19

48:                                               ; preds = %19
  %49 = load %struct.wined3d_shader_sampler_map*, %struct.wined3d_shader_sampler_map** %11, align 8
  %50 = getelementptr inbounds %struct.wined3d_shader_sampler_map, %struct.wined3d_shader_sampler_map* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %48
  %54 = call %struct.wined3d_shader_sampler_map_entry* @heap_calloc(i32 4, i32 12)
  store %struct.wined3d_shader_sampler_map_entry* %54, %struct.wined3d_shader_sampler_map_entry** %9, align 8
  %55 = icmp ne %struct.wined3d_shader_sampler_map_entry* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = call i32 @ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %121

58:                                               ; preds = %53
  %59 = load %struct.wined3d_shader_sampler_map*, %struct.wined3d_shader_sampler_map** %11, align 8
  %60 = getelementptr inbounds %struct.wined3d_shader_sampler_map, %struct.wined3d_shader_sampler_map* %59, i32 0, i32 1
  store i32 4, i32* %60, align 4
  %61 = load %struct.wined3d_shader_sampler_map_entry*, %struct.wined3d_shader_sampler_map_entry** %9, align 8
  %62 = load %struct.wined3d_shader_sampler_map*, %struct.wined3d_shader_sampler_map** %11, align 8
  %63 = getelementptr inbounds %struct.wined3d_shader_sampler_map, %struct.wined3d_shader_sampler_map* %62, i32 0, i32 2
  store %struct.wined3d_shader_sampler_map_entry* %61, %struct.wined3d_shader_sampler_map_entry** %63, align 8
  br label %104

64:                                               ; preds = %48
  %65 = load %struct.wined3d_shader_sampler_map*, %struct.wined3d_shader_sampler_map** %11, align 8
  %66 = getelementptr inbounds %struct.wined3d_shader_sampler_map, %struct.wined3d_shader_sampler_map* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.wined3d_shader_sampler_map*, %struct.wined3d_shader_sampler_map** %11, align 8
  %69 = getelementptr inbounds %struct.wined3d_shader_sampler_map, %struct.wined3d_shader_sampler_map* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %72, label %103

72:                                               ; preds = %64
  %73 = load %struct.wined3d_shader_sampler_map*, %struct.wined3d_shader_sampler_map** %11, align 8
  %74 = getelementptr inbounds %struct.wined3d_shader_sampler_map, %struct.wined3d_shader_sampler_map* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %75, 2
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %13, align 8
  %78 = load i64, i64* %13, align 8
  %79 = mul i64 12, %78
  %80 = load %struct.wined3d_shader_sampler_map*, %struct.wined3d_shader_sampler_map** %11, align 8
  %81 = getelementptr inbounds %struct.wined3d_shader_sampler_map, %struct.wined3d_shader_sampler_map* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 12, %83
  %85 = icmp ule i64 %79, %84
  br i1 %85, label %93, label %86

86:                                               ; preds = %72
  %87 = load %struct.wined3d_shader_sampler_map_entry*, %struct.wined3d_shader_sampler_map_entry** %9, align 8
  %88 = load i64, i64* %13, align 8
  %89 = mul i64 12, %88
  %90 = trunc i64 %89 to i32
  %91 = call %struct.wined3d_shader_sampler_map_entry* @heap_realloc(%struct.wined3d_shader_sampler_map_entry* %87, i32 %90)
  store %struct.wined3d_shader_sampler_map_entry* %91, %struct.wined3d_shader_sampler_map_entry** %9, align 8
  %92 = icmp ne %struct.wined3d_shader_sampler_map_entry* %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %86, %72
  %94 = call i32 @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %121

95:                                               ; preds = %86
  %96 = load i64, i64* %13, align 8
  %97 = trunc i64 %96 to i32
  %98 = load %struct.wined3d_shader_sampler_map*, %struct.wined3d_shader_sampler_map** %11, align 8
  %99 = getelementptr inbounds %struct.wined3d_shader_sampler_map, %struct.wined3d_shader_sampler_map* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.wined3d_shader_sampler_map_entry*, %struct.wined3d_shader_sampler_map_entry** %9, align 8
  %101 = load %struct.wined3d_shader_sampler_map*, %struct.wined3d_shader_sampler_map** %11, align 8
  %102 = getelementptr inbounds %struct.wined3d_shader_sampler_map, %struct.wined3d_shader_sampler_map* %101, i32 0, i32 2
  store %struct.wined3d_shader_sampler_map_entry* %100, %struct.wined3d_shader_sampler_map_entry** %102, align 8
  br label %103

103:                                              ; preds = %95, %64
  br label %104

104:                                              ; preds = %103, %58
  %105 = load %struct.wined3d_shader_sampler_map_entry*, %struct.wined3d_shader_sampler_map_entry** %9, align 8
  %106 = load %struct.wined3d_shader_sampler_map*, %struct.wined3d_shader_sampler_map** %11, align 8
  %107 = getelementptr inbounds %struct.wined3d_shader_sampler_map, %struct.wined3d_shader_sampler_map* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = zext i32 %108 to i64
  %111 = getelementptr inbounds %struct.wined3d_shader_sampler_map_entry, %struct.wined3d_shader_sampler_map_entry* %105, i64 %110
  store %struct.wined3d_shader_sampler_map_entry* %111, %struct.wined3d_shader_sampler_map_entry** %10, align 8
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.wined3d_shader_sampler_map_entry*, %struct.wined3d_shader_sampler_map_entry** %10, align 8
  %114 = getelementptr inbounds %struct.wined3d_shader_sampler_map_entry, %struct.wined3d_shader_sampler_map_entry* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.wined3d_shader_sampler_map_entry*, %struct.wined3d_shader_sampler_map_entry** %10, align 8
  %117 = getelementptr inbounds %struct.wined3d_shader_sampler_map_entry, %struct.wined3d_shader_sampler_map_entry* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.wined3d_shader_sampler_map_entry*, %struct.wined3d_shader_sampler_map_entry** %10, align 8
  %120 = getelementptr inbounds %struct.wined3d_shader_sampler_map_entry, %struct.wined3d_shader_sampler_map_entry* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %104, %93, %56, %43
  ret void
}

declare dso_local %struct.wined3d_shader_sampler_map_entry* @heap_calloc(i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local %struct.wined3d_shader_sampler_map_entry* @heap_realloc(%struct.wined3d_shader_sampler_map_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
