; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_meshbuilder.c_clean_mesh_builder_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_meshbuilder.c_clean_mesh_builder_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3drm_mesh_builder = type { i64, %struct.TYPE_2__*, %struct.TYPE_2__*, i64, %struct.TYPE_2__*, i64, i64, %struct.TYPE_2__*, i64, i64, %struct.TYPE_2__*, i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3drm_mesh_builder*)* @clean_mesh_builder_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clean_mesh_builder_data(%struct.d3drm_mesh_builder* %0) #0 {
  %2 = alloca %struct.d3drm_mesh_builder*, align 8
  %3 = alloca i64, align 8
  store %struct.d3drm_mesh_builder* %0, %struct.d3drm_mesh_builder** %2, align 8
  %4 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %2, align 8
  %5 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %4, i32 0, i32 14
  %6 = call i32 @IDirect3DRMMeshBuilder3_SetName(i32* %5, i32* null)
  %7 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %2, align 8
  %8 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %7, i32 0, i32 13
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = call i32 @heap_free(%struct.TYPE_2__* %9)
  %11 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %2, align 8
  %12 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %11, i32 0, i32 13
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %12, align 8
  %13 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %2, align 8
  %14 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %13, i32 0, i32 12
  store i64 0, i64* %14, align 8
  %15 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %2, align 8
  %16 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %15, i32 0, i32 11
  store i64 0, i64* %16, align 8
  %17 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %2, align 8
  %18 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %17, i32 0, i32 10
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = call i32 @heap_free(%struct.TYPE_2__* %19)
  %21 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %2, align 8
  %22 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %21, i32 0, i32 10
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %22, align 8
  %23 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %2, align 8
  %24 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %23, i32 0, i32 9
  store i64 0, i64* %24, align 8
  %25 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %2, align 8
  %26 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %25, i32 0, i32 8
  store i64 0, i64* %26, align 8
  %27 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %2, align 8
  %28 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %27, i32 0, i32 7
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = call i32 @heap_free(%struct.TYPE_2__* %29)
  %31 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %2, align 8
  %32 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %31, i32 0, i32 7
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %32, align 8
  %33 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %2, align 8
  %34 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %33, i32 0, i32 6
  store i64 0, i64* %34, align 8
  %35 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %2, align 8
  %36 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %2, align 8
  %38 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %37, i32 0, i32 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = call i32 @heap_free(%struct.TYPE_2__* %39)
  %41 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %2, align 8
  %42 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %41, i32 0, i32 4
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %42, align 8
  %43 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %2, align 8
  %44 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  store i64 0, i64* %3, align 8
  br label %45

45:                                               ; preds = %88, %1
  %46 = load i64, i64* %3, align 8
  %47 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %2, align 8
  %48 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %51, label %91

51:                                               ; preds = %45
  %52 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %2, align 8
  %53 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %51
  %61 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %2, align 8
  %62 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i64, i64* %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @IDirect3DRMMaterial2_Release(i64 %67)
  br label %69

69:                                               ; preds = %60, %51
  %70 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %2, align 8
  %71 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i64, i64* %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %69
  %79 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %2, align 8
  %80 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i64, i64* %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @IDirect3DRMTexture3_Release(i64 %85)
  br label %87

87:                                               ; preds = %78, %69
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %3, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %3, align 8
  br label %45

91:                                               ; preds = %45
  %92 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %2, align 8
  %93 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %2, align 8
  %95 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = call i32 @heap_free(%struct.TYPE_2__* %96)
  %98 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %2, align 8
  %99 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %98, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %99, align 8
  %100 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %2, align 8
  %101 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = call i32 @heap_free(%struct.TYPE_2__* %102)
  %104 = load %struct.d3drm_mesh_builder*, %struct.d3drm_mesh_builder** %2, align 8
  %105 = getelementptr inbounds %struct.d3drm_mesh_builder, %struct.d3drm_mesh_builder* %104, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %105, align 8
  ret void
}

declare dso_local i32 @IDirect3DRMMeshBuilder3_SetName(i32*, i32*) #1

declare dso_local i32 @heap_free(%struct.TYPE_2__*) #1

declare dso_local i32 @IDirect3DRMMaterial2_Release(i64) #1

declare dso_local i32 @IDirect3DRMTexture3_Release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
