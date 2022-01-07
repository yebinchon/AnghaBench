; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_init_format_gen_mipmap_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_init_format_gen_mipmap_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32, %struct.wined3d_format*, %struct.TYPE_2__ }
%struct.wined3d_format = type { i32* }
%struct.TYPE_2__ = type { i32 }

@WINED3DFMT_FLAG_RENDERTARGET = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_FILTERING = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_GEN_MIPMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*)* @init_format_gen_mipmap_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_format_gen_mipmap_info(%struct.wined3d_gl_info* %0) #0 {
  %2 = alloca %struct.wined3d_gl_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.wined3d_format*, align 8
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %2, align 8
  %6 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %2, align 8
  %7 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %65

12:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %62, %12
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %2, align 8
  %16 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %65

19:                                               ; preds = %13
  %20 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %2, align 8
  %21 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %20, i32 0, i32 1
  %22 = load %struct.wined3d_format*, %struct.wined3d_format** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %22, i64 %24
  store %struct.wined3d_format* %25, %struct.wined3d_format** %5, align 8
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %58, %19
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.wined3d_format*, %struct.wined3d_format** %5, align 8
  %29 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @ARRAY_SIZE(i32* %30)
  %32 = icmp ult i32 %27, %31
  br i1 %32, label %33, label %61

33:                                               ; preds = %26
  %34 = load %struct.wined3d_format*, %struct.wined3d_format** %5, align 8
  %35 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* @WINED3DFMT_FLAG_RENDERTARGET, align 4
  %43 = load i32, i32* @WINED3DFMT_FLAG_FILTERING, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %33
  %48 = load i32, i32* @WINED3DFMT_FLAG_GEN_MIPMAP, align 4
  %49 = load %struct.wined3d_format*, %struct.wined3d_format** %5, align 8
  %50 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %48
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %47, %33
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %26

61:                                               ; preds = %26
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %3, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %13

65:                                               ; preds = %11, %13
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
