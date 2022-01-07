; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_set_planar444_alpha_sizes.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_set_planar444_alpha_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source = type { i32, i8**, i32*, i32* }
%struct.obs_source_frame = type { i32, i32 }

@GS_R8 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_source*, %struct.obs_source_frame*)* @set_planar444_alpha_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_planar444_alpha_sizes(%struct.obs_source* %0, %struct.obs_source_frame* %1) #0 {
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
  %27 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %30 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  store i32 %28, i32* %32, align 4
  %33 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %34 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %37 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %41 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %44 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %42, i32* %46, align 4
  %47 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %48 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %51 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32 %49, i32* %53, align 4
  %54 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %55 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %58 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  store i32 %56, i32* %60, align 4
  %61 = load i8*, i8** @GS_R8, align 8
  %62 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %63 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %62, i32 0, i32 1
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  store i8* %61, i8** %65, align 8
  %66 = load i8*, i8** @GS_R8, align 8
  %67 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %68 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %67, i32 0, i32 1
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 1
  store i8* %66, i8** %70, align 8
  %71 = load i8*, i8** @GS_R8, align 8
  %72 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %73 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %72, i32 0, i32 1
  %74 = load i8**, i8*** %73, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 2
  store i8* %71, i8** %75, align 8
  %76 = load i8*, i8** @GS_R8, align 8
  %77 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %78 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %77, i32 0, i32 1
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 3
  store i8* %76, i8** %80, align 8
  %81 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %82 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %81, i32 0, i32 0
  store i32 4, i32* %82, align 8
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
