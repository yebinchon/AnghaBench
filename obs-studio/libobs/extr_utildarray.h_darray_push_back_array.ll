; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_utildarray.h_darray_push_back_array.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_utildarray.h_darray_push_back_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.darray = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.darray*, i8*, i64)* @darray_push_back_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @darray_push_back_array(i64 %0, %struct.darray* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.darray*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store %struct.darray* %1, %struct.darray** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.darray*, %struct.darray** %7, align 8
  %12 = icmp ne %struct.darray* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %46

14:                                               ; preds = %4
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.darray*, %struct.darray** %7, align 8
  %22 = getelementptr inbounds %struct.darray, %struct.darray* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %5, align 8
  br label %46

24:                                               ; preds = %17
  %25 = load %struct.darray*, %struct.darray** %7, align 8
  %26 = getelementptr inbounds %struct.darray, %struct.darray* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.darray*, %struct.darray** %7, align 8
  %30 = load %struct.darray*, %struct.darray** %7, align 8
  %31 = getelementptr inbounds %struct.darray, %struct.darray* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %32, %33
  %35 = call i32 @darray_resize(i64 %28, %struct.darray* %29, i64 %34)
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.darray*, %struct.darray** %7, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @darray_item(i64 %36, %struct.darray* %37, i64 %38)
  %40 = load i8*, i8** %8, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %9, align 8
  %43 = mul i64 %41, %42
  %44 = call i32 @memcpy(i32 %39, i8* %40, i64 %43)
  %45 = load i64, i64* %10, align 8
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %24, %20, %13
  %47 = load i64, i64* %5, align 8
  ret i64 %47
}

declare dso_local i32 @darray_resize(i64, %struct.darray*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @darray_item(i64, %struct.darray*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
