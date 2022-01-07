; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_set_planar422_sizes.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_set_planar422_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source = type { i32*, i32, i8**, i32* }
%struct.obs_source_frame = type { i32, i32 }

@GS_R8 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_source*, %struct.obs_source_frame*)* @set_planar422_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_planar422_sizes(%struct.obs_source* %0, %struct.obs_source_frame* %1) #0 {
  %3 = alloca %struct.obs_source*, align 8
  %4 = alloca %struct.obs_source_frame*, align 8
  store %struct.obs_source* %0, %struct.obs_source** %3, align 8
  store %struct.obs_source_frame* %1, %struct.obs_source_frame** %4, align 8
  %5 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %6 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %9 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %7, i32* %11, align 4
  %12 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %13 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %14, 2
  %16 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %17 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 %15, i32* %19, align 4
  %20 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %21 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %22, 2
  %24 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %25 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  store i32 %23, i32* %27, align 4
  %28 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %29 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %32 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %36 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %39 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %37, i32* %41, align 4
  %42 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %43 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %46 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 %44, i32* %48, align 4
  %49 = load i8*, i8** @GS_R8, align 8
  %50 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %51 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %50, i32 0, i32 2
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  store i8* %49, i8** %53, align 8
  %54 = load i8*, i8** @GS_R8, align 8
  %55 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %56 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %55, i32 0, i32 2
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 1
  store i8* %54, i8** %58, align 8
  %59 = load i8*, i8** @GS_R8, align 8
  %60 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %61 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %60, i32 0, i32 2
  %62 = load i8**, i8*** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 2
  store i8* %59, i8** %63, align 8
  %64 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %65 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %64, i32 0, i32 1
  store i32 3, i32* %65, align 8
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
