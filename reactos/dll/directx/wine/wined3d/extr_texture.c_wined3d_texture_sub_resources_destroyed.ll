; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_sub_resources_destroyed.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_sub_resources_destroyed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { i32, i32, %struct.wined3d_texture_sub_resource* }
%struct.wined3d_texture_sub_resource = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*)* }

@.str = private unnamed_addr constant [18 x i8] c"sub-resource %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_texture*)* @wined3d_texture_sub_resources_destroyed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_texture_sub_resources_destroyed(%struct.wined3d_texture* %0) #0 {
  %2 = alloca %struct.wined3d_texture*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_texture_sub_resource*, align 8
  %5 = alloca i32, align 4
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %2, align 8
  %6 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %7 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %10 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = mul i32 %8, %11
  store i32 %12, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %43, %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %13
  %18 = load %struct.wined3d_texture*, %struct.wined3d_texture** %2, align 8
  %19 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %18, i32 0, i32 2
  %20 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %20, i64 %22
  store %struct.wined3d_texture_sub_resource* %23, %struct.wined3d_texture_sub_resource** %4, align 8
  %24 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %4, align 8
  %25 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %17
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %4, align 8
  %32 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (i32*)*, i32 (i32*)** %34, align 8
  %36 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %4, align 8
  %37 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 %35(i32* %38)
  %40 = load %struct.wined3d_texture_sub_resource*, %struct.wined3d_texture_sub_resource** %4, align 8
  %41 = getelementptr inbounds %struct.wined3d_texture_sub_resource, %struct.wined3d_texture_sub_resource* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %28, %17
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %13

46:                                               ; preds = %13
  ret void
}

declare dso_local i32 @TRACE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
