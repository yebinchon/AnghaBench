; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/win32/extr_....media-io..utildarray.h_darray_copy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/win32/extr_....media-io..utildarray.h_darray_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.darray = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.darray*, %struct.darray*)* @darray_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @darray_copy(i64 %0, %struct.darray* %1, %struct.darray* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.darray*, align 8
  %6 = alloca %struct.darray*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.darray* %1, %struct.darray** %5, align 8
  store %struct.darray* %2, %struct.darray** %6, align 8
  %7 = load %struct.darray*, %struct.darray** %6, align 8
  %8 = getelementptr inbounds %struct.darray, %struct.darray* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.darray*, %struct.darray** %5, align 8
  %13 = call i32 @darray_free(%struct.darray* %12)
  br label %33

14:                                               ; preds = %3
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.darray*, %struct.darray** %5, align 8
  %17 = load %struct.darray*, %struct.darray** %6, align 8
  %18 = getelementptr inbounds %struct.darray, %struct.darray* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @darray_resize(i64 %15, %struct.darray* %16, i64 %19)
  %21 = load %struct.darray*, %struct.darray** %5, align 8
  %22 = getelementptr inbounds %struct.darray, %struct.darray* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.darray*, %struct.darray** %6, align 8
  %25 = getelementptr inbounds %struct.darray, %struct.darray* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.darray*, %struct.darray** %6, align 8
  %29 = getelementptr inbounds %struct.darray, %struct.darray* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = mul i64 %27, %30
  %32 = call i32 @memcpy(i32 %23, i32 %26, i64 %31)
  br label %33

33:                                               ; preds = %14, %11
  ret void
}

declare dso_local i32 @darray_free(%struct.darray*) #1

declare dso_local i32 @darray_resize(i64, %struct.darray*, i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
