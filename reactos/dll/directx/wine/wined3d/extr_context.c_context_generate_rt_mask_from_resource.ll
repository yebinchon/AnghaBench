; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_generate_rt_mask_from_resource.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_generate_rt_mask_from_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_resource = type { i64 }

@WINED3D_RTYPE_TEXTURE_2D = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Not implemented for %s resources.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_resource*)* @context_generate_rt_mask_from_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @context_generate_rt_mask_from_resource(%struct.wined3d_resource* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wined3d_resource*, align 8
  store %struct.wined3d_resource* %0, %struct.wined3d_resource** %3, align 8
  %4 = load %struct.wined3d_resource*, %struct.wined3d_resource** %3, align 8
  %5 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @WINED3D_RTYPE_TEXTURE_2D, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.wined3d_resource*, %struct.wined3d_resource** %3, align 8
  %11 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @debug_d3dresourcetype(i64 %12)
  %14 = call i32 @FIXME(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 0, i32* %2, align 4
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.wined3d_resource*, %struct.wined3d_resource** %3, align 8
  %17 = call i32 @texture_from_resource(%struct.wined3d_resource* %16)
  %18 = call i32 @wined3d_texture_get_gl_buffer(i32 %17)
  %19 = or i32 -2147483648, %18
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %15, %9
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debug_d3dresourcetype(i64) #1

declare dso_local i32 @wined3d_texture_get_gl_buffer(i32) #1

declare dso_local i32 @texture_from_resource(%struct.wined3d_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
