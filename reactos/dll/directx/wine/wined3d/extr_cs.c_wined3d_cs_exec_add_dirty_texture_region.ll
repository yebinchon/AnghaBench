; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_add_dirty_texture_region.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_add_dirty_texture_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { i32 }
%struct.wined3d_cs_add_dirty_texture_region = type { i32, %struct.wined3d_texture* }
%struct.wined3d_texture = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wined3d_context = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to load location %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_cs*, i8*)* @wined3d_cs_exec_add_dirty_texture_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_cs_exec_add_dirty_texture_region(%struct.wined3d_cs* %0, i8* %1) #0 {
  %3 = alloca %struct.wined3d_cs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wined3d_cs_add_dirty_texture_region*, align 8
  %6 = alloca %struct.wined3d_texture*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wined3d_context*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.wined3d_cs_add_dirty_texture_region*
  store %struct.wined3d_cs_add_dirty_texture_region* %11, %struct.wined3d_cs_add_dirty_texture_region** %5, align 8
  %12 = load %struct.wined3d_cs_add_dirty_texture_region*, %struct.wined3d_cs_add_dirty_texture_region** %5, align 8
  %13 = getelementptr inbounds %struct.wined3d_cs_add_dirty_texture_region, %struct.wined3d_cs_add_dirty_texture_region* %12, i32 0, i32 1
  %14 = load %struct.wined3d_texture*, %struct.wined3d_texture** %13, align 8
  store %struct.wined3d_texture* %14, %struct.wined3d_texture** %6, align 8
  %15 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %16 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.wined3d_context* @context_acquire(i32 %17, i32* null, i32 0)
  store %struct.wined3d_context* %18, %struct.wined3d_context** %9, align 8
  %19 = load %struct.wined3d_cs_add_dirty_texture_region*, %struct.wined3d_cs_add_dirty_texture_region** %5, align 8
  %20 = getelementptr inbounds %struct.wined3d_cs_add_dirty_texture_region, %struct.wined3d_cs_add_dirty_texture_region* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %23 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul i32 %21, %24
  store i32 %25, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %59, %2
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %29 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %64

32:                                               ; preds = %26
  %33 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.wined3d_context*, %struct.wined3d_context** %9, align 8
  %36 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %37 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @wined3d_texture_load_location(%struct.wined3d_texture* %33, i32 %34, %struct.wined3d_context* %35, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %32
  %43 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %46 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = xor i32 %48, -1
  %50 = call i32 @wined3d_texture_invalidate_location(%struct.wined3d_texture* %43, i32 %44, i32 %49)
  br label %58

51:                                               ; preds = %32
  %52 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %53 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @wined3d_debug_location(i32 %55)
  %57 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %51, %42
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %26

64:                                               ; preds = %26
  %65 = load %struct.wined3d_context*, %struct.wined3d_context** %9, align 8
  %66 = call i32 @context_release(%struct.wined3d_context* %65)
  %67 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %68 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %67, i32 0, i32 1
  %69 = call i32 @wined3d_resource_release(%struct.TYPE_2__* %68)
  ret void
}

declare dso_local %struct.wined3d_context* @context_acquire(i32, i32*, i32) #1

declare dso_local i64 @wined3d_texture_load_location(%struct.wined3d_texture*, i32, %struct.wined3d_context*, i32) #1

declare dso_local i32 @wined3d_texture_invalidate_location(%struct.wined3d_texture*, i32, i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @wined3d_debug_location(i32) #1

declare dso_local i32 @context_release(%struct.wined3d_context*) #1

declare dso_local i32 @wined3d_resource_release(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
