; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_compressor-filter.c_add_sources.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_compressor-filter.c_add_sources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sidechain_prop_info = type { i32, i32* }

@OBS_SOURCE_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @add_sources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_sources(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sidechain_prop_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.sidechain_prop_info*
  store %struct.sidechain_prop_info* %10, %struct.sidechain_prop_info** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @obs_source_get_output_flags(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.sidechain_prop_info*, %struct.sidechain_prop_info** %6, align 8
  %15 = getelementptr inbounds %struct.sidechain_prop_info, %struct.sidechain_prop_info* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %34

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @OBS_SOURCE_AUDIO, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %34

25:                                               ; preds = %19
  %26 = load i32*, i32** %5, align 8
  %27 = call i8* @obs_source_get_name(i32* %26)
  store i8* %27, i8** %8, align 8
  %28 = load %struct.sidechain_prop_info*, %struct.sidechain_prop_info** %6, align 8
  %29 = getelementptr inbounds %struct.sidechain_prop_info, %struct.sidechain_prop_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @obs_property_list_add_string(i32 %30, i8* %31, i8* %32)
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %25, %24, %18
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @obs_source_get_output_flags(i32*) #1

declare dso_local i8* @obs_source_get_name(i32*) #1

declare dso_local i32 @obs_property_list_add_string(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
