; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_dxtn.c_dxt1_to_x8r8g8b8.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_dxtn.c_dxt1_to_x8r8g8b8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"Converting %ux%u pixels, pitches %u %u\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32, i32, i32, i32, i64)* @dxt1_to_x8r8g8b8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dxt1_to_x8r8g8b8(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6) #0 {
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

24:                                               ; preds = %95, %7
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %98

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

35:                                               ; preds = %91, %28
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %94

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
  %49 = mul i32 %48, 8
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32, i32* %15, align 4
  %53 = and i32 %52, 3
  %54 = load i32, i32* %16, align 4
  %55 = and i32 %54, 3
  %56 = call i32 @pfetch_2d_texel_rgba_dxt1(i32 0, i32* %51, i32 %53, i32 %55, i32* %17)
  %57 = load i64, i64* %14, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %39
  %60 = load i32, i32* %17, align 4
  %61 = and i32 %60, -16711936
  %62 = load i32, i32* %17, align 4
  %63 = and i32 %62, 255
  %64 = shl i32 %63, 16
  %65 = or i32 %61, %64
  %66 = load i32, i32* %17, align 4
  %67 = and i32 %66, 16711680
  %68 = lshr i32 %67, 16
  %69 = or i32 %65, %68
  %70 = load i32*, i32** %18, align 8
  %71 = load i32, i32* %15, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %69, i32* %73, align 4
  br label %90

74:                                               ; preds = %39
  %75 = load i32, i32* %17, align 4
  %76 = and i32 %75, 255
  %77 = shl i32 %76, 16
  %78 = or i32 -16777216, %77
  %79 = load i32, i32* %17, align 4
  %80 = and i32 %79, 65280
  %81 = or i32 %78, %80
  %82 = load i32, i32* %17, align 4
  %83 = and i32 %82, 16711680
  %84 = lshr i32 %83, 16
  %85 = or i32 %81, %84
  %86 = load i32*, i32** %18, align 8
  %87 = load i32, i32* %15, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  br label %90

90:                                               ; preds = %74, %59
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %15, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %15, align 4
  br label %35

94:                                               ; preds = %35
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %16, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %16, align 4
  br label %24

98:                                               ; preds = %24
  %99 = load i64, i64* @TRUE, align 8
  ret i64 %99
}

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pfetch_2d_texel_rgba_dxt1(i32, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
