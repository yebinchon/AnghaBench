; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_weld_dec3n.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_weld_dec3n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dec3n = type { i64, i64, i64, i64 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @weld_dec3n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @weld_dec3n(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.dec3n, align 8
  %12 = alloca %struct.dec3n, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 511, i32* %8, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %9, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %23, align 4
  call void @dword_to_dec3n(%struct.dec3n* sret %11, i32 %24)
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %25, align 4
  call void @dword_to_dec3n(%struct.dec3n* sret %12, i32 %26)
  %27 = load i32, i32* %7, align 4
  %28 = mul nsw i32 %27, 511
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %13, align 8
  %30 = getelementptr inbounds %struct.dec3n, %struct.dec3n* %11, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.dec3n, %struct.dec3n* %12, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %31, %33
  %35 = call i64 @abs(i64 %34)
  store i64 %35, i64* %14, align 8
  %36 = getelementptr inbounds %struct.dec3n, %struct.dec3n* %11, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.dec3n, %struct.dec3n* %12, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %37, %39
  %41 = call i64 @abs(i64 %40)
  store i64 %41, i64* %15, align 8
  %42 = getelementptr inbounds %struct.dec3n, %struct.dec3n* %11, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.dec3n, %struct.dec3n* %12, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %43, %45
  %47 = call i64 @abs(i64 %46)
  store i64 %47, i64* %16, align 8
  %48 = getelementptr inbounds %struct.dec3n, %struct.dec3n* %11, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.dec3n, %struct.dec3n* %12, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %49, %51
  %53 = call i64 @abs(i64 %52)
  store i64 %53, i64* %17, align 8
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* %15, align 8
  %56 = call i64 @max(i64 %54, i64 %55)
  store i64 %56, i64* %18, align 8
  %57 = load i64, i64* %16, align 8
  %58 = load i64, i64* %18, align 8
  %59 = call i64 @max(i64 %57, i64 %58)
  store i64 %59, i64* %18, align 8
  %60 = load i64, i64* %17, align 8
  %61 = load i64, i64* %18, align 8
  %62 = call i64 @max(i64 %60, i64 %61)
  store i64 %62, i64* %18, align 8
  %63 = load i64, i64* %18, align 8
  %64 = load i64, i64* %13, align 8
  %65 = icmp sle i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %3
  %67 = load i8*, i8** %5, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @memcpy(i8* %67, i8* %68, i32 4)
  %70 = load i32, i32* @TRUE, align 4
  store i32 %70, i32* %4, align 4
  br label %73

71:                                               ; preds = %3
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %66
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local void @dword_to_dec3n(%struct.dec3n* sret, i32) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
