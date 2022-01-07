; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_update_heap_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_update_heap_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.constant_heap = type { i32*, i64*, i32, %struct.constant_entry* }
%struct.constant_entry = type { i64, i64 }

@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.constant_heap*, i32, i64)* @update_heap_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_heap_entry(%struct.constant_heap* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.constant_heap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.constant_entry*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.constant_heap* %0, %struct.constant_heap** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.constant_heap*, %struct.constant_heap** %4, align 8
  %12 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %11, i32 0, i32 3
  %13 = load %struct.constant_entry*, %struct.constant_entry** %12, align 8
  store %struct.constant_entry* %13, %struct.constant_entry** %7, align 8
  %14 = load %struct.constant_heap*, %struct.constant_heap** %4, align 8
  %15 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %8, align 8
  %17 = load %struct.constant_heap*, %struct.constant_heap** %4, align 8
  %18 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %3
  %26 = load %struct.constant_heap*, %struct.constant_heap** %4, align 8
  %27 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  store i32 %28, i32* %9, align 4
  %30 = load i64, i64* @TRUE, align 8
  %31 = load %struct.constant_heap*, %struct.constant_heap** %4, align 8
  %32 = getelementptr inbounds %struct.constant_heap, %struct.constant_heap* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  store i64 %30, i64* %36, align 8
  br label %43

37:                                               ; preds = %3
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %37, %25
  br label %44

44:                                               ; preds = %59, %43
  %45 = load i32, i32* %9, align 4
  %46 = icmp ugt i32 %45, 1
  br i1 %46, label %47, label %80

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = lshr i32 %48, 1
  store i32 %49, i32* %10, align 4
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.constant_entry*, %struct.constant_entry** %7, align 8
  %52 = load i32, i32* %10, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.constant_entry, %struct.constant_entry* %51, i64 %53
  %55 = getelementptr inbounds %struct.constant_entry, %struct.constant_entry* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sle i64 %50, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %80

59:                                               ; preds = %47
  %60 = load %struct.constant_entry*, %struct.constant_entry** %7, align 8
  %61 = load i32, i32* %9, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.constant_entry, %struct.constant_entry* %60, i64 %62
  %64 = load %struct.constant_entry*, %struct.constant_entry** %7, align 8
  %65 = load i32, i32* %10, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.constant_entry, %struct.constant_entry* %64, i64 %66
  %68 = bitcast %struct.constant_entry* %63 to i8*
  %69 = bitcast %struct.constant_entry* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 16, i1 false)
  %70 = load i32, i32* %9, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load %struct.constant_entry*, %struct.constant_entry** %7, align 8
  %73 = load i32, i32* %10, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.constant_entry, %struct.constant_entry* %72, i64 %74
  %76 = getelementptr inbounds %struct.constant_entry, %struct.constant_entry* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %71, i64 %77
  store i32 %70, i32* %78, align 4
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %9, align 4
  br label %44

80:                                               ; preds = %58, %44
  %81 = load i64, i64* %6, align 8
  %82 = load %struct.constant_entry*, %struct.constant_entry** %7, align 8
  %83 = load i32, i32* %9, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.constant_entry, %struct.constant_entry* %82, i64 %84
  %86 = getelementptr inbounds %struct.constant_entry, %struct.constant_entry* %85, i32 0, i32 0
  store i64 %81, i64* %86, align 8
  %87 = load i32, i32* %5, align 4
  %88 = zext i32 %87 to i64
  %89 = load %struct.constant_entry*, %struct.constant_entry** %7, align 8
  %90 = load i32, i32* %9, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.constant_entry, %struct.constant_entry* %89, i64 %91
  %93 = getelementptr inbounds %struct.constant_entry, %struct.constant_entry* %92, i32 0, i32 1
  store i64 %88, i64* %93, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %5, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %94, i32* %98, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
