; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_utils.c_ra_buf_pool_get.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_utils.c_ra_buf_pool_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_buf = type { i32 }
%struct.ra = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ra*, %struct.ra_buf*)* }
%struct.ra_buf_pool = type { i64, i64, %struct.ra_buf**, %struct.ra_buf_params }
%struct.ra_buf_params = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ra_buf* @ra_buf_pool_get(%struct.ra* %0, %struct.ra_buf_pool* %1, %struct.ra_buf_params* %2) #0 {
  %4 = alloca %struct.ra_buf*, align 8
  %5 = alloca %struct.ra*, align 8
  %6 = alloca %struct.ra_buf_pool*, align 8
  %7 = alloca %struct.ra_buf_params*, align 8
  %8 = alloca %struct.ra_buf*, align 8
  store %struct.ra* %0, %struct.ra** %5, align 8
  store %struct.ra_buf_pool* %1, %struct.ra_buf_pool** %6, align 8
  store %struct.ra_buf_params* %2, %struct.ra_buf_params** %7, align 8
  %9 = load %struct.ra_buf_params*, %struct.ra_buf_params** %7, align 8
  %10 = getelementptr inbounds %struct.ra_buf_params, %struct.ra_buf_params* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.ra_buf_params*, %struct.ra_buf_params** %7, align 8
  %17 = load %struct.ra_buf_pool*, %struct.ra_buf_pool** %6, align 8
  %18 = getelementptr inbounds %struct.ra_buf_pool, %struct.ra_buf_pool* %17, i32 0, i32 3
  %19 = call i32 @ra_buf_params_compatible(%struct.ra_buf_params* %16, %struct.ra_buf_params* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %3
  %22 = load %struct.ra*, %struct.ra** %5, align 8
  %23 = load %struct.ra_buf_pool*, %struct.ra_buf_pool** %6, align 8
  %24 = call i32 @ra_buf_pool_uninit(%struct.ra* %22, %struct.ra_buf_pool* %23)
  %25 = load %struct.ra_buf_pool*, %struct.ra_buf_pool** %6, align 8
  %26 = getelementptr inbounds %struct.ra_buf_pool, %struct.ra_buf_pool* %25, i32 0, i32 3
  %27 = load %struct.ra_buf_params*, %struct.ra_buf_params** %7, align 8
  %28 = bitcast %struct.ra_buf_params* %26 to i8*
  %29 = bitcast %struct.ra_buf_params* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 4 %29, i64 4, i1 false)
  br label %30

30:                                               ; preds = %21, %3
  %31 = load %struct.ra_buf_pool*, %struct.ra_buf_pool** %6, align 8
  %32 = getelementptr inbounds %struct.ra_buf_pool, %struct.ra_buf_pool* %31, i32 0, i32 2
  %33 = load %struct.ra_buf**, %struct.ra_buf*** %32, align 8
  %34 = icmp ne %struct.ra_buf** %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load %struct.ra*, %struct.ra** %5, align 8
  %37 = load %struct.ra_buf_pool*, %struct.ra_buf_pool** %6, align 8
  %38 = call i32 @ra_buf_pool_grow(%struct.ra* %36, %struct.ra_buf_pool* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store %struct.ra_buf* null, %struct.ra_buf** %4, align 8
  br label %82

41:                                               ; preds = %35, %30
  %42 = load %struct.ra*, %struct.ra** %5, align 8
  %43 = getelementptr inbounds %struct.ra, %struct.ra* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.ra*, %struct.ra_buf*)*, i32 (%struct.ra*, %struct.ra_buf*)** %45, align 8
  %47 = load %struct.ra*, %struct.ra** %5, align 8
  %48 = load %struct.ra_buf_pool*, %struct.ra_buf_pool** %6, align 8
  %49 = getelementptr inbounds %struct.ra_buf_pool, %struct.ra_buf_pool* %48, i32 0, i32 2
  %50 = load %struct.ra_buf**, %struct.ra_buf*** %49, align 8
  %51 = load %struct.ra_buf_pool*, %struct.ra_buf_pool** %6, align 8
  %52 = getelementptr inbounds %struct.ra_buf_pool, %struct.ra_buf_pool* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.ra_buf*, %struct.ra_buf** %50, i64 %53
  %55 = load %struct.ra_buf*, %struct.ra_buf** %54, align 8
  %56 = call i32 %46(%struct.ra* %47, %struct.ra_buf* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %41
  %59 = load %struct.ra*, %struct.ra** %5, align 8
  %60 = load %struct.ra_buf_pool*, %struct.ra_buf_pool** %6, align 8
  %61 = call i32 @ra_buf_pool_grow(%struct.ra* %59, %struct.ra_buf_pool* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  store %struct.ra_buf* null, %struct.ra_buf** %4, align 8
  br label %82

64:                                               ; preds = %58, %41
  %65 = load %struct.ra_buf_pool*, %struct.ra_buf_pool** %6, align 8
  %66 = getelementptr inbounds %struct.ra_buf_pool, %struct.ra_buf_pool* %65, i32 0, i32 2
  %67 = load %struct.ra_buf**, %struct.ra_buf*** %66, align 8
  %68 = load %struct.ra_buf_pool*, %struct.ra_buf_pool** %6, align 8
  %69 = getelementptr inbounds %struct.ra_buf_pool, %struct.ra_buf_pool* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %69, align 8
  %72 = getelementptr inbounds %struct.ra_buf*, %struct.ra_buf** %67, i64 %70
  %73 = load %struct.ra_buf*, %struct.ra_buf** %72, align 8
  store %struct.ra_buf* %73, %struct.ra_buf** %8, align 8
  %74 = load %struct.ra_buf_pool*, %struct.ra_buf_pool** %6, align 8
  %75 = getelementptr inbounds %struct.ra_buf_pool, %struct.ra_buf_pool* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ra_buf_pool*, %struct.ra_buf_pool** %6, align 8
  %78 = getelementptr inbounds %struct.ra_buf_pool, %struct.ra_buf_pool* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = urem i64 %79, %76
  store i64 %80, i64* %78, align 8
  %81 = load %struct.ra_buf*, %struct.ra_buf** %8, align 8
  store %struct.ra_buf* %81, %struct.ra_buf** %4, align 8
  br label %82

82:                                               ; preds = %64, %63, %40
  %83 = load %struct.ra_buf*, %struct.ra_buf** %4, align 8
  ret %struct.ra_buf* %83
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ra_buf_params_compatible(%struct.ra_buf_params*, %struct.ra_buf_params*) #1

declare dso_local i32 @ra_buf_pool_uninit(%struct.ra*, %struct.ra_buf_pool*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ra_buf_pool_grow(%struct.ra*, %struct.ra_buf_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
