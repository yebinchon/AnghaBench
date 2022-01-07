; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_..utildarray.h_darray_insert_darray.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_..utildarray.h_darray_insert_darray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.darray = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.darray*, i64, %struct.darray*)* @darray_insert_darray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @darray_insert_darray(i64 %0, %struct.darray* %1, i64 %2, %struct.darray* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.darray*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.darray*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.darray* %1, %struct.darray** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.darray* %3, %struct.darray** %8, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.darray*, %struct.darray** %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load %struct.darray*, %struct.darray** %8, align 8
  %13 = getelementptr inbounds %struct.darray, %struct.darray* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.darray*, %struct.darray** %8, align 8
  %16 = getelementptr inbounds %struct.darray, %struct.darray* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @darray_insert_array(i64 %9, %struct.darray* %10, i64 %11, i32 %14, i32 %17)
  ret void
}

declare dso_local i32 @darray_insert_array(i64, %struct.darray*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
