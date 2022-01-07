; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_weld_float16_4.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_weld_float16_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@NUM_ELEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @weld_float16_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @weld_float16_4(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca [4 x i64], align 16
  %16 = alloca [4 x i64], align 16
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %8, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %9, align 8
  %21 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 0
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @D3DXFloat16To32Array(i64* %21, i32* %22, i32 4)
  %24 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 0
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @D3DXFloat16To32Array(i64* %24, i32* %25, i32 4)
  %27 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 0
  %28 = load i64, i64* %27, align 16
  %29 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 0
  %30 = load i64, i64* %29, align 16
  %31 = sub nsw i64 %28, %30
  %32 = call i64 @fabsf(i64 %31)
  store i64 %32, i64* %10, align 8
  %33 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %34, %36
  %38 = call i64 @fabsf(i64 %37)
  store i64 %38, i64* %11, align 8
  %39 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 2
  %40 = load i64, i64* %39, align 16
  %41 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 2
  %42 = load i64, i64* %41, align 16
  %43 = sub nsw i64 %40, %42
  %44 = call i64 @fabsf(i64 %43)
  store i64 %44, i64* %12, align 8
  %45 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 3
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 3
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %46, %48
  %50 = call i64 @fabsf(i64 %49)
  store i64 %50, i64* %13, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i64 @max(i64 %51, i64 %52)
  store i64 %53, i64* %14, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %14, align 8
  %56 = call i64 @max(i64 %54, i64 %55)
  store i64 %56, i64* %14, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %14, align 8
  %59 = call i64 @max(i64 %57, i64 %58)
  store i64 %59, i64* %14, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* %7, align 8
  %62 = icmp sle i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %3
  %64 = load i8*, i8** %5, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @memcpy(i8* %64, i8* %65, i32 16)
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* %4, align 4
  br label %70

68:                                               ; preds = %3
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %63
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @D3DXFloat16To32Array(i64*, i32*, i32) #1

declare dso_local i64 @fabsf(i64) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
