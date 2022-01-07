; ModuleID = '/home/carl/AnghaBench/lz4/tests/extr_roundTripTest.c_roundTripTest.c'
source_filename = "/home/carl/AnghaBench/lz4/tests/extr_roundTripTest.c_roundTripTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LZ4HC_CLEVEL_MIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Compression error !\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Decompression detected an error !\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Decompression corruption error : wrong decompressed size !\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Silent decoding corruption, at pos %u !!!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i64, i8*, i64, i32)* @roundTripTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @roundTripTest(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32 (i8*, i8*, i32, i32, i32)*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %7
  %24 = load i32, i32* %14, align 4
  br label %29

25:                                               ; preds = %7
  %26 = load i8*, i8** %12, align 8
  %27 = load i64, i64* %13, align 8
  %28 = call i32 @select_clevel(i8* %26, i64 %27)
  br label %29

29:                                               ; preds = %25, %23
  %30 = phi i32 [ %24, %23 ], [ %28, %25 ]
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* %15, align 4
  %35 = sub nsw i32 0, %34
  br label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %15, align 4
  br label %38

38:                                               ; preds = %36, %33
  %39 = phi i32 [ %35, %33 ], [ %37, %36 ]
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* @LZ4HC_CLEVEL_MIN, align 4
  %42 = icmp sge i32 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 (i8*, i8*, i32, i32, i32)* @LZ4_compress_HC, i32 (i8*, i8*, i32, i32, i32)* @LZ4_compress_fast
  store i32 (i8*, i8*, i32, i32, i32)* %44, i32 (i8*, i8*, i32, i32, i32)** %17, align 8
  %45 = load i32 (i8*, i8*, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32)** %17, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i64, i64* %13, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i64, i64* %11, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* %16, align 4
  %53 = call i32 %45(i8* %46, i8* %47, i32 %49, i32 %51, i32 %52)
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %18, align 4
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 (i32, i8*, ...) @CONTROL_MSG(i32 %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %58 = load i8*, i8** %10, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %18, align 4
  %61 = load i64, i64* %9, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @LZ4_decompress_safe(i8* %58, i8* %59, i32 %60, i32 %62)
  store i32 %63, i32* %19, align 4
  %64 = load i32, i32* %19, align 4
  %65 = icmp slt i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, i8*, ...) @CONTROL_MSG(i32 %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* %19, align 4
  %69 = load i64, i64* %13, align 8
  %70 = trunc i64 %69 to i32
  %71 = icmp ne i32 %68, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 (i32, i8*, ...) @CONTROL_MSG(i32 %72, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %13, align 8
  %76 = icmp uge i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load i8*, i8** %12, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i64, i64* %13, align 8
  %82 = call i64 @checkBuffers(i8* %79, i8* %80, i64 %81)
  store i64 %82, i64* %20, align 8
  %83 = load i64, i64* %20, align 8
  %84 = load i64, i64* %13, align 8
  %85 = icmp ne i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i64, i64* %20, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 (i32, i8*, ...) @CONTROL_MSG(i32 %86, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  ret void
}

declare dso_local i32 @select_clevel(i8*, i64) #1

declare dso_local i32 @LZ4_compress_HC(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @LZ4_compress_fast(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @CONTROL_MSG(i32, i8*, ...) #1

declare dso_local i32 @LZ4_decompress_safe(i8*, i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @checkBuffers(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
