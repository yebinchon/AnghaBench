; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_..utildarray.h_darray_erase_item.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_..utildarray.h_darray_erase_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.darray = type { i32 }

@DARRAY_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.darray*, i8*)* @darray_erase_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @darray_erase_item(i64 %0, %struct.darray* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.darray*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.darray* %1, %struct.darray** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.darray*, %struct.darray** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @darray_find(i64 %8, %struct.darray* %9, i8* %10, i32 0)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @DARRAY_INVALID, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.darray*, %struct.darray** %5, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @darray_erase(i64 %16, %struct.darray* %17, i64 %18)
  br label %20

20:                                               ; preds = %15, %3
  ret void
}

declare dso_local i64 @darray_find(i64, %struct.darray*, i8*, i32) #1

declare dso_local i32 @darray_erase(i64, %struct.darray*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
