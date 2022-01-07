; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_rtmp-custom.c_rtmp_custom_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_rtmp-custom.c_rtmp_custom_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_custom = type { i8*, i8*, i32, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"use_auth\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @rtmp_custom_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtmp_custom_update(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rtmp_custom*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.rtmp_custom*
  store %struct.rtmp_custom* %7, %struct.rtmp_custom** %5, align 8
  %8 = load %struct.rtmp_custom*, %struct.rtmp_custom** %5, align 8
  %9 = getelementptr inbounds %struct.rtmp_custom, %struct.rtmp_custom* %8, i32 0, i32 4
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @bfree(i8* %10)
  %12 = load %struct.rtmp_custom*, %struct.rtmp_custom** %5, align 8
  %13 = getelementptr inbounds %struct.rtmp_custom, %struct.rtmp_custom* %12, i32 0, i32 3
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @bfree(i8* %14)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @obs_data_get_string(i32* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = call i8* @bstrdup(i32 %17)
  %19 = load %struct.rtmp_custom*, %struct.rtmp_custom** %5, align 8
  %20 = getelementptr inbounds %struct.rtmp_custom, %struct.rtmp_custom* %19, i32 0, i32 4
  store i8* %18, i8** %20, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @obs_data_get_string(i32* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i8* @bstrdup(i32 %22)
  %24 = load %struct.rtmp_custom*, %struct.rtmp_custom** %5, align 8
  %25 = getelementptr inbounds %struct.rtmp_custom, %struct.rtmp_custom* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @obs_data_get_bool(i32* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.rtmp_custom*, %struct.rtmp_custom** %5, align 8
  %29 = getelementptr inbounds %struct.rtmp_custom, %struct.rtmp_custom* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @obs_data_get_string(i32* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %32 = call i8* @bstrdup(i32 %31)
  %33 = load %struct.rtmp_custom*, %struct.rtmp_custom** %5, align 8
  %34 = getelementptr inbounds %struct.rtmp_custom, %struct.rtmp_custom* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @obs_data_get_string(i32* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %37 = call i8* @bstrdup(i32 %36)
  %38 = load %struct.rtmp_custom*, %struct.rtmp_custom** %5, align 8
  %39 = getelementptr inbounds %struct.rtmp_custom, %struct.rtmp_custom* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  ret void
}

declare dso_local i32 @bfree(i8*) #1

declare dso_local i8* @bstrdup(i32) #1

declare dso_local i32 @obs_data_get_string(i32*, i8*) #1

declare dso_local i32 @obs_data_get_bool(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
