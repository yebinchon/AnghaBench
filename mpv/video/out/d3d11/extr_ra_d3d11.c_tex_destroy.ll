; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_tex_destroy.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_tex_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32 }
%struct.ra_tex = type { %struct.d3d_tex* }
%struct.d3d_tex = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra*, %struct.ra_tex*)* @tex_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tex_destroy(%struct.ra* %0, %struct.ra_tex* %1) #0 {
  %3 = alloca %struct.ra*, align 8
  %4 = alloca %struct.ra_tex*, align 8
  %5 = alloca %struct.d3d_tex*, align 8
  store %struct.ra* %0, %struct.ra** %3, align 8
  store %struct.ra_tex* %1, %struct.ra_tex** %4, align 8
  %6 = load %struct.ra_tex*, %struct.ra_tex** %4, align 8
  %7 = icmp ne %struct.ra_tex* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %39

9:                                                ; preds = %2
  %10 = load %struct.ra_tex*, %struct.ra_tex** %4, align 8
  %11 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %10, i32 0, i32 0
  %12 = load %struct.d3d_tex*, %struct.d3d_tex** %11, align 8
  store %struct.d3d_tex* %12, %struct.d3d_tex** %5, align 8
  %13 = load %struct.d3d_tex*, %struct.d3d_tex** %5, align 8
  %14 = getelementptr inbounds %struct.d3d_tex, %struct.d3d_tex* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @SAFE_RELEASE(i32 %15)
  %17 = load %struct.d3d_tex*, %struct.d3d_tex** %5, align 8
  %18 = getelementptr inbounds %struct.d3d_tex, %struct.d3d_tex* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @SAFE_RELEASE(i32 %19)
  %21 = load %struct.d3d_tex*, %struct.d3d_tex** %5, align 8
  %22 = getelementptr inbounds %struct.d3d_tex, %struct.d3d_tex* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @SAFE_RELEASE(i32 %23)
  %25 = load %struct.d3d_tex*, %struct.d3d_tex** %5, align 8
  %26 = getelementptr inbounds %struct.d3d_tex, %struct.d3d_tex* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SAFE_RELEASE(i32 %27)
  %29 = load %struct.d3d_tex*, %struct.d3d_tex** %5, align 8
  %30 = getelementptr inbounds %struct.d3d_tex, %struct.d3d_tex* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @SAFE_RELEASE(i32 %31)
  %33 = load %struct.d3d_tex*, %struct.d3d_tex** %5, align 8
  %34 = getelementptr inbounds %struct.d3d_tex, %struct.d3d_tex* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @SAFE_RELEASE(i32 %35)
  %37 = load %struct.ra_tex*, %struct.ra_tex** %4, align 8
  %38 = call i32 @talloc_free(%struct.ra_tex* %37)
  br label %39

39:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @SAFE_RELEASE(i32) #1

declare dso_local i32 @talloc_free(%struct.ra_tex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
