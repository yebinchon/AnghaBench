; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_shader.c_add_modifier.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_shader.c_add_modifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D3DSP_DSTMOD_MASK = common dso_local global i32 0, align 4
@D3DSPDM_SATURATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_sat\00", align 1
@D3DSPDM_PARTIALPRECISION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"_pp\00", align 1
@D3DSPDM_MSAMPCENTROID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"_centroid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @add_modifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_modifier(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @D3DSP_DSTMOD_MASK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @D3DSPDM_SATURATE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = load i8*, i8** %5, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %5, align 8
  br label %21

21:                                               ; preds = %15, %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @D3DSPDM_PARTIALPRECISION, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @sprintf(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i8*, i8** %5, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %5, align 8
  br label %32

32:                                               ; preds = %26, %21
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @D3DSPDM_MSAMPCENTROID, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i8*, i8** %5, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %5, align 8
  br label %43

43:                                               ; preds = %37, %32
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = trunc i64 %48 to i32
  ret i32 %49
}

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
