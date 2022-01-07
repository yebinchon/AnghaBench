; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dmusic/extr_dmobject.h_stream_reset_chunk_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dmusic/extr_dmobject.h_stream_reset_chunk_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chunk_entry = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@FOURCC_RIFF = common dso_local global i64 0, align 8
@FOURCC_LIST = common dso_local global i64 0, align 8
@STREAM_SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.chunk_entry*)* @stream_reset_chunk_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stream_reset_chunk_data(i32* %0, %struct.chunk_entry* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.chunk_entry*, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %3, align 8
  store %struct.chunk_entry* %1, %struct.chunk_entry** %4, align 8
  %6 = load %struct.chunk_entry*, %struct.chunk_entry** %4, align 8
  %7 = getelementptr inbounds %struct.chunk_entry, %struct.chunk_entry* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %9, 4
  %11 = add i64 %10, 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i64 %11, i64* %12, align 8
  %13 = load %struct.chunk_entry*, %struct.chunk_entry** %4, align 8
  %14 = getelementptr inbounds %struct.chunk_entry, %struct.chunk_entry* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FOURCC_RIFF, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.chunk_entry*, %struct.chunk_entry** %4, align 8
  %20 = getelementptr inbounds %struct.chunk_entry, %struct.chunk_entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FOURCC_LIST, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18, %2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, 4
  store i64 %27, i64* %25, align 8
  br label %28

28:                                               ; preds = %24, %18
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @STREAM_SEEK_SET, align 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @IStream_Seek(i32* %29, i64 %32, i32 %30, i32* null)
  ret i32 %33
}

declare dso_local i32 @IStream_Seek(i32*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
