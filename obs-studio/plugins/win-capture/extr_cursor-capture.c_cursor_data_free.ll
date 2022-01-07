; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_cursor-capture.c_cursor_data_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_cursor-capture.c_cursor_data_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cursor_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.cached_cursor* }
%struct.cached_cursor = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cursor_data_free(%struct.cursor_data* %0) #0 {
  %2 = alloca %struct.cursor_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.cached_cursor*, align 8
  store %struct.cursor_data* %0, %struct.cursor_data** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %23, %1
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.cursor_data*, %struct.cursor_data** %2, align 8
  %8 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %6, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %5
  %13 = load %struct.cursor_data*, %struct.cursor_data** %2, align 8
  %14 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.cached_cursor*, %struct.cached_cursor** %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %struct.cached_cursor, %struct.cached_cursor* %16, i64 %17
  store %struct.cached_cursor* %18, %struct.cached_cursor** %4, align 8
  %19 = load %struct.cached_cursor*, %struct.cached_cursor** %4, align 8
  %20 = getelementptr inbounds %struct.cached_cursor, %struct.cached_cursor* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @gs_texture_destroy(i32 %21)
  br label %23

23:                                               ; preds = %12
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %3, align 8
  br label %5

26:                                               ; preds = %5
  %27 = load %struct.cursor_data*, %struct.cursor_data** %2, align 8
  %28 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %27, i32 0, i32 0
  %29 = bitcast %struct.TYPE_2__* %28 to { i64, %struct.cached_cursor* }*
  %30 = getelementptr inbounds { i64, %struct.cached_cursor* }, { i64, %struct.cached_cursor* }* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds { i64, %struct.cached_cursor* }, { i64, %struct.cached_cursor* }* %29, i32 0, i32 1
  %33 = load %struct.cached_cursor*, %struct.cached_cursor** %32, align 8
  %34 = call i32 @da_free(i64 %31, %struct.cached_cursor* %33)
  %35 = load %struct.cursor_data*, %struct.cursor_data** %2, align 8
  %36 = call i32 @memset(%struct.cursor_data* %35, i32 0, i32 16)
  ret void
}

declare dso_local i32 @gs_texture_destroy(i32) #1

declare dso_local i32 @da_free(i64, %struct.cached_cursor*) #1

declare dso_local i32 @memset(%struct.cursor_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
