; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/callback/extr_signal.c_signal_get_callback_idx.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/callback/extr_signal.c_signal_get_callback_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signal_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.signal_callback* }
%struct.signal_callback = type { i64, i8* }

@DARRAY_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.signal_info*, i64, i8*)* @signal_get_callback_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @signal_get_callback_idx(%struct.signal_info* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.signal_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.signal_callback*, align 8
  store %struct.signal_info* %0, %struct.signal_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %38, %3
  %11 = load i64, i64* %8, align 8
  %12 = load %struct.signal_info*, %struct.signal_info** %5, align 8
  %13 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %11, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %10
  %18 = load %struct.signal_info*, %struct.signal_info** %5, align 8
  %19 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.signal_callback*, %struct.signal_callback** %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.signal_callback, %struct.signal_callback* %21, i64 %22
  store %struct.signal_callback* %23, %struct.signal_callback** %9, align 8
  %24 = load %struct.signal_callback*, %struct.signal_callback** %9, align 8
  %25 = getelementptr inbounds %struct.signal_callback, %struct.signal_callback* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %17
  %30 = load %struct.signal_callback*, %struct.signal_callback** %9, align 8
  %31 = getelementptr inbounds %struct.signal_callback, %struct.signal_callback* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp eq i8* %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* %8, align 8
  store i64 %36, i64* %4, align 8
  br label %43

37:                                               ; preds = %29, %17
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %8, align 8
  br label %10

41:                                               ; preds = %10
  %42 = load i64, i64* @DARRAY_INVALID, align 8
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %41, %35
  %44 = load i64, i64* %4, align 8
  ret i64 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
