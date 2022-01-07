; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_error_diffusion.c_mp_find_error_diffusion_kernel.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_error_diffusion.c_mp_find_error_diffusion_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.error_diffusion_kernel = type { i64 }

@mp_error_diffusion_kernels = common dso_local global %struct.error_diffusion_kernel* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.error_diffusion_kernel* @mp_find_error_diffusion_kernel(i8* %0) #0 {
  %2 = alloca %struct.error_diffusion_kernel*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.error_diffusion_kernel*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.error_diffusion_kernel* null, %struct.error_diffusion_kernel** %2, align 8
  br label %29

8:                                                ; preds = %1
  %9 = load %struct.error_diffusion_kernel*, %struct.error_diffusion_kernel** @mp_error_diffusion_kernels, align 8
  store %struct.error_diffusion_kernel* %9, %struct.error_diffusion_kernel** %4, align 8
  br label %10

10:                                               ; preds = %25, %8
  %11 = load %struct.error_diffusion_kernel*, %struct.error_diffusion_kernel** %4, align 8
  %12 = getelementptr inbounds %struct.error_diffusion_kernel, %struct.error_diffusion_kernel* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load %struct.error_diffusion_kernel*, %struct.error_diffusion_kernel** %4, align 8
  %17 = getelementptr inbounds %struct.error_diffusion_kernel, %struct.error_diffusion_kernel* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i64 @strcmp(i64 %18, i8* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load %struct.error_diffusion_kernel*, %struct.error_diffusion_kernel** %4, align 8
  store %struct.error_diffusion_kernel* %23, %struct.error_diffusion_kernel** %2, align 8
  br label %29

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.error_diffusion_kernel*, %struct.error_diffusion_kernel** %4, align 8
  %27 = getelementptr inbounds %struct.error_diffusion_kernel, %struct.error_diffusion_kernel* %26, i32 1
  store %struct.error_diffusion_kernel* %27, %struct.error_diffusion_kernel** %4, align 8
  br label %10

28:                                               ; preds = %10
  store %struct.error_diffusion_kernel* null, %struct.error_diffusion_kernel** %2, align 8
  br label %29

29:                                               ; preds = %28, %22, %7
  %30 = load %struct.error_diffusion_kernel*, %struct.error_diffusion_kernel** %2, align 8
  ret %struct.error_diffusion_kernel* %30
}

declare dso_local i64 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
