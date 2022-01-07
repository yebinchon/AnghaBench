; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_autoconvert.c_mp_autoconvert_set_target_image_params.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_autoconvert.c_mp_autoconvert_set_target_image_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_autoconvert = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.priv* }
%struct.priv = type { i32, i32, i64*, i64*, %struct.mp_image_params }
%struct.mp_image_params = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_autoconvert_set_target_image_params(%struct.mp_autoconvert* %0, %struct.mp_image_params* %1) #0 {
  %3 = alloca %struct.mp_autoconvert*, align 8
  %4 = alloca %struct.mp_image_params*, align 8
  %5 = alloca %struct.priv*, align 8
  store %struct.mp_autoconvert* %0, %struct.mp_autoconvert** %3, align 8
  store %struct.mp_image_params* %1, %struct.mp_image_params** %4, align 8
  %6 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %3, align 8
  %7 = getelementptr inbounds %struct.mp_autoconvert, %struct.mp_autoconvert* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.priv*, %struct.priv** %9, align 8
  store %struct.priv* %10, %struct.priv** %5, align 8
  %11 = load %struct.priv*, %struct.priv** %5, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %2
  %16 = load %struct.priv*, %struct.priv** %5, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 4
  %18 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %19 = call i64 @mp_image_params_equal(%struct.mp_image_params* %17, %struct.mp_image_params* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %15
  %22 = load %struct.priv*, %struct.priv** %5, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %47

26:                                               ; preds = %21
  %27 = load %struct.priv*, %struct.priv** %5, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 2
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %33 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %26
  %37 = load %struct.priv*, %struct.priv** %5, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 3
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %43 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %65

47:                                               ; preds = %36, %26, %21, %15, %2
  %48 = load %struct.priv*, %struct.priv** %5, align 8
  %49 = getelementptr inbounds %struct.priv, %struct.priv* %48, i32 0, i32 4
  %50 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %51 = bitcast %struct.mp_image_params* %49 to i8*
  %52 = bitcast %struct.mp_image_params* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 16, i1 false)
  %53 = load %struct.priv*, %struct.priv** %5, align 8
  %54 = getelementptr inbounds %struct.priv, %struct.priv* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.priv*, %struct.priv** %5, align 8
  %56 = getelementptr inbounds %struct.priv, %struct.priv* %55, i32 0, i32 1
  store i32 0, i32* %56, align 4
  %57 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %3, align 8
  %58 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %59 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %62 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @mp_autoconvert_add_imgfmt(%struct.mp_autoconvert* %57, i64 %60, i64 %63)
  br label %65

65:                                               ; preds = %47, %46
  ret void
}

declare dso_local i64 @mp_image_params_equal(%struct.mp_image_params*, %struct.mp_image_params*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mp_autoconvert_add_imgfmt(%struct.mp_autoconvert*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
