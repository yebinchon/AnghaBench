; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_int64_set.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_int64_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.mpv_node = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@MPV_FORMAT_INT64 = common dso_local global i64 0, align 8
@M_OPT_UNKNOWN = common dso_local global i32 0, align 4
@M_OPT_MIN = common dso_local global i32 0, align 4
@M_OPT_OUT_OF_RANGE = common dso_local global i32 0, align 4
@M_OPT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, %struct.mpv_node*)* @int64_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int64_set(%struct.TYPE_5__* %0, i8* %1, %struct.mpv_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mpv_node*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.mpv_node* %2, %struct.mpv_node** %7, align 8
  %9 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %10 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MPV_FORMAT_INT64, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @M_OPT_UNKNOWN, align 4
  store i32 %15, i32* %4, align 4
  br label %54

16:                                               ; preds = %3
  %17 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %18 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @M_OPT_MIN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %16
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @M_OPT_OUT_OF_RANGE, align 4
  store i32 %34, i32* %4, align 4
  br label %54

35:                                               ; preds = %27, %16
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @M_OPT_MAX, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @M_OPT_OUT_OF_RANGE, align 4
  store i32 %49, i32* %4, align 4
  br label %54

50:                                               ; preds = %42, %35
  %51 = load i64, i64* %8, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = bitcast i8* %52 to i64*
  store i64 %51, i64* %53, align 8
  store i32 1, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %48, %33, %14
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
