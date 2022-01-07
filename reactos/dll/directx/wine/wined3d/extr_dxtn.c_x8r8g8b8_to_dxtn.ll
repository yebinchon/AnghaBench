; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_dxtn.c_x8r8g8b8_to_dxtn.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_dxtn.c_x8r8g8b8_to_dxtn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"Converting %ux%u pixels, pitches %u %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to allocate memory for conversion\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32, i32, i32, i32, i32, i64)* @x8r8g8b8_to_dxtn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @x8r8g8b8_to_dxtn(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i64 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i64 %7, i64* %17, align 8
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = call i32 (...) @GetProcessHeap()
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %14, align 4
  %32 = mul i32 %30, %31
  %33 = zext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = call i32* @HeapAlloc(i32 %29, i32 0, i32 %35)
  store i32* %36, i32** %21, align 8
  %37 = load i32*, i32** %21, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %8
  %40 = call i32 @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i64, i64* @FALSE, align 8
  store i64 %41, i64* %9, align 8
  br label %123

42:                                               ; preds = %8
  store i32 0, i32* %19, align 4
  br label %43

43:                                               ; preds = %108, %42
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %111

47:                                               ; preds = %43
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* %12, align 4
  %51 = mul i32 %49, %50
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  store i32* %53, i32** %22, align 8
  %54 = load i32*, i32** %21, align 8
  %55 = load i32, i32* %19, align 4
  %56 = load i32, i32* %14, align 4
  %57 = mul i32 %55, %56
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  store i32* %59, i32** %23, align 8
  store i32 0, i32* %18, align 4
  br label %60

60:                                               ; preds = %104, %47
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %107

64:                                               ; preds = %60
  %65 = load i32*, i32** %22, align 8
  %66 = load i32, i32* %18, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %20, align 4
  %70 = load i64, i64* %17, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %64
  %73 = load i32, i32* %20, align 4
  %74 = and i32 %73, -16711936
  %75 = load i32, i32* %20, align 4
  %76 = and i32 %75, 255
  %77 = shl i32 %76, 16
  %78 = or i32 %74, %77
  %79 = load i32, i32* %20, align 4
  %80 = and i32 %79, 16711680
  %81 = lshr i32 %80, 16
  %82 = or i32 %78, %81
  %83 = load i32*, i32** %23, align 8
  %84 = load i32, i32* %18, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  br label %103

87:                                               ; preds = %64
  %88 = load i32, i32* %20, align 4
  %89 = and i32 %88, 255
  %90 = shl i32 %89, 16
  %91 = or i32 -16777216, %90
  %92 = load i32, i32* %20, align 4
  %93 = and i32 %92, 65280
  %94 = or i32 %91, %93
  %95 = load i32, i32* %20, align 4
  %96 = and i32 %95, 16711680
  %97 = lshr i32 %96, 16
  %98 = or i32 %94, %97
  %99 = load i32*, i32** %23, align 8
  %100 = load i32, i32* %18, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %98, i32* %102, align 4
  br label %103

103:                                              ; preds = %87, %72
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %18, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %18, align 4
  br label %60

107:                                              ; preds = %60
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %19, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %19, align 4
  br label %43

111:                                              ; preds = %43
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load i32*, i32** %21, align 8
  %115 = load i32, i32* %16, align 4
  %116 = load i32*, i32** %11, align 8
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @ptx_compress_dxtn(i32 4, i32 %112, i32 %113, i32* %114, i32 %115, i32* %116, i32 %117)
  %119 = call i32 (...) @GetProcessHeap()
  %120 = load i32*, i32** %21, align 8
  %121 = call i32 @HeapFree(i32 %119, i32 0, i32* %120)
  %122 = load i64, i64* @TRUE, align 8
  store i64 %122, i64* %9, align 8
  br label %123

123:                                              ; preds = %111, %39
  %124 = load i64, i64* %9, align 8
  ret i64 %124
}

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @ptx_compress_dxtn(i32, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
