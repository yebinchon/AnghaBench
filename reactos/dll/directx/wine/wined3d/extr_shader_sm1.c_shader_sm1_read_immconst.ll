; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm1.c_shader_sm1_read_immconst.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm1.c_shader_sm1_read_immconst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_src_param = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }

@WINED3D_IMMCONST_VEC4 = common dso_local global i32 0, align 4
@WINED3DSPR_IMMCONST = common dso_local global i32 0, align 4
@WINED3DSP_NOSWIZZLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, %struct.wined3d_shader_src_param*, i32, i32)* @shader_sm1_read_immconst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_sm1_read_immconst(i32** %0, %struct.wined3d_shader_src_param* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca %struct.wined3d_shader_src_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store %struct.wined3d_shader_src_param* %1, %struct.wined3d_shader_src_param** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @WINED3D_IMMCONST_VEC4, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 4, i32 1
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @WINED3DSPR_IMMCONST, align 4
  %16 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %6, align 8
  %17 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 4
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %6, align 8
  %21 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %6, align 8
  %24 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 -1, i32* %28, align 8
  %29 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %6, align 8
  %30 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %6, align 8
  %36 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 -1, i32* %40, align 8
  %41 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %6, align 8
  %42 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %6, align 8
  %49 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %6, align 8
  %52 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32**, i32*** %5, align 8
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = call i32 @memcpy(i32 %55, i32* %57, i32 %61)
  %63 = load i32, i32* @WINED3DSP_NOSWIZZLE, align 4
  %64 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %6, align 8
  %65 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %6, align 8
  %67 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32**, i32*** %5, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = zext i32 %68 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %69, align 8
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
