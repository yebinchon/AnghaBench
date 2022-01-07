; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_shader_cache.c_update_pushc.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_shader_cache.c_update_pushc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32 }
%struct.sc_uniform = type { %struct.TYPE_2__, %struct.ra_layout, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ra_layout = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra*, i8*, %struct.sc_uniform*)* @update_pushc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_pushc(%struct.ra* %0, i8* %1, %struct.sc_uniform* %2) #0 {
  %4 = alloca %struct.ra*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sc_uniform*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ra_layout, align 8
  %10 = alloca %struct.ra_layout, align 8
  %11 = alloca i32, align 4
  store %struct.ra* %0, %struct.ra** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sc_uniform* %2, %struct.sc_uniform** %6, align 8
  %12 = load %struct.sc_uniform*, %struct.sc_uniform** %6, align 8
  %13 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %12, i32 0, i32 3
  %14 = ptrtoint i32* %13 to i64
  store i64 %14, i64* %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = load %struct.sc_uniform*, %struct.sc_uniform** %6, align 8
  %18 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %16, %19
  store i64 %20, i64* %8, align 8
  %21 = load %struct.sc_uniform*, %struct.sc_uniform** %6, align 8
  %22 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %21, i32 0, i32 0
  %23 = call i64 @ra_renderpass_input_layout(%struct.TYPE_2__* %22)
  %24 = getelementptr inbounds %struct.ra_layout, %struct.ra_layout* %9, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = load %struct.sc_uniform*, %struct.sc_uniform** %6, align 8
  %26 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %25, i32 0, i32 1
  %27 = bitcast %struct.ra_layout* %10 to i8*
  %28 = bitcast %struct.ra_layout* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 8, i1 false)
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %52, %3
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.sc_uniform*, %struct.sc_uniform** %6, align 8
  %32 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %29
  %37 = load i64, i64* %8, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = load i64, i64* %7, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = getelementptr inbounds %struct.ra_layout, %struct.ra_layout* %9, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @memcpy(i8* %38, i8* %40, i64 %42)
  %44 = getelementptr inbounds %struct.ra_layout, %struct.ra_layout* %9, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %7, align 8
  %48 = getelementptr inbounds %struct.ra_layout, %struct.ra_layout* %10, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %8, align 8
  br label %52

52:                                               ; preds = %36
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %29

55:                                               ; preds = %29
  ret void
}

declare dso_local i64 @ra_renderpass_input_layout(%struct.TYPE_2__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
