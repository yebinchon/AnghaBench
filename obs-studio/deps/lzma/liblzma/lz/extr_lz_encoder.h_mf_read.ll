; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lz/extr_lz_encoder.h_mf_read.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lz/extr_lz_encoder.h_mf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i64*, i64, i64*)* @mf_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mf_read(%struct.TYPE_3__* %0, i32* %1, i64* %2, i64 %3, i64* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64*, i64** %8, align 8
  %15 = load i64, i64* %14, align 8
  %16 = sub i64 %13, %15
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64*, i64** %10, align 8
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @my_min(i64 %17, i64 %19)
  store i64 %20, i64* %12, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64*, i64** %10, align 8
  %31 = load i64, i64* %30, align 8
  %32 = icmp uge i64 %29, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = load i64*, i64** %8, align 8
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %41, %44
  %46 = load i64*, i64** %10, align 8
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %45, %47
  %49 = load i64, i64* %12, align 8
  %50 = call i32 @memcpy(i32* %38, i64 %48, i64 %49)
  %51 = load i64, i64* %12, align 8
  %52 = load i64*, i64** %8, align 8
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, %51
  store i64 %54, i64* %52, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64*, i64** %10, align 8
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %57, %55
  store i64 %58, i64* %56, align 8
  ret void
}

declare dso_local i64 @my_min(i64, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
