; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_d3d9_sampler.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_d3d9_sampler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BWRITERSTT_UNKNOWN = common dso_local global i64 0, align 8
@D3DSTT_UNKNOWN = common dso_local global i64 0, align 8
@BWRITERSTT_1D = common dso_local global i64 0, align 8
@D3DSTT_1D = common dso_local global i64 0, align 8
@BWRITERSTT_2D = common dso_local global i64 0, align 8
@D3DSTT_2D = common dso_local global i64 0, align 8
@BWRITERSTT_CUBE = common dso_local global i64 0, align 8
@D3DSTT_CUBE = common dso_local global i64 0, align 8
@BWRITERSTT_VOLUME = common dso_local global i64 0, align 8
@D3DSTT_VOLUME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"Unexpected BWRITERSAMPLER_TEXTURE_TYPE type %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @d3d9_sampler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @d3d9_sampler(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @BWRITERSTT_UNKNOWN, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i64, i64* @D3DSTT_UNKNOWN, align 8
  store i64 %8, i64* %2, align 8
  br label %36

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @BWRITERSTT_1D, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i64, i64* @D3DSTT_1D, align 8
  store i64 %14, i64* %2, align 8
  br label %36

15:                                               ; preds = %9
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @BWRITERSTT_2D, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i64, i64* @D3DSTT_2D, align 8
  store i64 %20, i64* %2, align 8
  br label %36

21:                                               ; preds = %15
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @BWRITERSTT_CUBE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i64, i64* @D3DSTT_CUBE, align 8
  store i64 %26, i64* %2, align 8
  br label %36

27:                                               ; preds = %21
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @BWRITERSTT_VOLUME, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* @D3DSTT_VOLUME, align 8
  store i64 %32, i64* %2, align 8
  br label %36

33:                                               ; preds = %27
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @FIXME(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %34)
  store i64 0, i64* %2, align 8
  br label %36

36:                                               ; preds = %33, %31, %25, %19, %13, %7
  %37 = load i64, i64* %2, align 8
  ret i64 %37
}

declare dso_local i32 @FIXME(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
