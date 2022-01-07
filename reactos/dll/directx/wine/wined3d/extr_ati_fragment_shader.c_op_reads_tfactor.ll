; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_op_reads_tfactor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_op_reads_tfactor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.texture_stage_op = type { i32, i32, i32, i32, i32, i32, i64, i64 }

@WINED3DTA_SELECTMASK = common dso_local global i32 0, align 4
@WINED3DTA_TFACTOR = common dso_local global i32 0, align 4
@WINED3D_TOP_BLEND_FACTOR_ALPHA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.texture_stage_op*)* @op_reads_tfactor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_reads_tfactor(%struct.texture_stage_op* %0) #0 {
  %2 = alloca %struct.texture_stage_op*, align 8
  store %struct.texture_stage_op* %0, %struct.texture_stage_op** %2, align 8
  %3 = load %struct.texture_stage_op*, %struct.texture_stage_op** %2, align 8
  %4 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @WINED3DTA_SELECTMASK, align 4
  %7 = and i32 %5, %6
  %8 = load i32, i32* @WINED3DTA_TFACTOR, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %62, label %10

10:                                               ; preds = %1
  %11 = load %struct.texture_stage_op*, %struct.texture_stage_op** %2, align 8
  %12 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @WINED3DTA_SELECTMASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @WINED3DTA_TFACTOR, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %62, label %18

18:                                               ; preds = %10
  %19 = load %struct.texture_stage_op*, %struct.texture_stage_op** %2, align 8
  %20 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @WINED3DTA_SELECTMASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @WINED3DTA_TFACTOR, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %62, label %26

26:                                               ; preds = %18
  %27 = load %struct.texture_stage_op*, %struct.texture_stage_op** %2, align 8
  %28 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @WINED3DTA_SELECTMASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @WINED3DTA_TFACTOR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %62, label %34

34:                                               ; preds = %26
  %35 = load %struct.texture_stage_op*, %struct.texture_stage_op** %2, align 8
  %36 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @WINED3DTA_SELECTMASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @WINED3DTA_TFACTOR, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %62, label %42

42:                                               ; preds = %34
  %43 = load %struct.texture_stage_op*, %struct.texture_stage_op** %2, align 8
  %44 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @WINED3DTA_SELECTMASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @WINED3DTA_TFACTOR, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %62, label %50

50:                                               ; preds = %42
  %51 = load %struct.texture_stage_op*, %struct.texture_stage_op** %2, align 8
  %52 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @WINED3D_TOP_BLEND_FACTOR_ALPHA, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.texture_stage_op*, %struct.texture_stage_op** %2, align 8
  %58 = getelementptr inbounds %struct.texture_stage_op, %struct.texture_stage_op* %57, i32 0, i32 7
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @WINED3D_TOP_BLEND_FACTOR_ALPHA, align 8
  %61 = icmp eq i64 %59, %60
  br label %62

62:                                               ; preds = %56, %50, %42, %34, %26, %18, %10, %1
  %63 = phi i1 [ true, %50 ], [ true, %42 ], [ true, %34 ], [ true, %26 ], [ true, %18 ], [ true, %10 ], [ true, %1 ], [ %61, %56 ]
  %64 = zext i1 %63 to i32
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
