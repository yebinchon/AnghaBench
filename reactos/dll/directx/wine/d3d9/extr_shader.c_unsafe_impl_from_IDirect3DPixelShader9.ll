; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_shader.c_unsafe_impl_from_IDirect3DPixelShader9.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_shader.c_unsafe_impl_from_IDirect3DPixelShader9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d9_pixelshader = type { i32 }
%struct.TYPE_5__ = type { i32* }

@d3d9_pixelshader_vtbl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Pixel shader %p with the wrong vtbl %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.d3d9_pixelshader* @unsafe_impl_from_IDirect3DPixelShader9(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.d3d9_pixelshader*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %5 = icmp ne %struct.TYPE_5__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store %struct.d3d9_pixelshader* null, %struct.d3d9_pixelshader** %2, align 8
  br label %21

7:                                                ; preds = %1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, @d3d9_pixelshader_vtbl
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @WARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %13, i32* %16)
  br label %18

18:                                               ; preds = %12, %7
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = call %struct.d3d9_pixelshader* @impl_from_IDirect3DPixelShader9(%struct.TYPE_5__* %19)
  store %struct.d3d9_pixelshader* %20, %struct.d3d9_pixelshader** %2, align 8
  br label %21

21:                                               ; preds = %18, %6
  %22 = load %struct.d3d9_pixelshader*, %struct.d3d9_pixelshader** %2, align 8
  ret %struct.d3d9_pixelshader* %22
}

declare dso_local i32 @WARN(i8*, %struct.TYPE_5__*, i32*) #1

declare dso_local %struct.d3d9_pixelshader* @impl_from_IDirect3DPixelShader9(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
