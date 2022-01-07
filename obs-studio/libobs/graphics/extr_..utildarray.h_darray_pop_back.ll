; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_..utildarray.h_darray_pop_back.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_..utildarray.h_darray_pop_back.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.darray = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.darray*)* @darray_pop_back to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @darray_pop_back(i64 %0, %struct.darray* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.darray*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.darray* %1, %struct.darray** %4, align 8
  %5 = load %struct.darray*, %struct.darray** %4, align 8
  %6 = getelementptr inbounds %struct.darray, %struct.darray* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.darray*, %struct.darray** %4, align 8
  %12 = getelementptr inbounds %struct.darray, %struct.darray* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.darray*, %struct.darray** %4, align 8
  %18 = load %struct.darray*, %struct.darray** %4, align 8
  %19 = getelementptr inbounds %struct.darray, %struct.darray* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %20, 1
  %22 = call i32 @darray_erase(i64 %16, %struct.darray* %17, i64 %21)
  br label %23

23:                                               ; preds = %15, %2
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @darray_erase(i64, %struct.darray*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
