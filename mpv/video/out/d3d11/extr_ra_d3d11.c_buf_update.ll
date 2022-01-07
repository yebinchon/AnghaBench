; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_buf_update.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_buf_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32 }
%struct.ra_buf = type { %struct.d3d_buf* }
%struct.d3d_buf = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra*, %struct.ra_buf*, i32, i8*, i64)* @buf_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buf_update(%struct.ra* %0, %struct.ra_buf* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.ra*, align 8
  %7 = alloca %struct.ra_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.d3d_buf*, align 8
  %12 = alloca i8*, align 8
  store %struct.ra* %0, %struct.ra** %6, align 8
  store %struct.ra_buf* %1, %struct.ra_buf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.ra_buf*, %struct.ra_buf** %7, align 8
  %14 = getelementptr inbounds %struct.ra_buf, %struct.ra_buf* %13, i32 0, i32 0
  %15 = load %struct.d3d_buf*, %struct.d3d_buf** %14, align 8
  store %struct.d3d_buf* %15, %struct.d3d_buf** %11, align 8
  %16 = load %struct.d3d_buf*, %struct.d3d_buf** %11, align 8
  %17 = getelementptr inbounds %struct.d3d_buf, %struct.d3d_buf* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %12, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8*, i8** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @memcpy(i8* %22, i8* %23, i64 %24)
  %26 = load %struct.d3d_buf*, %struct.d3d_buf** %11, align 8
  %27 = getelementptr inbounds %struct.d3d_buf, %struct.d3d_buf* %26, i32 0, i32 1
  store i32 1, i32* %27, align 8
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
