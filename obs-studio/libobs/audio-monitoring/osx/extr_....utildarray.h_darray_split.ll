; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/osx/extr_....utildarray.h_darray_split.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/osx/extr_....utildarray.h_darray_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.darray = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.darray*, %struct.darray*, %struct.darray*, i64)* @darray_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @darray_split(i64 %0, %struct.darray* %1, %struct.darray* %2, %struct.darray* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.darray*, align 8
  %8 = alloca %struct.darray*, align 8
  %9 = alloca %struct.darray*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.darray, align 8
  store i64 %0, i64* %6, align 8
  store %struct.darray* %1, %struct.darray** %7, align 8
  store %struct.darray* %2, %struct.darray** %8, align 8
  store %struct.darray* %3, %struct.darray** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.darray*, %struct.darray** %9, align 8
  %13 = getelementptr inbounds %struct.darray, %struct.darray* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp uge i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.darray*, %struct.darray** %7, align 8
  %20 = load %struct.darray*, %struct.darray** %8, align 8
  %21 = icmp ne %struct.darray* %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = call i32 @darray_init(%struct.darray* %11)
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.darray*, %struct.darray** %9, align 8
  %27 = call i32 @darray_copy(i64 %25, %struct.darray* %11, %struct.darray* %26)
  %28 = load %struct.darray*, %struct.darray** %7, align 8
  %29 = call i32 @darray_free(%struct.darray* %28)
  %30 = load %struct.darray*, %struct.darray** %8, align 8
  %31 = call i32 @darray_free(%struct.darray* %30)
  %32 = load %struct.darray*, %struct.darray** %9, align 8
  %33 = getelementptr inbounds %struct.darray, %struct.darray* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %5
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.darray*, %struct.darray** %7, align 8
  %42 = getelementptr inbounds %struct.darray, %struct.darray* %11, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.darray, %struct.darray* %11, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @darray_copy_array(i64 %40, %struct.darray* %41, i32 %43, i64 %45)
  br label %47

47:                                               ; preds = %39, %36
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds %struct.darray, %struct.darray* %11, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub i64 %50, 1
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.darray*, %struct.darray** %8, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @darray_item(i64 %56, %struct.darray* %11, i64 %57)
  %59 = getelementptr inbounds %struct.darray, %struct.darray* %11, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %10, align 8
  %62 = sub i64 %60, %61
  %63 = call i32 @darray_copy_array(i64 %54, %struct.darray* %55, i32 %58, i64 %62)
  br label %64

64:                                               ; preds = %53, %47
  br label %65

65:                                               ; preds = %64, %5
  %66 = call i32 @darray_free(%struct.darray* %11)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @darray_init(%struct.darray*) #1

declare dso_local i32 @darray_copy(i64, %struct.darray*, %struct.darray*) #1

declare dso_local i32 @darray_free(%struct.darray*) #1

declare dso_local i32 @darray_copy_array(i64, %struct.darray*, i32, i64) #1

declare dso_local i32 @darray_item(i64, %struct.darray*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
