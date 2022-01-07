; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_surface_load_location.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_surface_load_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_surface = type { i32 }
%struct.wined3d_context = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"surface %p, location %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Don't know how to handle location %#x.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @surface_load_location(%struct.wined3d_surface* %0, %struct.wined3d_context* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wined3d_surface*, align 8
  %6 = alloca %struct.wined3d_context*, align 8
  %7 = alloca i32, align 4
  store %struct.wined3d_surface* %0, %struct.wined3d_surface** %5, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.wined3d_surface*, %struct.wined3d_surface** %5, align 8
  %9 = load i32, i32* %7, align 4
  %10 = call i32 @wined3d_debug_location(i32 %9)
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.wined3d_surface* %8, i32 %10)
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %34 [
    i32 128, label %13
    i32 131, label %13
    i32 135, label %13
    i32 134, label %18
    i32 132, label %22
    i32 133, label %22
    i32 130, label %27
    i32 129, label %27
  ]

13:                                               ; preds = %3, %3, %3
  %14 = load %struct.wined3d_surface*, %struct.wined3d_surface** %5, align 8
  %15 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @surface_load_sysmem(%struct.wined3d_surface* %14, %struct.wined3d_context* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  br label %38

18:                                               ; preds = %3
  %19 = load %struct.wined3d_surface*, %struct.wined3d_surface** %5, align 8
  %20 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %21 = call i32 @surface_load_drawable(%struct.wined3d_surface* %19, %struct.wined3d_context* %20)
  store i32 %21, i32* %4, align 4
  br label %38

22:                                               ; preds = %3, %3
  %23 = load %struct.wined3d_surface*, %struct.wined3d_surface** %5, align 8
  %24 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @surface_load_renderbuffer(%struct.wined3d_surface* %23, %struct.wined3d_context* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %38

27:                                               ; preds = %3, %3
  %28 = load %struct.wined3d_surface*, %struct.wined3d_surface** %5, align 8
  %29 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 129
  %32 = zext i1 %31 to i32
  %33 = call i32 @surface_load_texture(%struct.wined3d_surface* %28, %struct.wined3d_context* %29, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %38

34:                                               ; preds = %3
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %27, %22, %18, %13
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @TRACE(i8*, %struct.wined3d_surface*, i32) #1

declare dso_local i32 @wined3d_debug_location(i32) #1

declare dso_local i32 @surface_load_sysmem(%struct.wined3d_surface*, %struct.wined3d_context*, i32) #1

declare dso_local i32 @surface_load_drawable(%struct.wined3d_surface*, %struct.wined3d_context*) #1

declare dso_local i32 @surface_load_renderbuffer(%struct.wined3d_surface*, %struct.wined3d_context*, i32) #1

declare dso_local i32 @surface_load_texture(%struct.wined3d_surface*, %struct.wined3d_context*, i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
