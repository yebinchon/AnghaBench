; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/win32/extr_....utildarray.h_darray_insert_array.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/win32/extr_....utildarray.h_darray_insert_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.darray = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.darray*, i64, i8*, i64)* @darray_insert_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @darray_insert_array(i64 %0, %struct.darray* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.darray*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store %struct.darray* %1, %struct.darray** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = icmp ne i8* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i64, i64* %10, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.darray*, %struct.darray** %7, align 8
  %22 = getelementptr inbounds %struct.darray, %struct.darray* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.darray*, %struct.darray** %7, align 8
  %28 = getelementptr inbounds %struct.darray, %struct.darray* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.darray*, %struct.darray** %7, align 8
  %32 = load %struct.darray*, %struct.darray** %7, align 8
  %33 = getelementptr inbounds %struct.darray, %struct.darray* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = add i64 %34, %35
  %37 = call i32 @darray_resize(i64 %30, %struct.darray* %31, i64 %36)
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.darray*, %struct.darray** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %10, align 8
  %42 = add i64 %40, %41
  %43 = call i32 @darray_item(i64 %38, %struct.darray* %39, i64 %42)
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.darray*, %struct.darray** %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @darray_item(i64 %44, %struct.darray* %45, i64 %46)
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %8, align 8
  %51 = sub i64 %49, %50
  %52 = mul i64 %48, %51
  %53 = call i32 @memmove(i32 %43, i32 %47, i64 %52)
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.darray*, %struct.darray** %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @darray_item(i64 %54, %struct.darray* %55, i64 %56)
  %58 = load i8*, i8** %9, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %10, align 8
  %61 = mul i64 %59, %60
  %62 = call i32 @memcpy(i32 %57, i8* %58, i64 %61)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @darray_resize(i64, %struct.darray*, i64) #1

declare dso_local i32 @memmove(i32, i32, i64) #1

declare dso_local i32 @darray_item(i64, %struct.darray*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
