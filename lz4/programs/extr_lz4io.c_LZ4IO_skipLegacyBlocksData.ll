; ModuleID = '/home/carl/AnghaBench/lz4/programs/extr_lz4io.c_LZ4IO_skipLegacyBlocksData.c'
source_filename = "/home/carl/AnghaBench/lz4/programs/extr_lz4io.c_LZ4IO_skipLegacyBlocksData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LZIO_LEGACY_BLOCK_HEADER_SIZE = common dso_local global i32 0, align 4
@MAGICNUMBER_SIZE = common dso_local global i32 0, align 4
@LEGACY_MAGICNUMBER = common dso_local global i32 0, align 4
@LZ4IO_MAGICNUMBER = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @LZ4IO_skipLegacyBlocksData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @LZ4IO_skipLegacyBlocksData(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32, i32* @LZIO_LEGACY_BLOCK_HEADER_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %13 = load i32, i32* @LZIO_LEGACY_BLOCK_HEADER_SIZE, align 4
  %14 = load i32, i32* @MAGICNUMBER_SIZE, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @LZ4IO_STATIC_ASSERT(i32 %16)
  br label %18

18:                                               ; preds = %66, %1
  %19 = load i32, i32* @LZIO_LEGACY_BLOCK_HEADER_SIZE, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @fread(i8* %12, i32 1, i32 %19, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load i32*, i32** %3, align 8
  %25 = call i64 @feof(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i64, i64* %6, align 8
  store i64 %28, i64* %2, align 8
  store i32 1, i32* %7, align 4
  br label %69

29:                                               ; preds = %23
  store i64 0, i64* %2, align 8
  store i32 1, i32* %7, align 4
  br label %69

30:                                               ; preds = %18
  %31 = bitcast i8* %12 to i8**
  %32 = call i32 @LZ4IO_readLE32(i8** %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @LEGACY_MAGICNUMBER, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @LZ4IO_MAGICNUMBER, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @LZ4IO_isSkippableMagicNumber(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40, %36, %30
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* @LZIO_LEGACY_BLOCK_HEADER_SIZE, align 4
  %47 = sub nsw i32 0, %46
  %48 = load i32, i32* @SEEK_CUR, align 4
  %49 = call i64 @fseek(i32* %45, i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i64 0, i64* %2, align 8
  store i32 1, i32* %7, align 4
  br label %69

52:                                               ; preds = %44
  br label %67

53:                                               ; preds = %40
  %54 = load i32, i32* @LZIO_LEGACY_BLOCK_HEADER_SIZE, align 4
  %55 = load i32, i32* %8, align 4
  %56 = add i32 %54, %55
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %6, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @SEEK_CUR, align 4
  %63 = call i64 @UTIL_fseek(i32* %60, i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  store i64 0, i64* %2, align 8
  store i32 1, i32* %7, align 4
  br label %69

66:                                               ; preds = %53
  br label %18

67:                                               ; preds = %52
  %68 = load i64, i64* %6, align 8
  store i64 %68, i64* %2, align 8
  store i32 1, i32* %7, align 4
  br label %69

69:                                               ; preds = %67, %65, %51, %29, %27
  %70 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i64, i64* %2, align 8
  ret i64 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LZ4IO_STATIC_ASSERT(i32) #2

declare dso_local i32 @fread(i8*, i32, i32, i32*) #2

declare dso_local i64 @feof(i32*) #2

declare dso_local i32 @LZ4IO_readLE32(i8**) #2

declare dso_local i64 @LZ4IO_isSkippableMagicNumber(i32) #2

declare dso_local i64 @fseek(i32*, i32, i32) #2

declare dso_local i64 @UTIL_fseek(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
