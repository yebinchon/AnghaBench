; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_dxtn.c_dxt3_to_x4r4g4b4.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_dxtn.c_dxt3_to_x4r4g4b4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"Converting %ux%u pixels, pitches %u %u\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32, i32, i32, i32, i64)* @dxt3_to_x4r4g4b4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dxt3_to_x4r4g4b4(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %21, i32 %22)
  store i32 0, i32* %16, align 4
  br label %24

24:                                               ; preds = %101, %7
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %104

28:                                               ; preds = %24
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %11, align 4
  %32 = mul i32 %30, %31
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  store i32* %34, i32** %18, align 8
  store i32 0, i32* %15, align 4
  br label %35

35:                                               ; preds = %97, %28
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %100

39:                                               ; preds = %35
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %16, align 4
  %42 = udiv i32 %41, 4
  %43 = load i32, i32* %10, align 4
  %44 = mul i32 %42, %43
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %40, i64 %45
  %47 = load i32, i32* %15, align 4
  %48 = udiv i32 %47, 4
  %49 = mul i32 %48, 16
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32, i32* %15, align 4
  %53 = and i32 %52, 3
  %54 = load i32, i32* %16, align 4
  %55 = and i32 %54, 3
  %56 = call i32 @pfetch_2d_texel_rgba_dxt3(i32 0, i32* %51, i32 %53, i32 %55, i32* %17)
  %57 = load i64, i64* %14, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %39
  %60 = load i32, i32* %17, align 4
  %61 = and i32 %60, -268435456
  %62 = lshr i32 %61, 16
  %63 = load i32, i32* %17, align 4
  %64 = and i32 %63, 15728640
  %65 = lshr i32 %64, 20
  %66 = or i32 %62, %65
  %67 = load i32, i32* %17, align 4
  %68 = and i32 %67, 61440
  %69 = lshr i32 %68, 8
  %70 = or i32 %66, %69
  %71 = load i32, i32* %17, align 4
  %72 = and i32 %71, 240
  %73 = shl i32 %72, 4
  %74 = or i32 %70, %73
  %75 = load i32*, i32** %18, align 8
  %76 = load i32, i32* %15, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %74, i32* %78, align 4
  br label %96

79:                                               ; preds = %39
  %80 = load i32, i32* %17, align 4
  %81 = and i32 %80, 15728640
  %82 = lshr i32 %81, 20
  %83 = or i32 61440, %82
  %84 = load i32, i32* %17, align 4
  %85 = and i32 %84, 61440
  %86 = lshr i32 %85, 8
  %87 = or i32 %83, %86
  %88 = load i32, i32* %17, align 4
  %89 = and i32 %88, 240
  %90 = shl i32 %89, 4
  %91 = or i32 %87, %90
  %92 = load i32*, i32** %18, align 8
  %93 = load i32, i32* %15, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %91, i32* %95, align 4
  br label %96

96:                                               ; preds = %79, %59
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %15, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %15, align 4
  br label %35

100:                                              ; preds = %35
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %16, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %16, align 4
  br label %24

104:                                              ; preds = %24
  %105 = load i64, i64* @TRUE, align 8
  ret i64 %105
}

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pfetch_2d_texel_rgba_dxt3(i32, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
