; ModuleID = '/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_cuda.c_mapper_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_cuda.c_mapper_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { i32*, i32, %struct.TYPE_3__*, %struct.cuda_mapper_priv* }
%struct.TYPE_3__ = type { %struct.cuda_hw_priv* }
%struct.cuda_hw_priv = type { i32 (%struct.ra_hwdec_mapper*, i32)*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32*)*, i32 (i32)* }
%struct.cuda_mapper_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_hwdec_mapper*)* @mapper_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mapper_uninit(%struct.ra_hwdec_mapper* %0) #0 {
  %2 = alloca %struct.ra_hwdec_mapper*, align 8
  %3 = alloca %struct.cuda_mapper_priv*, align 8
  %4 = alloca %struct.cuda_hw_priv*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %2, align 8
  %8 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %9 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %8, i32 0, i32 3
  %10 = load %struct.cuda_mapper_priv*, %struct.cuda_mapper_priv** %9, align 8
  store %struct.cuda_mapper_priv* %10, %struct.cuda_mapper_priv** %3, align 8
  %11 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %12 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %14, align 8
  store %struct.cuda_hw_priv* %15, %struct.cuda_hw_priv** %4, align 8
  %16 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %4, align 8
  %17 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %5, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32 (i32)*, i32 (i32)** %20, align 8
  %22 = load %struct.cuda_mapper_priv*, %struct.cuda_mapper_priv** %3, align 8
  %23 = getelementptr inbounds %struct.cuda_mapper_priv, %struct.cuda_mapper_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 %21(i32 %24)
  %26 = call i32 @CHECK_CU(i32 %25)
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %47, %1
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  %31 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %4, align 8
  %32 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %31, i32 0, i32 0
  %33 = load i32 (%struct.ra_hwdec_mapper*, i32)*, i32 (%struct.ra_hwdec_mapper*, i32)** %32, align 8
  %34 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 %33(%struct.ra_hwdec_mapper* %34, i32 %35)
  %37 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %38 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %41 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call i32 @ra_tex_free(i32 %39, i32* %45)
  br label %47

47:                                               ; preds = %30
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %27

50:                                               ; preds = %27
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32 (i32*)*, i32 (i32*)** %52, align 8
  %54 = call i32 %53(i32* %6)
  %55 = call i32 @CHECK_CU(i32 %54)
  ret void
}

declare dso_local i32 @CHECK_CU(i32) #1

declare dso_local i32 @ra_tex_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
