; ModuleID = '/home/carl/AnghaBench/lz4/programs/extr_lz4io.c_LZ4IO_skipBlocksData.c'
source_filename = "/home/carl/AnghaBench/lz4/programs/extr_lz4io.c_LZ4IO_skipBlocksData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LZ4F_BLOCK_HEADER_SIZE = common dso_local global i32 0, align 4
@LZ4F_BLOCK_CHECKSUM_SIZE = common dso_local global i64 0, align 8
@LZ4F_CONTENT_CHECKSUM_SIZE = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i64)* @LZ4IO_skipBlocksData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @LZ4IO_skipBlocksData(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i32, i32* @LZ4F_BLOCK_HEADER_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %18

18:                                               ; preds = %71, %3
  %19 = load i32, i32* @LZ4F_BLOCK_HEADER_SIZE, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @fread(i8* %17, i32 1, i32 %19, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @feof(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i64, i64* %10, align 8
  store i64 %28, i64* %4, align 8
  store i32 1, i32* %11, align 4
  br label %74

29:                                               ; preds = %23
  store i64 0, i64* %4, align 8
  store i32 1, i32* %11, align 4
  br label %74

30:                                               ; preds = %18
  %31 = load i32, i32* @LZ4F_BLOCK_HEADER_SIZE, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %10, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %10, align 8
  %35 = bitcast i8* %17 to i8**
  %36 = call i32 @LZ4IO_readLE32(i8** %35)
  %37 = and i32 %36, 2147483647
  %38 = zext i32 %37 to i64
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @LZ4F_BLOCK_CHECKSUM_SIZE, align 8
  %42 = mul i64 %40, %41
  %43 = add i64 %39, %42
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %30
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load i32*, i32** %5, align 8
  %51 = load i64, i64* @LZ4F_CONTENT_CHECKSUM_SIZE, align 8
  %52 = load i32, i32* @SEEK_CUR, align 4
  %53 = call i64 @UTIL_fseek(i32* %50, i64 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i64 0, i64* %4, align 8
  store i32 1, i32* %11, align 4
  br label %74

56:                                               ; preds = %49
  %57 = load i64, i64* @LZ4F_CONTENT_CHECKSUM_SIZE, align 8
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %10, align 8
  br label %60

60:                                               ; preds = %56, %46
  br label %72

61:                                               ; preds = %30
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* %10, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %10, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i64, i64* %13, align 8
  %67 = load i32, i32* @SEEK_CUR, align 4
  %68 = call i64 @UTIL_fseek(i32* %65, i64 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  store i64 0, i64* %4, align 8
  store i32 1, i32* %11, align 4
  br label %74

71:                                               ; preds = %61
  br label %18

72:                                               ; preds = %60
  %73 = load i64, i64* %10, align 8
  store i64 %73, i64* %4, align 8
  store i32 1, i32* %11, align 4
  br label %74

74:                                               ; preds = %72, %70, %55, %29, %27
  %75 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i64, i64* %4, align 8
  ret i64 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #2

declare dso_local i64 @feof(i32*) #2

declare dso_local i32 @LZ4IO_readLE32(i8**) #2

declare dso_local i64 @UTIL_fseek(i32*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
