; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_multiply_vector_matrix.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_multiply_vector_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_vec4 = type { i32, i32, i32, i32 }
%struct.wined3d_matrix = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_vec4*, %struct.wined3d_vec4*, %struct.wined3d_matrix*)* @multiply_vector_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @multiply_vector_matrix(%struct.wined3d_vec4* %0, %struct.wined3d_vec4* %1, %struct.wined3d_matrix* %2) #0 {
  %4 = alloca %struct.wined3d_vec4*, align 8
  %5 = alloca %struct.wined3d_vec4*, align 8
  %6 = alloca %struct.wined3d_matrix*, align 8
  %7 = alloca %struct.wined3d_vec4, align 4
  store %struct.wined3d_vec4* %0, %struct.wined3d_vec4** %4, align 8
  store %struct.wined3d_vec4* %1, %struct.wined3d_vec4** %5, align 8
  store %struct.wined3d_matrix* %2, %struct.wined3d_matrix** %6, align 8
  %8 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %5, align 8
  %9 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %6, align 8
  %12 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %10, %13
  %15 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %5, align 8
  %16 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %6, align 8
  %19 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = add nsw i32 %14, %21
  %23 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %5, align 8
  %24 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %6, align 8
  %27 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  %30 = add nsw i32 %22, %29
  %31 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %5, align 8
  %32 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %6, align 8
  %35 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  %38 = add nsw i32 %30, %37
  %39 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %7, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %5, align 8
  %41 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %6, align 8
  %44 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %42, %45
  %47 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %5, align 8
  %48 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %6, align 8
  %51 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  %54 = add nsw i32 %46, %53
  %55 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %5, align 8
  %56 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %6, align 8
  %59 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %57, %60
  %62 = add nsw i32 %54, %61
  %63 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %5, align 8
  %64 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %6, align 8
  %67 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %65, %68
  %70 = add nsw i32 %62, %69
  %71 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %7, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  %72 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %5, align 8
  %73 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %6, align 8
  %76 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %74, %77
  %79 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %5, align 8
  %80 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %6, align 8
  %83 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %81, %84
  %86 = add nsw i32 %78, %85
  %87 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %5, align 8
  %88 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %6, align 8
  %91 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %90, i32 0, i32 10
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %89, %92
  %94 = add nsw i32 %86, %93
  %95 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %5, align 8
  %96 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %6, align 8
  %99 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %98, i32 0, i32 11
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %97, %100
  %102 = add nsw i32 %94, %101
  %103 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %7, i32 0, i32 2
  store i32 %102, i32* %103, align 4
  %104 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %5, align 8
  %105 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %6, align 8
  %108 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %107, i32 0, i32 12
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %106, %109
  %111 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %5, align 8
  %112 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %6, align 8
  %115 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %114, i32 0, i32 13
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %113, %116
  %118 = add nsw i32 %110, %117
  %119 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %5, align 8
  %120 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %6, align 8
  %123 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %122, i32 0, i32 14
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %121, %124
  %126 = add nsw i32 %118, %125
  %127 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %5, align 8
  %128 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %6, align 8
  %131 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %130, i32 0, i32 15
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %129, %132
  %134 = add nsw i32 %126, %133
  %135 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %7, i32 0, i32 3
  store i32 %134, i32* %135, align 4
  %136 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %4, align 8
  %137 = bitcast %struct.wined3d_vec4* %136 to i8*
  %138 = bitcast %struct.wined3d_vec4* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %137, i8* align 4 %138, i64 16, i1 false)
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
