; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_search_sample_formats.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_search_sample_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.mp_chmap = type { i32 }
%struct.wasapi_sample_fmt = type { i64 }

@wasapi_formats = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*, %struct.TYPE_7__*, i32, %struct.mp_chmap*)* @search_sample_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search_sample_formats(%struct.ao* %0, %struct.TYPE_7__* %1, i32 %2, %struct.mp_chmap* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ao*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mp_chmap*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mp_chmap* %3, %struct.mp_chmap** %9, align 8
  %14 = load i32, i32* @wasapi_formats, align 4
  %15 = call i32 @MP_ARRAY_SIZE(i32 %14)
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca %struct.wasapi_sample_fmt, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load %struct.ao*, %struct.ao** %6, align 8
  %20 = getelementptr inbounds %struct.ao, %struct.ao* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @wasapi_get_best_sample_formats(i32 %21, %struct.wasapi_sample_fmt* %18)
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %44, %4
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %18, i64 %25
  %27 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %23
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %18, i64 %33
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.mp_chmap*, %struct.mp_chmap** %9, align 8
  %37 = call i32 @set_waveformat(%struct.TYPE_7__* %31, %struct.wasapi_sample_fmt* %34, i32 %35, %struct.mp_chmap* %36)
  %38 = load %struct.ao*, %struct.ao** %6, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = call i64 @try_format_exclusive(%struct.ao* %38, %struct.TYPE_7__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %51

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %12, align 4
  br label %23

47:                                               ; preds = %23
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %52)
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @MP_ARRAY_SIZE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @wasapi_get_best_sample_formats(i32, %struct.wasapi_sample_fmt*) #1

declare dso_local i32 @set_waveformat(%struct.TYPE_7__*, %struct.wasapi_sample_fmt*, i32, %struct.mp_chmap*) #1

declare dso_local i64 @try_format_exclusive(%struct.ao*, %struct.TYPE_7__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
