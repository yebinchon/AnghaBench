; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_convert_yuy2_x8r8g8b8.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_convert_yuy2_x8r8g8b8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"Converting %ux%u pixels, pitches %u %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i32, i32, i32, i32)* @convert_yuy2_x8r8g8b8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_yuy2_x8r8g8b8(i64* %0, i64* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64*, align 8
  %22 = alloca i32*, align 8
  store i64* %0, i64** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25, i32 %26)
  store i32 0, i32* %20, align 4
  br label %28

28:                                               ; preds = %114, %6
  %29 = load i32, i32* %20, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %117

32:                                               ; preds = %28
  %33 = load i64*, i64** %7, align 8
  %34 = load i32, i32* %20, align 4
  %35 = load i32, i32* %9, align 4
  %36 = mul i32 %34, %35
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %33, i64 %37
  store i64* %38, i64** %21, align 8
  %39 = load i64*, i64** %8, align 8
  %40 = load i32, i32* %20, align 4
  %41 = load i32, i32* %10, align 4
  %42 = mul i32 %40, %41
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %39, i64 %43
  %45 = bitcast i64* %44 to i32*
  store i32* %45, i32** %22, align 8
  store i32 0, i32* %19, align 4
  br label %46

46:                                               ; preds = %110, %32
  %47 = load i32, i32* %19, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %113

50:                                               ; preds = %46
  %51 = load i32, i32* %19, align 4
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %77, label %54

54:                                               ; preds = %50
  %55 = load i64*, i64** %21, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = sub nsw i32 %58, 128
  store i32 %59, i32* %14, align 4
  %60 = load i64*, i64** %21, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 3
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = sub nsw i32 %63, 128
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = mul nsw i32 409, %65
  %67 = add nsw i32 %66, 128
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %14, align 4
  %69 = mul nsw i32 -100, %68
  %70 = load i32, i32* %15, align 4
  %71 = mul nsw i32 208, %70
  %72 = sub nsw i32 %69, %71
  %73 = add nsw i32 %72, 128
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %14, align 4
  %75 = mul nsw i32 516, %74
  %76 = add nsw i32 %75, 128
  store i32 %76, i32* %18, align 4
  br label %77

77:                                               ; preds = %54, %50
  %78 = load i64*, i64** %21, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = sub nsw i32 %81, 16
  %83 = mul nsw i32 298, %82
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %84, %85
  %87 = ashr i32 %86, 8
  %88 = call i32 @cliptobyte(i32 %87)
  %89 = shl i32 %88, 16
  %90 = or i32 -16777216, %89
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %17, align 4
  %93 = add nsw i32 %91, %92
  %94 = ashr i32 %93, 8
  %95 = call i32 @cliptobyte(i32 %94)
  %96 = shl i32 %95, 8
  %97 = or i32 %90, %96
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %18, align 4
  %100 = add nsw i32 %98, %99
  %101 = ashr i32 %100, 8
  %102 = call i32 @cliptobyte(i32 %101)
  %103 = or i32 %97, %102
  %104 = load i32*, i32** %22, align 8
  %105 = load i32, i32* %19, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %103, i32* %107, align 4
  %108 = load i64*, i64** %21, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 2
  store i64* %109, i64** %21, align 8
  br label %110

110:                                              ; preds = %77
  %111 = load i32, i32* %19, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %19, align 4
  br label %46

113:                                              ; preds = %46
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %20, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %20, align 4
  br label %28

117:                                              ; preds = %28
  ret void
}

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @cliptobyte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
