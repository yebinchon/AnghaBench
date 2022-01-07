; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngpread.c_png_push_handle_unknown.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngpread.c_png_push_handle_unknown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, i32 (%struct.TYPE_15__*, %struct.TYPE_16__*)*, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8*, i32*, i64 }

@.str = private unnamed_addr constant [23 x i8] c"unknown critical chunk\00", align 1
@PNG_FLAG_KEEP_UNKNOWN_CHUNKS = common dso_local global i32 0, align 4
@PNG_HANDLE_CHUNK_ALWAYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_push_handle_unknown(%struct.TYPE_15__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @png_check_chunk_name(%struct.TYPE_15__* %8, i32* %11)
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = call i32 @png_chunk_error(%struct.TYPE_15__* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %3
  %25 = load i64, i64* %6, align 8
  store i64 %25, i64* %7, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @png_push_crc_skip(%struct.TYPE_15__* %26, i64 %27)
  ret void
}

declare dso_local i32 @png_check_chunk_name(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @png_chunk_error(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @png_push_crc_skip(%struct.TYPE_15__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
