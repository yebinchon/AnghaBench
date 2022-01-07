; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_buffer.c_unsafe_impl_from_IDirect3DVertexBuffer8.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_buffer.c_unsafe_impl_from_IDirect3DVertexBuffer8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d8_vertexbuffer = type { i32 }
%struct.TYPE_4__ = type { i32* }

@Direct3DVertexBuffer8_Vtbl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.d3d8_vertexbuffer* @unsafe_impl_from_IDirect3DVertexBuffer8(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.d3d8_vertexbuffer*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = icmp ne %struct.TYPE_4__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store %struct.d3d8_vertexbuffer* null, %struct.d3d8_vertexbuffer** %2, align 8
  br label %16

7:                                                ; preds = %1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, @Direct3DVertexBuffer8_Vtbl
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = call %struct.d3d8_vertexbuffer* @impl_from_IDirect3DVertexBuffer8(%struct.TYPE_4__* %14)
  store %struct.d3d8_vertexbuffer* %15, %struct.d3d8_vertexbuffer** %2, align 8
  br label %16

16:                                               ; preds = %7, %6
  %17 = load %struct.d3d8_vertexbuffer*, %struct.d3d8_vertexbuffer** %2, align 8
  ret %struct.d3d8_vertexbuffer* %17
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.d3d8_vertexbuffer* @impl_from_IDirect3DVertexBuffer8(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
