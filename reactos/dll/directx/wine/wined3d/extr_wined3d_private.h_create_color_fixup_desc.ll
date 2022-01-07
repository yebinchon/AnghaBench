; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_create_color_fixup_desc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_create_color_fixup_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.color_fixup_desc = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.color_fixup_desc*, i32, i32, i32, i32, i32, i32, i32, i32)* @create_color_fixup_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_color_fixup_desc(%struct.color_fixup_desc* noalias sret %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 %8, i32* %17, align 4
  %18 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 0
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 1
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 2
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 3
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 4
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 5
  %29 = load i32, i32* %15, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 6
  %31 = load i32, i32* %16, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %0, i32 0, i32 7
  %33 = load i32, i32* %17, align 4
  store i32 %33, i32* %32, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
