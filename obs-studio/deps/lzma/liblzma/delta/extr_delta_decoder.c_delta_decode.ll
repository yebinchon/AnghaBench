; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/delta/extr_delta_decoder.c_delta_decode.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/delta/extr_delta_decoder.c_delta_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)* @delta_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_decode(%struct.TYPE_6__* %0, i32* %1, i32* noalias %2, i64* noalias %3, i64 %4, i32* noalias %5, i64* noalias %6, i64 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i64* %3, i64** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32* %5, i32** %15, align 8
  store i64* %6, i64** %16, align 8
  store i64 %7, i64* %17, align 8
  store i32 %8, i32* %18, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)*, i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)** %23, align 8
  %25 = icmp ne i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i64*, i64** %16, align 8
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %19, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)*, i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)** %32, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = load i64*, i64** %13, align 8
  %41 = load i64, i64* %14, align 8
  %42 = load i32*, i32** %15, align 8
  %43 = load i64*, i64** %16, align 8
  %44 = load i64, i64* %17, align 8
  %45 = load i32, i32* %18, align 4
  %46 = call i32 %33(i32 %37, i32* %38, i32* %39, i64* %40, i64 %41, i32* %42, i64* %43, i64 %44, i32 %45)
  store i32 %46, i32* %20, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = load i64, i64* %19, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i64*, i64** %16, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %19, align 8
  %54 = sub i64 %52, %53
  %55 = call i32 @decode_buffer(%struct.TYPE_6__* %47, i32* %50, i64 %54)
  %56 = load i32, i32* %20, align 4
  ret i32 %56
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @decode_buffer(%struct.TYPE_6__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
