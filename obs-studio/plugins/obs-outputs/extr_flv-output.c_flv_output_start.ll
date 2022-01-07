; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_flv-output.c_flv_output_start.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_flv-output.c_flv_output_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flv_output = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Unable to open FLV file '%s'\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Writing FLV file '%s'...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @flv_output_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flv_output_start(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.flv_output*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.flv_output*
  store %struct.flv_output* %8, %struct.flv_output** %4, align 8
  %9 = load %struct.flv_output*, %struct.flv_output** %4, align 8
  %10 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @obs_output_can_begin_data_capture(i32 %11, i32 0)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %72

15:                                               ; preds = %1
  %16 = load %struct.flv_output*, %struct.flv_output** %4, align 8
  %17 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @obs_output_initialize_encoders(i32 %18, i32 0)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %72

22:                                               ; preds = %15
  %23 = load %struct.flv_output*, %struct.flv_output** %4, align 8
  %24 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.flv_output*, %struct.flv_output** %4, align 8
  %26 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load %struct.flv_output*, %struct.flv_output** %4, align 8
  %28 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %27, i32 0, i32 6
  %29 = call i32 @os_atomic_set_bool(i32* %28, i32 0)
  %30 = load %struct.flv_output*, %struct.flv_output** %4, align 8
  %31 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32* @obs_output_get_settings(i32 %32)
  store i32* %33, i32** %5, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i8* @obs_data_get_string(i32* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %35, i8** %6, align 8
  %36 = load %struct.flv_output*, %struct.flv_output** %4, align 8
  %37 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %36, i32 0, i32 2
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @dstr_copy(%struct.TYPE_2__* %37, i8* %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @obs_data_release(i32* %40)
  %42 = load %struct.flv_output*, %struct.flv_output** %4, align 8
  %43 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @os_fopen(i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.flv_output*, %struct.flv_output** %4, align 8
  %48 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load %struct.flv_output*, %struct.flv_output** %4, align 8
  %50 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %22
  %54 = load %struct.flv_output*, %struct.flv_output** %4, align 8
  %55 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  store i32 0, i32* %2, align 4
  br label %72

59:                                               ; preds = %22
  %60 = load %struct.flv_output*, %struct.flv_output** %4, align 8
  %61 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %60, i32 0, i32 4
  %62 = call i32 @os_atomic_set_bool(i32* %61, i32 1)
  %63 = load %struct.flv_output*, %struct.flv_output** %4, align 8
  %64 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @obs_output_begin_data_capture(i32 %65, i32 0)
  %67 = load %struct.flv_output*, %struct.flv_output** %4, align 8
  %68 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  store i32 1, i32* %2, align 4
  br label %72

72:                                               ; preds = %59, %53, %21, %14
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @obs_output_can_begin_data_capture(i32, i32) #1

declare dso_local i32 @obs_output_initialize_encoders(i32, i32) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

declare dso_local i32* @obs_output_get_settings(i32) #1

declare dso_local i8* @obs_data_get_string(i32*, i8*) #1

declare dso_local i32 @dstr_copy(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @obs_data_release(i32*) #1

declare dso_local i32 @os_fopen(i32, i8*) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @obs_output_begin_data_capture(i32, i32) #1

declare dso_local i32 @info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
