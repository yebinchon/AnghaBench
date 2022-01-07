; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_texture_resource_incref.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_texture_resource_incref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_resource = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_resource*)* @texture_resource_incref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @texture_resource_incref(%struct.wined3d_resource* %0) #0 {
  %2 = alloca %struct.wined3d_resource*, align 8
  store %struct.wined3d_resource* %0, %struct.wined3d_resource** %2, align 8
  %3 = load %struct.wined3d_resource*, %struct.wined3d_resource** %2, align 8
  %4 = call i32 @texture_from_resource(%struct.wined3d_resource* %3)
  %5 = call i32 @wined3d_texture_incref(i32 %4)
  ret i32 %5
}

declare dso_local i32 @wined3d_texture_incref(i32) #1

declare dso_local i32 @texture_from_resource(%struct.wined3d_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
