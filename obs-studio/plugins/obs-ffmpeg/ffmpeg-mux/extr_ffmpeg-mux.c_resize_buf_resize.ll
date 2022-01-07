; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/ffmpeg-mux/extr_ffmpeg-mux.c_resize_buf_resize.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/ffmpeg-mux/extr_ffmpeg-mux.c_resize_buf_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resize_buf = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.resize_buf*, i64)* @resize_buf_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resize_buf_resize(%struct.resize_buf* %0, i64 %1) #0 {
  %3 = alloca %struct.resize_buf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.resize_buf* %0, %struct.resize_buf** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.resize_buf*, %struct.resize_buf** %3, align 8
  %8 = getelementptr inbounds %struct.resize_buf, %struct.resize_buf* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @malloc(i64 %12)
  %14 = load %struct.resize_buf*, %struct.resize_buf** %3, align 8
  %15 = getelementptr inbounds %struct.resize_buf, %struct.resize_buf* %14, i32 0, i32 2
  store i64 %13, i64* %15, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.resize_buf*, %struct.resize_buf** %3, align 8
  %18 = getelementptr inbounds %struct.resize_buf, %struct.resize_buf* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.resize_buf*, %struct.resize_buf** %3, align 8
  %21 = getelementptr inbounds %struct.resize_buf, %struct.resize_buf* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  br label %56

22:                                               ; preds = %2
  %23 = load %struct.resize_buf*, %struct.resize_buf** %3, align 8
  %24 = getelementptr inbounds %struct.resize_buf, %struct.resize_buf* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %22
  %29 = load %struct.resize_buf*, %struct.resize_buf** %3, align 8
  %30 = getelementptr inbounds %struct.resize_buf, %struct.resize_buf* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = mul i64 %31, 2
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i64, i64* %5, align 8
  br label %40

38:                                               ; preds = %28
  %39 = load i64, i64* %4, align 8
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i64 [ %37, %36 ], [ %39, %38 ]
  store i64 %41, i64* %6, align 8
  %42 = load %struct.resize_buf*, %struct.resize_buf** %3, align 8
  %43 = getelementptr inbounds %struct.resize_buf, %struct.resize_buf* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @realloc(i64 %44, i64 %45)
  %47 = load %struct.resize_buf*, %struct.resize_buf** %3, align 8
  %48 = getelementptr inbounds %struct.resize_buf, %struct.resize_buf* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.resize_buf*, %struct.resize_buf** %3, align 8
  %51 = getelementptr inbounds %struct.resize_buf, %struct.resize_buf* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %40, %22
  %53 = load i64, i64* %4, align 8
  %54 = load %struct.resize_buf*, %struct.resize_buf** %3, align 8
  %55 = getelementptr inbounds %struct.resize_buf, %struct.resize_buf* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %52, %11
  ret void
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @realloc(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
