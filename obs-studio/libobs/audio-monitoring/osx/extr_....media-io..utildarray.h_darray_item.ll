; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/osx/extr_....media-io..utildarray.h_darray_item.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/osx/extr_....media-io..utildarray.h_darray_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.darray = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, %struct.darray*, i64)* @darray_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @darray_item(i64 %0, %struct.darray* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.darray*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.darray* %1, %struct.darray** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.darray*, %struct.darray** %5, align 8
  %8 = getelementptr inbounds %struct.darray, %struct.darray* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i32*
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* %6, align 8
  %13 = mul i64 %11, %12
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = bitcast i32* %14 to i8*
  ret i8* %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
