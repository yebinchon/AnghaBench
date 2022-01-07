; ModuleID = '/home/carl/AnghaBench/lz4/programs/extr_lz4io.c_LZ4IO_decodeLegacyStream.c'
source_filename = "/home/carl/AnghaBench/lz4/programs/extr_lz4io.c_LZ4IO_decodeLegacyStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LEGACY_BLOCKSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Allocation error : not enough memory\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Read error : cannot access block size \00", align 1
@g_magicRead = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Read error : cannot access compressed block !\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Decoding Failed ! Corrupted input detected !\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Read error : ferror\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*)* @LZ4IO_decodeLegacyStream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @LZ4IO_decodeLegacyStream(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load i64, i64* @LEGACY_BLOCKSIZE, align 8
  %16 = call i64 @LZ4_compressBound(i64 %15)
  %17 = call i64 @malloc(i64 %16)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %9, align 8
  %19 = load i64, i64* @LEGACY_BLOCKSIZE, align 8
  %20 = call i64 @malloc(i64 %19)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24, %3
  %28 = call i32 @EXM_THROW(i32 51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %24
  br label %30

30:                                               ; preds = %29, %72
  %31 = load i8*, i8** %9, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 @fread(i8* %31, i32 1, i32 4, i32* %32)
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %84

37:                                               ; preds = %30
  %38 = load i64, i64* %12, align 8
  %39 = icmp ne i64 %38, 4
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @EXM_THROW(i32 52, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @LZ4IO_readLE32(i8* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i64, i64* @LEGACY_BLOCKSIZE, align 8
  %47 = call i32 @LZ4_COMPRESSBOUND(i64 %46)
  %48 = icmp ugt i32 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* @g_magicRead, align 4
  br label %84

51:                                               ; preds = %42
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = call i64 @fread(i8* %52, i32 1, i32 %53, i32* %54)
  store i64 %55, i64* %13, align 8
  %56 = load i64, i64* %13, align 8
  %57 = load i32, i32* %11, align 4
  %58 = zext i32 %57 to i64
  %59 = icmp ne i64 %56, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = call i32 @EXM_THROW(i32 52, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %51
  %63 = load i8*, i8** %9, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i64, i64* @LEGACY_BLOCKSIZE, align 8
  %67 = call i32 @LZ4_decompress_safe(i8* %63, i8* %64, i32 %65, i64 %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = call i32 @EXM_THROW(i32 53, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %62
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %7, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %7, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @LZ4IO_fwriteSparse(i32* %77, i32* %78, i8* %79, i64 %81, i32 %82)
  store i32 %83, i32* %8, align 4
  br label %30

84:                                               ; preds = %49, %36
  %85 = load i32*, i32** %5, align 8
  %86 = call i64 @ferror(i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = call i32 @EXM_THROW(i32 54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %84
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @LZ4IO_fwriteSparseEnd(i32* %91, i32 %92)
  %94 = load i8*, i8** %9, align 8
  %95 = call i32 @free(i8* %94)
  %96 = load i8*, i8** %10, align 8
  %97 = call i32 @free(i8* %96)
  %98 = load i64, i64* %7, align 8
  ret i64 %98
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @LZ4_compressBound(i64) #1

declare dso_local i32 @EXM_THROW(i32, i8*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @LZ4IO_readLE32(i8*) #1

declare dso_local i32 @LZ4_COMPRESSBOUND(i64) #1

declare dso_local i32 @LZ4_decompress_safe(i8*, i8*, i32, i64) #1

declare dso_local i32 @LZ4IO_fwriteSparse(i32*, i32*, i8*, i64, i32) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @LZ4IO_fwriteSparseEnd(i32*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
