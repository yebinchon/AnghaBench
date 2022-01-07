; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_shader_cache.c_update_ubo.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_shader_cache.c_update_ubo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ra*, %struct.ra_buf*, i64, i8*, i64)* }
%struct.ra_buf = type { i32 }
%struct.sc_uniform = type { i64, %struct.TYPE_4__, %struct.ra_layout, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ra_layout = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra*, %struct.ra_buf*, %struct.sc_uniform*)* @update_ubo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_ubo(%struct.ra* %0, %struct.ra_buf* %1, %struct.sc_uniform* %2) #0 {
  %4 = alloca %struct.ra*, align 8
  %5 = alloca %struct.ra_buf*, align 8
  %6 = alloca %struct.sc_uniform*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ra_layout, align 8
  %10 = alloca %struct.ra_layout, align 8
  %11 = alloca i32, align 4
  store %struct.ra* %0, %struct.ra** %4, align 8
  store %struct.ra_buf* %1, %struct.ra_buf** %5, align 8
  store %struct.sc_uniform* %2, %struct.sc_uniform** %6, align 8
  %12 = load %struct.sc_uniform*, %struct.sc_uniform** %6, align 8
  %13 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %12, i32 0, i32 3
  %14 = ptrtoint i32* %13 to i64
  store i64 %14, i64* %7, align 8
  %15 = load %struct.sc_uniform*, %struct.sc_uniform** %6, align 8
  %16 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load %struct.sc_uniform*, %struct.sc_uniform** %6, align 8
  %19 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %18, i32 0, i32 1
  %20 = call i64 @ra_renderpass_input_layout(%struct.TYPE_4__* %19)
  %21 = getelementptr inbounds %struct.ra_layout, %struct.ra_layout* %9, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = load %struct.sc_uniform*, %struct.sc_uniform** %6, align 8
  %23 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %22, i32 0, i32 2
  %24 = bitcast %struct.ra_layout* %10 to i8*
  %25 = bitcast %struct.ra_layout* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 8, i1 false)
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %55, %3
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.sc_uniform*, %struct.sc_uniform** %6, align 8
  %29 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %26
  %34 = load %struct.ra*, %struct.ra** %4, align 8
  %35 = getelementptr inbounds %struct.ra, %struct.ra* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32 (%struct.ra*, %struct.ra_buf*, i64, i8*, i64)*, i32 (%struct.ra*, %struct.ra_buf*, i64, i8*, i64)** %37, align 8
  %39 = load %struct.ra*, %struct.ra** %4, align 8
  %40 = load %struct.ra_buf*, %struct.ra_buf** %5, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = getelementptr inbounds %struct.ra_layout, %struct.ra_layout* %9, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 %38(%struct.ra* %39, %struct.ra_buf* %40, i64 %41, i8* %43, i64 %45)
  %47 = getelementptr inbounds %struct.ra_layout, %struct.ra_layout* %9, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %7, align 8
  %51 = getelementptr inbounds %struct.ra_layout, %struct.ra_layout* %10, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %8, align 8
  br label %55

55:                                               ; preds = %33
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %26

58:                                               ; preds = %26
  ret void
}

declare dso_local i64 @ra_renderpass_input_layout(%struct.TYPE_4__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
