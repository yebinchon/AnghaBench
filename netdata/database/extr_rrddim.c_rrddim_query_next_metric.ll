; ModuleID = '/home/carl/AnghaBench/netdata/database/extr_rrddim.c_rrddim_query_next_metric.c'
source_filename = "/home/carl/AnghaBench/netdata/database/extr_rrddim.c_rrddim_query_next_metric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrddim_query_handle = type { %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rrddim_query_handle*, i32*)* @rrddim_query_next_metric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rrddim_query_next_metric(%struct.rrddim_query_handle* %0, i32* %1) #0 {
  %3 = alloca %struct.rrddim_query_handle*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.rrddim_query_handle* %0, %struct.rrddim_query_handle** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.rrddim_query_handle*, %struct.rrddim_query_handle** %3, align 8
  %10 = getelementptr inbounds %struct.rrddim_query_handle, %struct.rrddim_query_handle* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %5, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.rrddim_query_handle*, %struct.rrddim_query_handle** %3, align 8
  %18 = getelementptr inbounds %struct.rrddim_query_handle, %struct.rrddim_query_handle* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.rrddim_query_handle*, %struct.rrddim_query_handle** %3, align 8
  %23 = getelementptr inbounds %struct.rrddim_query_handle, %struct.rrddim_query_handle* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.rrddim_query_handle*, %struct.rrddim_query_handle** %3, align 8
  %27 = getelementptr inbounds %struct.rrddim_query_handle, %struct.rrddim_query_handle* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %25, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load %struct.rrddim_query_handle*, %struct.rrddim_query_handle** %3, align 8
  %36 = getelementptr inbounds %struct.rrddim_query_handle, %struct.rrddim_query_handle* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i32 1, i32* %37, align 8
  br label %38

38:                                               ; preds = %34, %2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %7, align 8
  %44 = getelementptr inbounds i32, i32* %41, i64 %42
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %6, align 8
  %48 = icmp sge i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  store i64 0, i64* %7, align 8
  br label %53

53:                                               ; preds = %52, %38
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.rrddim_query_handle*, %struct.rrddim_query_handle** %3, align 8
  %56 = getelementptr inbounds %struct.rrddim_query_handle, %struct.rrddim_query_handle* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
