; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_convert_b5g5r5x1_unorm_b5g5r5a1_unorm_color_key.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_convert_b5g5r5x1_unorm_b5g5r5a1_unorm_color_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_palette = type { i32 }
%struct.wined3d_color_key = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32, i32, %struct.wined3d_palette*, %struct.wined3d_color_key*)* @convert_b5g5r5x1_unorm_b5g5r5a1_unorm_color_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_b5g5r5x1_unorm_b5g5r5a1_unorm_color_key(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, %struct.wined3d_palette* %6, %struct.wined3d_color_key* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.wined3d_palette*, align 8
  %16 = alloca %struct.wined3d_color_key*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.wined3d_palette* %6, %struct.wined3d_palette** %15, align 8
  store %struct.wined3d_color_key* %7, %struct.wined3d_color_key** %16, align 8
  store i32 0, i32* %19, align 4
  br label %22

22:                                               ; preds = %72, %8
  %23 = load i32, i32* %19, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %75

26:                                               ; preds = %22
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %19, align 4
  %30 = mul i32 %28, %29
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  store i32* %32, i32** %17, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %19, align 4
  %36 = mul i32 %34, %35
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  store i32* %38, i32** %20, align 8
  store i32 0, i32* %18, align 4
  br label %39

39:                                               ; preds = %68, %26
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %39
  %44 = load i32*, i32** %17, align 8
  %45 = load i32, i32* %18, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %21, align 4
  %49 = load %struct.wined3d_color_key*, %struct.wined3d_color_key** %16, align 8
  %50 = load i32, i32* %21, align 4
  %51 = call i64 @color_in_range(%struct.wined3d_color_key* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %43
  %54 = load i32, i32* %21, align 4
  %55 = and i32 %54, -32769
  %56 = load i32*, i32** %20, align 8
  %57 = load i32, i32* %18, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %55, i32* %59, align 4
  br label %67

60:                                               ; preds = %43
  %61 = load i32, i32* %21, align 4
  %62 = or i32 %61, 32768
  %63 = load i32*, i32** %20, align 8
  %64 = load i32, i32* %18, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %60, %53
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %18, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %18, align 4
  br label %39

71:                                               ; preds = %39
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %19, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %19, align 4
  br label %22

75:                                               ; preds = %22
  ret void
}

declare dso_local i64 @color_in_range(%struct.wined3d_color_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
