; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform.c_os_utf8_to_wcs_ptr.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform.c_os_utf8_to_wcs_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @os_utf8_to_wcs_ptr(i8* %0, i64 %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @os_utf8_to_wcs(i8* %12, i64 %13, i32* null, i64 0)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = add i64 %15, 1
  %17 = mul i64 %16, 4
  %18 = call i32* @bmalloc(i64 %17)
  %19 = load i32**, i32*** %7, align 8
  store i32* %18, i32** %19, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i32**, i32*** %7, align 8
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = add i64 %24, 1
  %26 = call i64 @os_utf8_to_wcs(i8* %20, i64 %21, i32* %23, i64 %25)
  store i64 %26, i64* %4, align 8
  br label %29

27:                                               ; preds = %3
  %28 = load i32**, i32*** %7, align 8
  store i32* null, i32** %28, align 8
  store i64 0, i64* %4, align 8
  br label %29

29:                                               ; preds = %27, %11
  %30 = load i64, i64* %4, align 8
  ret i64 %30
}

declare dso_local i64 @os_utf8_to_wcs(i8*, i64, i32*, i64) #1

declare dso_local i32* @bmalloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
