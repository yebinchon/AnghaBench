; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dmusic/extr_dmobject.c_stream_chunk_get_wstr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dmusic/extr_dmobject.c_stream_chunk_get_wstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chunk_entry = type { i64 }

@S_FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stream_chunk_get_wstr(i32* %0, %struct.chunk_entry* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.chunk_entry*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.chunk_entry* %1, %struct.chunk_entry** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i64*, i64** %8, align 8
  %14 = load %struct.chunk_entry*, %struct.chunk_entry** %7, align 8
  %15 = getelementptr inbounds %struct.chunk_entry, %struct.chunk_entry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i64 @min(i64 %16, i64 %17)
  %19 = call i32 @IStream_Read(i32* %12, i64* %13, i64 %18, i64* %10)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i64 @FAILED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %5, align 4
  br label %41

25:                                               ; preds = %4
  %26 = load i64*, i64** %8, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %9, align 8
  %29 = sub nsw i64 %28, 1
  %30 = call i64 @min(i64 %27, i64 %29)
  %31 = getelementptr inbounds i64, i64* %26, i64 %30
  store i64 0, i64* %31, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load %struct.chunk_entry*, %struct.chunk_entry** %7, align 8
  %34 = getelementptr inbounds %struct.chunk_entry, %struct.chunk_entry* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32, i32* @S_FALSE, align 4
  store i32 %38, i32* %5, align 4
  br label %41

39:                                               ; preds = %25
  %40 = load i32, i32* @S_OK, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %37, %23
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @IStream_Read(i32*, i64*, i64, i64*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
