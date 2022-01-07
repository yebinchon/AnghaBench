; ModuleID = '/home/carl/AnghaBench/lz4/examples/extr_frameCompress.c_decompress_file.c'
source_filename = "/home/carl/AnghaBench/lz4/examples/extr_frameCompress.c_decompress_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IN_CHUNK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"decompress_file(src)\00", align 1
@LZ4F_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"LZ4F_dctx creation error: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @decompress_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decompress_file(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* @IN_CHUNK_SIZE, align 4
  %19 = call i8* @malloc(i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = call i32 @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %52

24:                                               ; preds = %2
  %25 = load i32, i32* @LZ4F_VERSION, align 4
  %26 = call i64 @LZ4F_createDecompressionContext(i32** %7, i32 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @LZ4F_isError(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i64, i64* %8, align 8
  %32 = call i8* @LZ4F_getErrorName(i64 %31)
  %33 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %30, %24
  %35 = load i32*, i32** %7, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  br label %45

38:                                               ; preds = %34
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* @IN_CHUNK_SIZE, align 4
  %44 = call i32 @decompress_file_allocDst(i32* %39, i32* %40, i32* %41, i8* %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %37
  %46 = phi i32 [ 1, %37 ], [ %44, %38 ]
  store i32 %46, i32* %9, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @LZ4F_freeDecompressionContext(i32* %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %45, %22
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @LZ4F_createDecompressionContext(i32**, i32) #1

declare dso_local i64 @LZ4F_isError(i64) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @LZ4F_getErrorName(i64) #1

declare dso_local i32 @decompress_file_allocDst(i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @LZ4F_freeDecompressionContext(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
