; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_utils.c_ra_buf_pool_grow.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_utils.c_ra_buf_pool_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32 }
%struct.ra_buf_pool = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ra_buf = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Resized buffer pool of type %u to size %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra*, %struct.ra_buf_pool*)* @ra_buf_pool_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ra_buf_pool_grow(%struct.ra* %0, %struct.ra_buf_pool* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ra*, align 8
  %5 = alloca %struct.ra_buf_pool*, align 8
  %6 = alloca %struct.ra_buf*, align 8
  store %struct.ra* %0, %struct.ra** %4, align 8
  store %struct.ra_buf_pool* %1, %struct.ra_buf_pool** %5, align 8
  %7 = load %struct.ra*, %struct.ra** %4, align 8
  %8 = load %struct.ra_buf_pool*, %struct.ra_buf_pool** %5, align 8
  %9 = getelementptr inbounds %struct.ra_buf_pool, %struct.ra_buf_pool* %8, i32 0, i32 1
  %10 = call %struct.ra_buf* @ra_buf_create(%struct.ra* %7, %struct.TYPE_2__* %9)
  store %struct.ra_buf* %10, %struct.ra_buf** %6, align 8
  %11 = load %struct.ra_buf*, %struct.ra_buf** %6, align 8
  %12 = icmp ne %struct.ra_buf* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

14:                                               ; preds = %2
  %15 = load %struct.ra_buf_pool*, %struct.ra_buf_pool** %5, align 8
  %16 = getelementptr inbounds %struct.ra_buf_pool, %struct.ra_buf_pool* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ra_buf_pool*, %struct.ra_buf_pool** %5, align 8
  %19 = getelementptr inbounds %struct.ra_buf_pool, %struct.ra_buf_pool* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ra_buf_pool*, %struct.ra_buf_pool** %5, align 8
  %22 = getelementptr inbounds %struct.ra_buf_pool, %struct.ra_buf_pool* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ra_buf*, %struct.ra_buf** %6, align 8
  %25 = call i32 @MP_TARRAY_INSERT_AT(i32* null, i32 %17, i32 %20, i32 %23, %struct.ra_buf* %24)
  %26 = load %struct.ra*, %struct.ra** %4, align 8
  %27 = load %struct.ra_buf_pool*, %struct.ra_buf_pool** %5, align 8
  %28 = getelementptr inbounds %struct.ra_buf_pool, %struct.ra_buf_pool* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ra_buf_pool*, %struct.ra_buf_pool** %5, align 8
  %32 = getelementptr inbounds %struct.ra_buf_pool, %struct.ra_buf_pool* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @MP_VERBOSE(%struct.ra* %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33)
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %14, %13
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.ra_buf* @ra_buf_create(%struct.ra*, %struct.TYPE_2__*) #1

declare dso_local i32 @MP_TARRAY_INSERT_AT(i32*, i32, i32, i32, %struct.ra_buf*) #1

declare dso_local i32 @MP_VERBOSE(%struct.ra*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
