; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_atifs_alloc_context_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_atifs_alloc_context_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.atifs_context_private_data* }
%struct.atifs_context_private_data = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_context*)* @atifs_alloc_context_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atifs_alloc_context_data(%struct.wined3d_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca %struct.atifs_context_private_data*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %3, align 8
  %5 = call %struct.atifs_context_private_data* @heap_alloc_zero(i32 4)
  store %struct.atifs_context_private_data* %5, %struct.atifs_context_private_data** %4, align 8
  %6 = icmp ne %struct.atifs_context_private_data* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %2, align 4
  br label %14

9:                                                ; preds = %1
  %10 = load %struct.atifs_context_private_data*, %struct.atifs_context_private_data** %4, align 8
  %11 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %12 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %11, i32 0, i32 0
  store %struct.atifs_context_private_data* %10, %struct.atifs_context_private_data** %12, align 8
  %13 = load i32, i32* @TRUE, align 4
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %9, %7
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

declare dso_local %struct.atifs_context_private_data* @heap_alloc_zero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
