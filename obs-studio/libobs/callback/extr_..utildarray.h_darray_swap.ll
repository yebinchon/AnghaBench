; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/callback/extr_..utildarray.h_darray_swap.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/callback/extr_..utildarray.h_darray_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.darray = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.darray*, i64, i64)* @darray_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @darray_swap(i64 %0, %struct.darray* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.darray*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.darray* %1, %struct.darray** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.darray*, %struct.darray** %6, align 8
  %14 = getelementptr inbounds %struct.darray, %struct.darray* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.darray*, %struct.darray** %6, align 8
  %21 = getelementptr inbounds %struct.darray, %struct.darray* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %55

30:                                               ; preds = %4
  %31 = load i64, i64* %5, align 8
  %32 = call i8* @malloc(i64 %31)
  store i8* %32, i8** %9, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.darray*, %struct.darray** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i8* @darray_item(i64 %33, %struct.darray* %34, i64 %35)
  store i8* %36, i8** %10, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.darray*, %struct.darray** %6, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i8* @darray_item(i64 %37, %struct.darray* %38, i64 %39)
  store i8* %40, i8** %11, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @memcpy(i8* %41, i8* %42, i64 %43)
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @memcpy(i8* %45, i8* %46, i64 %47)
  %49 = load i8*, i8** %11, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @memcpy(i8* %49, i8* %50, i64 %51)
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @free(i8* %53)
  br label %55

55:                                               ; preds = %30, %29
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i8* @darray_item(i64, %struct.darray*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
