; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_get_rt_size.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_get_rt_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.wined3d_texture* }
%struct.wined3d_texture = type { i32, i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.TYPE_7__*)* @context_get_rt_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_get_rt_size(%struct.wined3d_context* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.wined3d_texture*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %8 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %9 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.wined3d_texture*, %struct.wined3d_texture** %10, align 8
  store %struct.wined3d_texture* %11, %struct.wined3d_texture** %5, align 8
  %12 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %13 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %2
  %17 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %18 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @GetClientRect(i32 %19, %struct.TYPE_8__* %7)
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %22, %24
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %29, %31
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %54

35:                                               ; preds = %2
  %36 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %37 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %41 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = urem i32 %39, %42
  store i32 %43, i32* %6, align 4
  %44 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @wined3d_texture_get_level_width(%struct.wined3d_texture* %44, i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @wined3d_texture_get_level_height(%struct.wined3d_texture* %49, i32 %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %35, %16
  ret void
}

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_8__*) #1

declare dso_local i64 @wined3d_texture_get_level_width(%struct.wined3d_texture*, i32) #1

declare dso_local i64 @wined3d_texture_get_level_height(%struct.wined3d_texture*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
