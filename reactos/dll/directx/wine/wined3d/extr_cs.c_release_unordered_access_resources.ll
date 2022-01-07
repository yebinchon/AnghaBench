; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_release_unordered_access_resources.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_release_unordered_access_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.wined3d_unordered_access_view = type { i32 }

@MAX_UNORDERED_ACCESS_VIEWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader*, %struct.wined3d_unordered_access_view**)* @release_unordered_access_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_unordered_access_resources(%struct.wined3d_shader* %0, %struct.wined3d_unordered_access_view** %1) #0 {
  %3 = alloca %struct.wined3d_shader*, align 8
  %4 = alloca %struct.wined3d_unordered_access_view**, align 8
  %5 = alloca i32, align 4
  store %struct.wined3d_shader* %0, %struct.wined3d_shader** %3, align 8
  store %struct.wined3d_unordered_access_view** %1, %struct.wined3d_unordered_access_view*** %4, align 8
  %6 = load %struct.wined3d_shader*, %struct.wined3d_shader** %3, align 8
  %7 = icmp ne %struct.wined3d_shader* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %46

9:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %43, %9
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MAX_UNORDERED_ACCESS_VIEWS, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %10
  %15 = load %struct.wined3d_shader*, %struct.wined3d_shader** %3, align 8
  %16 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %14
  br label %43

26:                                               ; preds = %14
  %27 = load %struct.wined3d_unordered_access_view**, %struct.wined3d_unordered_access_view*** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.wined3d_unordered_access_view*, %struct.wined3d_unordered_access_view** %27, i64 %29
  %31 = load %struct.wined3d_unordered_access_view*, %struct.wined3d_unordered_access_view** %30, align 8
  %32 = icmp ne %struct.wined3d_unordered_access_view* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %43

34:                                               ; preds = %26
  %35 = load %struct.wined3d_unordered_access_view**, %struct.wined3d_unordered_access_view*** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.wined3d_unordered_access_view*, %struct.wined3d_unordered_access_view** %35, i64 %37
  %39 = load %struct.wined3d_unordered_access_view*, %struct.wined3d_unordered_access_view** %38, align 8
  %40 = getelementptr inbounds %struct.wined3d_unordered_access_view, %struct.wined3d_unordered_access_view* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @wined3d_resource_release(i32 %41)
  br label %43

43:                                               ; preds = %34, %33, %25
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %10

46:                                               ; preds = %8, %10
  ret void
}

declare dso_local i32 @wined3d_resource_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
