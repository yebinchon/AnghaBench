; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_atifs_free.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_atifs_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_device = type { %struct.atifs_private_data*, %struct.TYPE_2__* }
%struct.atifs_private_data = type { i32 }
%struct.TYPE_2__ = type { i32 }

@atifs_free_ffpshader = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_device*)* @atifs_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atifs_free(%struct.wined3d_device* %0) #0 {
  %2 = alloca %struct.wined3d_device*, align 8
  %3 = alloca %struct.atifs_private_data*, align 8
  store %struct.wined3d_device* %0, %struct.wined3d_device** %2, align 8
  %4 = load %struct.wined3d_device*, %struct.wined3d_device** %2, align 8
  %5 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %4, i32 0, i32 0
  %6 = load %struct.atifs_private_data*, %struct.atifs_private_data** %5, align 8
  store %struct.atifs_private_data* %6, %struct.atifs_private_data** %3, align 8
  %7 = load %struct.atifs_private_data*, %struct.atifs_private_data** %3, align 8
  %8 = getelementptr inbounds %struct.atifs_private_data, %struct.atifs_private_data* %7, i32 0, i32 0
  %9 = load i32, i32* @atifs_free_ffpshader, align 4
  %10 = load %struct.wined3d_device*, %struct.wined3d_device** %2, align 8
  %11 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @wine_rb_destroy(i32* %8, i32 %9, i32* %13)
  %15 = load %struct.atifs_private_data*, %struct.atifs_private_data** %3, align 8
  %16 = call i32 @heap_free(%struct.atifs_private_data* %15)
  %17 = load %struct.wined3d_device*, %struct.wined3d_device** %2, align 8
  %18 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %17, i32 0, i32 0
  store %struct.atifs_private_data* null, %struct.atifs_private_data** %18, align 8
  ret void
}

declare dso_local i32 @wine_rb_destroy(i32*, i32, i32*) #1

declare dso_local i32 @heap_free(%struct.atifs_private_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
