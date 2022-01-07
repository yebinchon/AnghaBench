; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_convert_p8_uint_b8g8r8a8_unorm.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_convert_p8_uint_b8g8r8a8_unorm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_palette = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.wined3d_color_key = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"P8 surface loaded without a palette.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32, i64*, i32, i32, i32, %struct.wined3d_palette*, %struct.wined3d_color_key*)* @convert_p8_uint_b8g8r8a8_unorm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_p8_uint_b8g8r8a8_unorm(i64* %0, i32 %1, i64* %2, i32 %3, i32 %4, i32 %5, %struct.wined3d_palette* %6, %struct.wined3d_color_key* %7) #0 {
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.wined3d_palette*, align 8
  %16 = alloca %struct.wined3d_color_key*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  store i64* %0, i64** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64* %2, i64** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.wined3d_palette* %6, %struct.wined3d_palette** %15, align 8
  store %struct.wined3d_color_key* %7, %struct.wined3d_color_key** %16, align 8
  %22 = load %struct.wined3d_palette*, %struct.wined3d_palette** %15, align 8
  %23 = icmp ne %struct.wined3d_palette* %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %8
  %25 = call i32 @FIXME(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %19, align 4
  br label %26

26:                                               ; preds = %40, %24
  %27 = load i32, i32* %19, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load i64*, i64** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %19, align 4
  %34 = mul i32 %32, %33
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %31, i64 %35
  %37 = load i32, i32* %13, align 4
  %38 = mul i32 %37, 4
  %39 = call i32 @memset(i64* %36, i32 0, i32 %38)
  br label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %19, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %19, align 4
  br label %26

43:                                               ; preds = %26
  br label %110

44:                                               ; preds = %8
  store i32 0, i32* %19, align 4
  br label %45

45:                                               ; preds = %107, %44
  %46 = load i32, i32* %19, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %110

49:                                               ; preds = %45
  %50 = load i64*, i64** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %19, align 4
  %53 = mul i32 %51, %52
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %50, i64 %54
  store i64* %55, i64** %17, align 8
  %56 = load i64*, i64** %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %19, align 4
  %59 = mul i32 %57, %58
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %56, i64 %60
  %62 = bitcast i64* %61 to i32*
  store i32* %62, i32** %20, align 8
  store i32 0, i32* %18, align 4
  br label %63

63:                                               ; preds = %103, %49
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %106

67:                                               ; preds = %63
  %68 = load i64*, i64** %17, align 8
  %69 = load i32, i32* %18, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %21, align 8
  %73 = load %struct.wined3d_palette*, %struct.wined3d_palette** %15, align 8
  %74 = getelementptr inbounds %struct.wined3d_palette, %struct.wined3d_palette* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i64, i64* %21, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 16
  %81 = or i32 -16777216, %80
  %82 = load %struct.wined3d_palette*, %struct.wined3d_palette** %15, align 8
  %83 = getelementptr inbounds %struct.wined3d_palette, %struct.wined3d_palette* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i64, i64* %21, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 8
  %90 = or i32 %81, %89
  %91 = load %struct.wined3d_palette*, %struct.wined3d_palette** %15, align 8
  %92 = getelementptr inbounds %struct.wined3d_palette, %struct.wined3d_palette* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i64, i64* %21, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %90, %97
  %99 = load i32*, i32** %20, align 8
  %100 = load i32, i32* %18, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %98, i32* %102, align 4
  br label %103

103:                                              ; preds = %67
  %104 = load i32, i32* %18, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %18, align 4
  br label %63

106:                                              ; preds = %63
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %19, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %19, align 4
  br label %45

110:                                              ; preds = %43, %45
  ret void
}

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
