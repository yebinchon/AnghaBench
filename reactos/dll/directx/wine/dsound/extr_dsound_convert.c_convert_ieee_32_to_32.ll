; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_dsound_convert.c_convert_ieee_32_to_32.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_dsound_convert.c_convert_ieee_32_to_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i64, i32, i32)* @convert_ieee_32_to_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_ieee_32_to_32(i8* %0, i8* %1, i32 %2, i32 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  br label %18

18:                                               ; preds = %44, %7
  %19 = load i64, i64* %12, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %18
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast i8* %22 to float*
  %24 = load float, float* %23, align 4
  %25 = call float @le32(float %24)
  store float %25, float* %15, align 4
  %26 = load float, float* %15, align 4
  store float %26, float* %16, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = bitcast i8* %27 to float*
  store float* %28, float** %17, align 8
  %29 = load float, float* %16, align 4
  %30 = fcmp olt float %29, -1.000000e+00
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load float*, float** %17, align 8
  store float 0xC1E0000000000000, float* %32, align 4
  br label %44

33:                                               ; preds = %21
  %34 = load float, float* %16, align 4
  %35 = fcmp ogt float %34, 1.000000e+00
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load float*, float** %17, align 8
  store float 0x41E0000000000000, float* %37, align 4
  br label %43

38:                                               ; preds = %33
  %39 = load float, float* %16, align 4
  %40 = fmul float %39, 0x41E0000000000000
  %41 = fsub float %40, 5.000000e-01
  %42 = load float*, float** %17, align 8
  store float %41, float* %42, align 4
  br label %43

43:                                               ; preds = %38, %36
  br label %44

44:                                               ; preds = %43, %31
  %45 = load float*, float** %17, align 8
  %46 = load float, float* %45, align 4
  %47 = call float @le32(float %46)
  %48 = load float*, float** %17, align 8
  store float %47, float* %48, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8* %52, i8** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @src_advance(i8** %8, i32 %53, i64* %12, i32* %13, i32 %54)
  br label %18

56:                                               ; preds = %18
  ret void
}

declare dso_local float @le32(float) #1

declare dso_local i32 @src_advance(i8**, i32, i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
