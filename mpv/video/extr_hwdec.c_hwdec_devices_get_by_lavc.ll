; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_hwdec.c_hwdec_devices_get_by_lavc.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_hwdec.c_hwdec_devices_get_by_lavc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_hwdec_ctx = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.mp_hwdec_devices = type { i32, i32, %struct.mp_hwdec_ctx** }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_hwdec_ctx* @hwdec_devices_get_by_lavc(%struct.mp_hwdec_devices* %0, i32 %1) #0 {
  %3 = alloca %struct.mp_hwdec_devices*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mp_hwdec_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mp_hwdec_ctx*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store %struct.mp_hwdec_devices* %0, %struct.mp_hwdec_devices** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.mp_hwdec_ctx* null, %struct.mp_hwdec_ctx** %5, align 8
  %9 = load %struct.mp_hwdec_devices*, %struct.mp_hwdec_devices** %3, align 8
  %10 = getelementptr inbounds %struct.mp_hwdec_devices, %struct.mp_hwdec_devices* %9, i32 0, i32 1
  %11 = call i32 @pthread_mutex_lock(i32* %10)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %47, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.mp_hwdec_devices*, %struct.mp_hwdec_devices** %3, align 8
  %15 = getelementptr inbounds %struct.mp_hwdec_devices, %struct.mp_hwdec_devices* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %50

18:                                               ; preds = %12
  %19 = load %struct.mp_hwdec_devices*, %struct.mp_hwdec_devices** %3, align 8
  %20 = getelementptr inbounds %struct.mp_hwdec_devices, %struct.mp_hwdec_devices* %19, i32 0, i32 2
  %21 = load %struct.mp_hwdec_ctx**, %struct.mp_hwdec_ctx*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %21, i64 %23
  %25 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %24, align 8
  store %struct.mp_hwdec_ctx* %25, %struct.mp_hwdec_ctx** %7, align 8
  %26 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %7, align 8
  %27 = getelementptr inbounds %struct.mp_hwdec_ctx, %struct.mp_hwdec_ctx* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %18
  %31 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %7, align 8
  %32 = getelementptr inbounds %struct.mp_hwdec_ctx, %struct.mp_hwdec_ctx* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = bitcast i8* %36 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %8, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %30
  %44 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %7, align 8
  store %struct.mp_hwdec_ctx* %44, %struct.mp_hwdec_ctx** %5, align 8
  br label %50

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %45, %18
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %12

50:                                               ; preds = %43, %12
  %51 = load %struct.mp_hwdec_devices*, %struct.mp_hwdec_devices** %3, align 8
  %52 = getelementptr inbounds %struct.mp_hwdec_devices, %struct.mp_hwdec_devices* %51, i32 0, i32 1
  %53 = call i32 @pthread_mutex_unlock(i32* %52)
  %54 = load %struct.mp_hwdec_ctx*, %struct.mp_hwdec_ctx** %5, align 8
  ret %struct.mp_hwdec_ctx* %54
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
