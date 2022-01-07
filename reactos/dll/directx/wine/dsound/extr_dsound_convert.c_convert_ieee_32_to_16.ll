; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_dsound_convert.c_convert_ieee_32_to_16.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_dsound_convert.c_convert_ieee_32_to_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i64, i32, i32)* @convert_ieee_32_to_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_ieee_32_to_16(i8* %0, i8* %1, i32 %2, i32 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
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

18:                                               ; preds = %45, %7
  %19 = load i64, i64* %12, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %18
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast i8* %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32(i32 %24)
  store i32 %25, i32* %15, align 4
  %26 = bitcast i32* %15 to float*
  %27 = load float, float* %26, align 4
  store float %27, float* %16, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = bitcast i8* %28 to float*
  store float* %29, float** %17, align 8
  %30 = load float, float* %16, align 4
  %31 = fcmp olt float %30, -1.000000e+00
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load float*, float** %17, align 8
  store float -3.276800e+04, float* %33, align 4
  br label %45

34:                                               ; preds = %21
  %35 = load float, float* %16, align 4
  %36 = fcmp ogt float %35, 1.000000e+00
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load float*, float** %17, align 8
  store float 3.276700e+04, float* %38, align 4
  br label %44

39:                                               ; preds = %34
  %40 = load float, float* %16, align 4
  %41 = fmul float %40, 3.276750e+04
  %42 = fsub float %41, 5.000000e-01
  %43 = load float*, float** %17, align 8
  store float %42, float* %43, align 4
  br label %44

44:                                               ; preds = %39, %37
  br label %45

45:                                               ; preds = %44, %32
  %46 = load float*, float** %17, align 8
  %47 = load float, float* %46, align 4
  %48 = call float @le16(float %47)
  %49 = load float*, float** %17, align 8
  store float %48, float* %49, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8* %53, i8** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @src_advance(i8** %8, i32 %54, i64* %12, i32* %13, i32 %55)
  br label %18

57:                                               ; preds = %18
  ret void
}

declare dso_local i32 @le32(i32) #1

declare dso_local float @le16(float) #1

declare dso_local i32 @src_advance(i8**, i32, i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
