; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_u2d_time.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_u2d_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_zip_u2d_time(i32 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.tm*, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = call %struct.tm* @localtime(i32* %4)
  store %struct.tm* %8, %struct.tm** %7, align 8
  %9 = load %struct.tm*, %struct.tm** %7, align 8
  %10 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1900
  %13 = sub nsw i32 %12, 1980
  %14 = shl i32 %13, 9
  %15 = load %struct.tm*, %struct.tm** %7, align 8
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  %19 = shl i32 %18, 5
  %20 = add nsw i32 %14, %19
  %21 = sext i32 %20 to i64
  %22 = load %struct.tm*, %struct.tm** %7, align 8
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = load i64*, i64** %6, align 8
  store i64 %25, i64* %26, align 8
  %27 = load %struct.tm*, %struct.tm** %7, align 8
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 %29, 11
  %31 = load %struct.tm*, %struct.tm** %7, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 5
  %35 = add nsw i32 %30, %34
  %36 = load %struct.tm*, %struct.tm** %7, align 8
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = ashr i32 %38, 1
  %40 = add nsw i32 %35, %39
  %41 = sext i32 %40 to i64
  %42 = load i64*, i64** %5, align 8
  store i64 %41, i64* %42, align 8
  ret void
}

declare dso_local %struct.tm* @localtime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
