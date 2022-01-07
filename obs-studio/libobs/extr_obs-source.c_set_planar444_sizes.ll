; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_set_planar444_sizes.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_set_planar444_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source = type { i32, i8**, i32*, i32* }
%struct.obs_source_frame = type { i32, i32 }

@GS_R8 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_source*, %struct.obs_source_frame*)* @set_planar444_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_planar444_sizes(%struct.obs_source* %0, %struct.obs_source_frame* %1) #0 {
  %3 = alloca %struct.obs_source*, align 8
  %4 = alloca %struct.obs_source_frame*, align 8
  store %struct.obs_source* %0, %struct.obs_source** %3, align 8
  store %struct.obs_source_frame* %1, %struct.obs_source_frame** %4, align 8
  %5 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %6 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %9 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %7, i32* %11, align 4
  %12 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %13 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %16 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %14, i32* %18, align 4
  %19 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %20 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %23 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 %21, i32* %25, align 4
  %26 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %27 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %30 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %28, i32* %32, align 4
  %33 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %34 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %37 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 %35, i32* %39, align 4
  %40 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %41 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %44 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 %42, i32* %46, align 4
  %47 = load i8*, i8** @GS_R8, align 8
  %48 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %49 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %48, i32 0, i32 1
  %50 = load i8**, i8*** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  store i8* %47, i8** %51, align 8
  %52 = load i8*, i8** @GS_R8, align 8
  %53 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %54 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %53, i32 0, i32 1
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  store i8* %52, i8** %56, align 8
  %57 = load i8*, i8** @GS_R8, align 8
  %58 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %59 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %58, i32 0, i32 1
  %60 = load i8**, i8*** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 2
  store i8* %57, i8** %61, align 8
  %62 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %63 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %62, i32 0, i32 0
  store i32 3, i32* %63, align 8
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
