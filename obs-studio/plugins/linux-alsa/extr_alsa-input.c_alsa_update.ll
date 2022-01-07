; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-alsa/extr_alsa-input.c_alsa_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-alsa/extr_alsa-input.c_alsa_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alsa_data = type { i8*, i32, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"device_id\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"__custom__\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"custom_pcm\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"rate\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alsa_update(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.alsa_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.alsa_data*
  store %struct.alsa_data* %10, %struct.alsa_data** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i8* @obs_data_get_string(i32* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i8* @obs_data_get_string(i32* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i8* %18, i8** %6, align 8
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.alsa_data*, %struct.alsa_data** %5, align 8
  %21 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @strcmp(i8* %22, i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.alsa_data*, %struct.alsa_data** %5, align 8
  %28 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @bfree(i8* %29)
  %31 = load i8*, i8** %6, align 8
  %32 = call i8* @bstrdup(i8* %31)
  %33 = load %struct.alsa_data*, %struct.alsa_data** %5, align 8
  %34 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  store i32 1, i32* %8, align 4
  br label %35

35:                                               ; preds = %26, %19
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @obs_data_get_int(i32* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 %37, i32* %7, align 4
  %38 = load %struct.alsa_data*, %struct.alsa_data** %5, align 8
  %39 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.alsa_data*, %struct.alsa_data** %5, align 8
  %46 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  store i32 1, i32* %8, align 4
  br label %47

47:                                               ; preds = %43, %35
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load %struct.alsa_data*, %struct.alsa_data** %5, align 8
  %52 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.alsa_data*, %struct.alsa_data** %5, align 8
  %57 = call i32 @_alsa_close(%struct.alsa_data* %56)
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.alsa_data*, %struct.alsa_data** %5, align 8
  %60 = call i32 @_alsa_try_open(%struct.alsa_data* %59)
  br label %61

61:                                               ; preds = %58, %47
  ret void
}

declare dso_local i8* @obs_data_get_string(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @bfree(i8*) #1

declare dso_local i8* @bstrdup(i8*) #1

declare dso_local i32 @obs_data_get_int(i32*, i8*) #1

declare dso_local i32 @_alsa_close(%struct.alsa_data*) #1

declare dso_local i32 @_alsa_try_open(%struct.alsa_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
