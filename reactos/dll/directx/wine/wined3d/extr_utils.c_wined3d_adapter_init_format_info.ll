; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_wined3d_adapter_init_format_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_wined3d_adapter_init_format_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_adapter = type { i32, %struct.TYPE_2__, %struct.wined3d_gl_info }
%struct.TYPE_2__ = type { i32 }
%struct.wined3d_gl_info = type { i32* }
%struct.wined3d_caps_gl_ctx = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wined3d_adapter_init_format_info(%struct.wined3d_adapter* %0, %struct.wined3d_caps_gl_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_adapter*, align 8
  %5 = alloca %struct.wined3d_caps_gl_ctx*, align 8
  %6 = alloca %struct.wined3d_gl_info*, align 8
  store %struct.wined3d_adapter* %0, %struct.wined3d_adapter** %4, align 8
  store %struct.wined3d_caps_gl_ctx* %1, %struct.wined3d_caps_gl_ctx** %5, align 8
  %7 = load %struct.wined3d_adapter*, %struct.wined3d_adapter** %4, align 8
  %8 = getelementptr inbounds %struct.wined3d_adapter, %struct.wined3d_adapter* %7, i32 0, i32 2
  store %struct.wined3d_gl_info* %8, %struct.wined3d_gl_info** %6, align 8
  %9 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %10 = call i32 @init_format_base_info(%struct.wined3d_gl_info* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %3, align 4
  br label %67

14:                                               ; preds = %2
  %15 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %16 = call i32 @init_format_block_info(%struct.wined3d_gl_info* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %59

19:                                               ; preds = %14
  %20 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %21 = icmp ne %struct.wined3d_caps_gl_ctx* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %3, align 4
  br label %67

24:                                               ; preds = %19
  %25 = load %struct.wined3d_adapter*, %struct.wined3d_adapter** %4, align 8
  %26 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %27 = call i32 @init_format_texture_info(%struct.wined3d_adapter* %25, %struct.wined3d_gl_info* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %59

30:                                               ; preds = %24
  %31 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %32 = call i32 @init_format_vertex_info(%struct.wined3d_gl_info* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %59

35:                                               ; preds = %30
  %36 = load %struct.wined3d_adapter*, %struct.wined3d_adapter** %4, align 8
  %37 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %38 = call i32 @apply_format_fixups(%struct.wined3d_adapter* %36, %struct.wined3d_gl_info* %37)
  %39 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %40 = call i32 @init_format_fbo_compat_info(%struct.wined3d_caps_gl_ctx* %39)
  %41 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %42 = load %struct.wined3d_adapter*, %struct.wined3d_adapter** %4, align 8
  %43 = getelementptr inbounds %struct.wined3d_adapter, %struct.wined3d_adapter* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @init_format_filter_info(%struct.wined3d_gl_info* %41, i32 %45)
  %47 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %48 = call i32 @init_typeless_formats(%struct.wined3d_gl_info* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %35
  br label %59

51:                                               ; preds = %35
  %52 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %53 = call i32 @init_format_gen_mipmap_info(%struct.wined3d_gl_info* %52)
  %54 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %5, align 8
  %55 = load %struct.wined3d_adapter*, %struct.wined3d_adapter** %4, align 8
  %56 = getelementptr inbounds %struct.wined3d_adapter, %struct.wined3d_adapter* %55, i32 0, i32 0
  %57 = call i32 @init_format_depth_bias_scale(%struct.wined3d_caps_gl_ctx* %54, i32* %56)
  %58 = load i32, i32* @TRUE, align 4
  store i32 %58, i32* %3, align 4
  br label %67

59:                                               ; preds = %50, %34, %29, %18
  %60 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %61 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @heap_free(i32* %62)
  %64 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %65 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %59, %51, %22, %12
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @init_format_base_info(%struct.wined3d_gl_info*) #1

declare dso_local i32 @init_format_block_info(%struct.wined3d_gl_info*) #1

declare dso_local i32 @init_format_texture_info(%struct.wined3d_adapter*, %struct.wined3d_gl_info*) #1

declare dso_local i32 @init_format_vertex_info(%struct.wined3d_gl_info*) #1

declare dso_local i32 @apply_format_fixups(%struct.wined3d_adapter*, %struct.wined3d_gl_info*) #1

declare dso_local i32 @init_format_fbo_compat_info(%struct.wined3d_caps_gl_ctx*) #1

declare dso_local i32 @init_format_filter_info(%struct.wined3d_gl_info*, i32) #1

declare dso_local i32 @init_typeless_formats(%struct.wined3d_gl_info*) #1

declare dso_local i32 @init_format_gen_mipmap_info(%struct.wined3d_gl_info*) #1

declare dso_local i32 @init_format_depth_bias_scale(%struct.wined3d_caps_gl_ctx*, i32*) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
