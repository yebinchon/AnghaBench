; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_get_refresh_rate_from_gdi.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_get_refresh_rate_from_gdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@__const.get_refresh_rate_from_gdi.dm = private unnamed_addr constant %struct.TYPE_3__ { i32 8, i32 0 }, align 4
@ENUM_CURRENT_SETTINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*)* @get_refresh_rate_from_gdi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @get_refresh_rate_from_gdi(i32* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  %6 = bitcast %struct.TYPE_3__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_3__* @__const.get_refresh_rate_from_gdi.dm to i8*), i64 8, i1 false)
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @ENUM_CURRENT_SETTINGS, align 4
  %9 = call i32 @EnumDisplaySettingsW(i32* %7, i32 %8, %struct.TYPE_3__* %4)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store double 0.000000e+00, double* %2, align 8
  br label %29

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store double 0.000000e+00, double* %2, align 8
  br label %29

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sitofp i32 %19 to double
  store double %20, double* %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %27 [
    i32 23, label %23
    i32 29, label %23
    i32 47, label %23
    i32 59, label %23
    i32 71, label %23
    i32 89, label %23
    i32 95, label %23
    i32 119, label %23
    i32 143, label %23
  ]

23:                                               ; preds = %17, %17, %17, %17, %17, %17, %17, %17, %17
  %24 = load double, double* %5, align 8
  %25 = fadd double %24, 1.000000e+00
  %26 = fdiv double %25, 1.001000e+00
  store double %26, double* %5, align 8
  br label %27

27:                                               ; preds = %23, %17
  %28 = load double, double* %5, align 8
  store double %28, double* %2, align 8
  br label %29

29:                                               ; preds = %27, %16, %11
  %30 = load double, double* %2, align 8
  ret double %30
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @EnumDisplaySettingsW(i32*, i32, %struct.TYPE_3__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
