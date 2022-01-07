; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_find_formats_exclusive.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_find_formats_exclusive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i64 }
%struct.TYPE_5__ = type { i32 }

@AF_FORMAT_S_AC3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Retrying as AC3.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*, %struct.TYPE_5__*)* @find_formats_exclusive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_formats_exclusive(%struct.ao* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ao*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.ao* %0, %struct.ao** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load %struct.ao*, %struct.ao** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %8 = call i64 @try_format_exclusive(%struct.ao* %6, %struct.TYPE_5__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %42

11:                                               ; preds = %2
  %12 = load %struct.ao*, %struct.ao** %4, align 8
  %13 = getelementptr inbounds %struct.ao, %struct.ao* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @af_fmt_is_spdif(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %11
  %18 = load %struct.ao*, %struct.ao** %4, align 8
  %19 = getelementptr inbounds %struct.ao, %struct.ao* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AF_FORMAT_S_AC3, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load %struct.ao*, %struct.ao** %4, align 8
  %25 = call i32 @MP_VERBOSE(%struct.ao* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %26 = load i64, i64* @AF_FORMAT_S_AC3, align 8
  %27 = call i32* @format_to_subtype(i64 %26)
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ao*, %struct.ao** %4, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = call i64 @try_format_exclusive(%struct.ao* %31, %struct.TYPE_5__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %42

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36, %17
  store i32 0, i32* %3, align 4
  br label %42

38:                                               ; preds = %11
  %39 = load %struct.ao*, %struct.ao** %4, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = call i32 @search_channels(%struct.ao* %39, %struct.TYPE_5__* %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %37, %35, %10
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @try_format_exclusive(%struct.ao*, %struct.TYPE_5__*) #1

declare dso_local i64 @af_fmt_is_spdif(i64) #1

declare dso_local i32 @MP_VERBOSE(%struct.ao*, i8*) #1

declare dso_local i32* @format_to_subtype(i64) #1

declare dso_local i32 @search_channels(%struct.ao*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
