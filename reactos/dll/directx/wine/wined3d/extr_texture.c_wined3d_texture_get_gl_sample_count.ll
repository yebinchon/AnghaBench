; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_get_gl_sample_count.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_get_gl_sample_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, %struct.wined3d_format* }
%struct.wined3d_format = type { i32 }

@WINED3D_MULTISAMPLE_NON_MASKABLE = common dso_local global i64 0, align 8
@CHAR_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_texture*)* @wined3d_texture_get_gl_sample_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wined3d_texture_get_gl_sample_count(%struct.wined3d_texture* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wined3d_texture*, align 8
  %4 = alloca %struct.wined3d_format*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %3, align 8
  %7 = load %struct.wined3d_texture*, %struct.wined3d_texture** %3, align 8
  %8 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load %struct.wined3d_format*, %struct.wined3d_format** %9, align 8
  store %struct.wined3d_format* %10, %struct.wined3d_format** %4, align 8
  %11 = load %struct.wined3d_texture*, %struct.wined3d_texture** %3, align 8
  %12 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WINED3D_MULTISAMPLE_NON_MASKABLE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %50

17:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %44, %17
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = load i32, i32* @CHAR_BIT, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 4, %22
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %18
  %26 = load %struct.wined3d_format*, %struct.wined3d_format** %4, align 8
  %27 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = shl i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = load %struct.wined3d_texture*, %struct.wined3d_texture** %3, align 8
  %35 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = icmp eq i32 %37, %38
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %47

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %25
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %18

47:                                               ; preds = %41, %18
  %48 = load i32, i32* %5, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %2, align 4
  br label %56

50:                                               ; preds = %1
  %51 = load %struct.wined3d_texture*, %struct.wined3d_texture** %3, align 8
  %52 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
