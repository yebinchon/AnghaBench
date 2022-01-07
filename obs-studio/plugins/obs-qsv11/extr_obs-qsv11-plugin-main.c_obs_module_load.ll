; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-qsv11/extr_obs-qsv11-plugin-main.c_obs_module_load.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-qsv11/extr_obs-qsv11-plugin-main.c_obs_module_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@MFX_IMPL_HARDWARE_ANY = common dso_local global i32 0, align 4
@MFX_IMPL_VIA_D3D11 = common dso_local global i32 0, align 4
@__const.obs_module_load.ver = private unnamed_addr constant %struct.TYPE_5__ { %struct.TYPE_4__ { i32 0, i32 1 } }, align 4
@MFX_ERR_NONE = common dso_local global i64 0, align 8
@obs_qsv_encoder = common dso_local global i32 0, align 4
@MFX_IMPL_VIA_D3D9 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @obs_module_load() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = load i32, i32* @MFX_IMPL_HARDWARE_ANY, align 4
  %6 = load i32, i32* @MFX_IMPL_VIA_D3D11, align 4
  %7 = or i32 %5, %6
  store i32 %7, i32* %1, align 4
  %8 = bitcast %struct.TYPE_5__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_5__* @__const.obs_module_load.ver to i8*), i64 8, i1 false)
  %9 = load i32, i32* %1, align 4
  %10 = call i64 @MFXInit(i32 %9, %struct.TYPE_5__* %2, i32* %3)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @MFX_ERR_NONE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %0
  %15 = call i32 @obs_register_encoder(i32* @obs_qsv_encoder)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @MFXClose(i32 %16)
  br label %32

18:                                               ; preds = %0
  %19 = load i32, i32* @MFX_IMPL_HARDWARE_ANY, align 4
  %20 = load i32, i32* @MFX_IMPL_VIA_D3D9, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = call i64 @MFXInit(i32 %22, %struct.TYPE_5__* %2, i32* %3)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @MFX_ERR_NONE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = call i32 @obs_register_encoder(i32* @obs_qsv_encoder)
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @MFXClose(i32 %29)
  br label %31

31:                                               ; preds = %27, %18
  br label %32

32:                                               ; preds = %31, %14
  ret i32 1
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @MFXInit(i32, %struct.TYPE_5__*, i32*) #2

declare dso_local i32 @obs_register_encoder(i32*) #2

declare dso_local i32 @MFXClose(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
