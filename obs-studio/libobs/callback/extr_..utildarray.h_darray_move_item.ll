; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/callback/extr_..utildarray.h_darray_move_item.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/callback/extr_..utildarray.h_darray_move_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.darray = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.darray*, i64, i64)* @darray_move_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @darray_move_item(i64 %0, %struct.darray* %1, i64 %2, i64 %3) #0 {
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
  %13 = load i64, i64* %8, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %67

16:                                               ; preds = %4
  %17 = load i64, i64* %5, align 8
  %18 = call i8* @malloc(i64 %17)
  store i8* %18, i8** %9, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.darray*, %struct.darray** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i8* @darray_item(i64 %19, %struct.darray* %20, i64 %21)
  store i8* %22, i8** %10, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.darray*, %struct.darray** %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i8* @darray_item(i64 %23, %struct.darray* %24, i64 %25)
  store i8* %26, i8** %11, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @memcpy(i8* %27, i8* %28, i64 %29)
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %16
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.darray*, %struct.darray** %6, align 8
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %37, 1
  %39 = call i8* @darray_item(i64 %35, %struct.darray* %36, i64 %38)
  %40 = load i8*, i8** %11, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = sub i64 %42, %43
  %45 = mul i64 %41, %44
  %46 = call i32 @memmove(i8* %39, i8* %40, i64 %45)
  br label %60

47:                                               ; preds = %16
  %48 = load i8*, i8** %10, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.darray*, %struct.darray** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, 1
  %53 = call i8* @darray_item(i64 %49, %struct.darray* %50, i64 %52)
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %7, align 8
  %57 = sub i64 %55, %56
  %58 = mul i64 %54, %57
  %59 = call i32 @memmove(i8* %48, i8* %53, i64 %58)
  br label %60

60:                                               ; preds = %47, %34
  %61 = load i8*, i8** %11, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @memcpy(i8* %61, i8* %62, i64 %63)
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @free(i8* %65)
  br label %67

67:                                               ; preds = %60, %15
  ret void
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i8* @darray_item(i64, %struct.darray*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
