; ModuleID = '/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_scissor.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_scissor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rawfb_context = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rawfb_context*, float, float, float, float)* @nk_rawfb_scissor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_rawfb_scissor(%struct.rawfb_context* %0, float %1, float %2, float %3, float %4) #0 {
  %6 = alloca %struct.rawfb_context*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store %struct.rawfb_context* %0, %struct.rawfb_context** %6, align 8
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %11 = load float, float* %7, align 4
  %12 = call i32 @MAX(float %11, i32 0)
  %13 = load %struct.rawfb_context*, %struct.rawfb_context** %6, align 8
  %14 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @MIN(i32 %12, i32 %16)
  %18 = load %struct.rawfb_context*, %struct.rawfb_context** %6, align 8
  %19 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  store i8* %17, i8** %20, align 8
  %21 = load float, float* %8, align 4
  %22 = call i32 @MAX(float %21, i32 0)
  %23 = load %struct.rawfb_context*, %struct.rawfb_context** %6, align 8
  %24 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @MIN(i32 %22, i32 %26)
  %28 = load %struct.rawfb_context*, %struct.rawfb_context** %6, align 8
  %29 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i8* %27, i8** %30, align 8
  %31 = load float, float* %9, align 4
  %32 = load float, float* %7, align 4
  %33 = fadd float %31, %32
  %34 = call i32 @MAX(float %33, i32 0)
  %35 = load %struct.rawfb_context*, %struct.rawfb_context** %6, align 8
  %36 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @MIN(i32 %34, i32 %38)
  %40 = load %struct.rawfb_context*, %struct.rawfb_context** %6, align 8
  %41 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i8* %39, i8** %42, align 8
  %43 = load float, float* %10, align 4
  %44 = load float, float* %8, align 4
  %45 = fadd float %43, %44
  %46 = call i32 @MAX(float %45, i32 0)
  %47 = load %struct.rawfb_context*, %struct.rawfb_context** %6, align 8
  %48 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i8* @MIN(i32 %46, i32 %50)
  %52 = load %struct.rawfb_context*, %struct.rawfb_context** %6, align 8
  %53 = getelementptr inbounds %struct.rawfb_context, %struct.rawfb_context* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  ret void
}

declare dso_local i8* @MIN(i32, i32) #1

declare dso_local i32 @MAX(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
