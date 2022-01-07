; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_signature_from_semantic.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_signature_from_semantic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_signature_element = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.wined3d_shader_semantic = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@WINED3D_TYPE_FLOAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_signature_element*, %struct.wined3d_shader_semantic*)* @shader_signature_from_semantic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_signature_from_semantic(%struct.wined3d_shader_signature_element* %0, %struct.wined3d_shader_semantic* %1) #0 {
  %3 = alloca %struct.wined3d_shader_signature_element*, align 8
  %4 = alloca %struct.wined3d_shader_semantic*, align 8
  store %struct.wined3d_shader_signature_element* %0, %struct.wined3d_shader_signature_element** %3, align 8
  store %struct.wined3d_shader_semantic* %1, %struct.wined3d_shader_semantic** %4, align 8
  %5 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %4, align 8
  %6 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @shader_semantic_name_from_usage(i32 %7)
  %9 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %3, align 8
  %10 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %9, i32 0, i32 6
  store i32 %8, i32* %10, align 4
  %11 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %4, align 8
  %12 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %3, align 8
  %15 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 8
  %16 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %3, align 8
  %17 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %16, i32 0, i32 4
  store i64 0, i64* %17, align 8
  %18 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %4, align 8
  %19 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @shader_sysval_semantic_from_usage(i32 %20)
  %22 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %3, align 8
  %23 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @WINED3D_TYPE_FLOAT, align 4
  %25 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %3, align 8
  %26 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %4, align 8
  %28 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %3, align 8
  %36 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.wined3d_shader_semantic*, %struct.wined3d_shader_semantic** %4, align 8
  %38 = getelementptr inbounds %struct.wined3d_shader_semantic, %struct.wined3d_shader_semantic* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %3, align 8
  %42 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  ret void
}

declare dso_local i32 @shader_semantic_name_from_usage(i32) #1

declare dso_local i32 @shader_sysval_semantic_from_usage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
