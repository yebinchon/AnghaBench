; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/common/extr_visionbuf_ion.c_visionbuf_sync.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/common/extr_visionbuf_ion.c_visionbuf_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ion_fd_data = type { i64, i32, i32, i32, i32 }
%struct.ion_flush_data = type { i32, i64, i32, i32, i32 }
%struct.ion_custom_data = type { i64, i32, i32, i32, i32 }
%struct.ion_handle_data = type { i64, i32, i32, i32, i32 }

@ion_fd = common dso_local global i32 0, align 4
@ION_IOC_IMPORT = common dso_local global i32 0, align 4
@ION_IOC_INV_CACHES = common dso_local global i32 0, align 4
@ION_IOC_CLEAN_CACHES = common dso_local global i32 0, align 4
@ION_IOC_CUSTOM = common dso_local global i32 0, align 4
@ION_IOC_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @visionbuf_sync(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ion_fd_data, align 8
  %7 = alloca %struct.ion_flush_data, align 8
  %8 = alloca %struct.ion_custom_data, align 8
  %9 = alloca %struct.ion_handle_data, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = bitcast %struct.ion_fd_data* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.ion_fd_data, %struct.ion_fd_data* %6, i32 0, i32 4
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @ion_fd, align 4
  %16 = load i32, i32* @ION_IOC_IMPORT, align 4
  %17 = bitcast %struct.ion_fd_data* %6 to %struct.ion_handle_data*
  %18 = call i32 @ioctl(i32 %15, i32 %16, %struct.ion_handle_data* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = bitcast %struct.ion_flush_data* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 32, i1 false)
  %24 = getelementptr inbounds %struct.ion_fd_data, %struct.ion_fd_data* %6, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.ion_flush_data, %struct.ion_flush_data* %7, i32 0, i32 3
  store i32 %25, i32* %26, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.ion_flush_data, %struct.ion_flush_data* %7, i32 0, i32 2
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.ion_flush_data, %struct.ion_flush_data* %7, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.ion_flush_data, %struct.ion_flush_data* %7, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = bitcast %struct.ion_custom_data* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %36, i8 0, i64 24, i1 false)
  %37 = load i32, i32* %4, align 4
  switch i32 %37, label %44 [
    i32 129, label %38
    i32 128, label %41
  ]

38:                                               ; preds = %2
  %39 = load i32, i32* @ION_IOC_INV_CACHES, align 4
  %40 = getelementptr inbounds %struct.ion_custom_data, %struct.ion_custom_data* %8, i32 0, i32 3
  store i32 %39, i32* %40, align 8
  br label %46

41:                                               ; preds = %2
  %42 = load i32, i32* @ION_IOC_CLEAN_CACHES, align 4
  %43 = getelementptr inbounds %struct.ion_custom_data, %struct.ion_custom_data* %8, i32 0, i32 3
  store i32 %42, i32* %43, align 8
  br label %46

44:                                               ; preds = %2
  %45 = call i32 @assert(i32 0)
  br label %46

46:                                               ; preds = %44, %41, %38
  %47 = ptrtoint %struct.ion_flush_data* %7 to i64
  %48 = getelementptr inbounds %struct.ion_custom_data, %struct.ion_custom_data* %8, i32 0, i32 0
  store i64 %47, i64* %48, align 8
  %49 = load i32, i32* @ion_fd, align 4
  %50 = load i32, i32* @ION_IOC_CUSTOM, align 4
  %51 = bitcast %struct.ion_custom_data* %8 to %struct.ion_handle_data*
  %52 = call i32 @ioctl(i32 %49, i32 %50, %struct.ion_handle_data* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = bitcast %struct.ion_handle_data* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %57, i8 0, i64 24, i1 false)
  %58 = getelementptr inbounds %struct.ion_fd_data, %struct.ion_fd_data* %6, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.ion_handle_data, %struct.ion_handle_data* %9, i32 0, i32 1
  store i32 %59, i32* %60, align 8
  %61 = load i32, i32* @ion_fd, align 4
  %62 = load i32, i32* @ION_IOC_FREE, align 4
  %63 = call i32 @ioctl(i32 %61, i32 %62, %struct.ion_handle_data* %9)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ion_handle_data*) #2

declare dso_local i32 @assert(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
