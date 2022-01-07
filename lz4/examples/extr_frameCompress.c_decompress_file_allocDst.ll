; ModuleID = '/home/carl/AnghaBench/lz4/examples/extr_frameCompress.c_decompress_file_allocDst.c'
source_filename = "/home/carl/AnghaBench/lz4/examples/extr_frameCompress.c_decompress_file_allocDst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LZ4F_HEADER_SIZE_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Decompress: not enough input or error reading file\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"LZ4F_getFrameInfo error: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"decompress_file(dst)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i8*, i64)* @decompress_file_allocDst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decompress_file_allocDst(i32* %0, i32* %1, i32* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @LZ4F_HEADER_SIZE_MAX, align 8
  %37 = icmp uge i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i8*, i8** %10, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i64 @fread(i8* %40, i32 1, i64 %41, i32* %42)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %5
  %47 = load i32*, i32** %7, align 8
  %48 = call i64 @ferror(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46, %5
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %88

52:                                               ; preds = %46
  %53 = load i64, i64* %12, align 8
  store i64 %53, i64* %14, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = call i64 @LZ4F_getFrameInfo(i32* %54, i32* %13, i8* %55, i64* %14)
  store i64 %56, i64* %15, align 8
  %57 = load i64, i64* %15, align 8
  %58 = call i64 @LZ4F_isError(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i64, i64* %15, align 8
  %62 = call i8* @LZ4F_getErrorName(i64 %61)
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  store i32 1, i32* %6, align 4
  br label %88

64:                                               ; preds = %52
  %65 = call i64 @get_block_size(i32* %13)
  store i64 %65, i64* %16, align 8
  %66 = load i64, i64* %16, align 8
  %67 = call i8* @malloc(i64 %66)
  store i8* %67, i8** %17, align 8
  %68 = load i8*, i8** %17, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %64
  %71 = call i32 @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %88

72:                                               ; preds = %64
  %73 = load i32*, i32** %7, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %14, align 8
  %80 = sub i64 %78, %79
  %81 = load i64, i64* %14, align 8
  %82 = load i8*, i8** %17, align 8
  %83 = load i64, i64* %16, align 8
  %84 = call i32 @decompress_file_internal(i32* %73, i32* %74, i32* %75, i8* %76, i64 %77, i64 %80, i64 %81, i8* %82, i64 %83)
  store i32 %84, i32* %18, align 4
  %85 = load i8*, i8** %17, align 8
  %86 = call i32 @free(i8* %85)
  %87 = load i32, i32* %18, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %72, %70, %60, %50
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @LZ4F_getFrameInfo(i32*, i32*, i8*, i64*) #1

declare dso_local i64 @LZ4F_isError(i64) #1

declare dso_local i8* @LZ4F_getErrorName(i64) #1

declare dso_local i64 @get_block_size(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @decompress_file_internal(i32*, i32*, i32*, i8*, i64, i64, i64, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
