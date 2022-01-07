; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-transition.c_mix_child.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-transition.c_mix_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, float*, float*, i64, i64, i32, float (i8*, float)*)* @mix_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mix_child(%struct.TYPE_6__* %0, float* %1, float* %2, i64 %3, i64 %4, i32 %5, float (i8*, float)* %6) #0 {
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca float (i8*, float)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca float, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store float* %1, float** %9, align 8
  store float* %2, float** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store float (i8*, float)* %6, float (i8*, float)** %14, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %15, align 8
  store i64 0, i64* %16, align 8
  br label %22

22:                                               ; preds = %46, %7
  %23 = load i64, i64* %16, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* %16, align 8
  %30 = load i32, i32* %13, align 4
  %31 = call float @get_sample_time(%struct.TYPE_6__* %27, i64 %28, i64 %29, i32 %30)
  store float %31, float* %17, align 4
  %32 = load float*, float** %10, align 8
  %33 = load i64, i64* %16, align 8
  %34 = getelementptr inbounds float, float* %32, i64 %33
  %35 = load float, float* %34, align 4
  %36 = load float (i8*, float)*, float (i8*, float)** %14, align 8
  %37 = load i8*, i8** %15, align 8
  %38 = load float, float* %17, align 4
  %39 = call float %36(i8* %37, float %38)
  %40 = fmul float %35, %39
  %41 = load float*, float** %9, align 8
  %42 = load i64, i64* %16, align 8
  %43 = getelementptr inbounds float, float* %41, i64 %42
  %44 = load float, float* %43, align 4
  %45 = fadd float %44, %40
  store float %45, float* %43, align 4
  br label %46

46:                                               ; preds = %26
  %47 = load i64, i64* %16, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %16, align 8
  br label %22

49:                                               ; preds = %22
  ret void
}

declare dso_local float @get_sample_time(%struct.TYPE_6__*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
