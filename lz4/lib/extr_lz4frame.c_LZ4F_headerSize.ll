; ModuleID = '/home/carl/AnghaBench/lz4/lib/extr_lz4frame.c_LZ4F_headerSize.c'
source_filename = "/home/carl/AnghaBench/lz4/lib/extr_lz4frame.c_LZ4F_headerSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LZ4F_ERROR_srcPtr_wrong = common dso_local global i32 0, align 4
@LZ4F_MIN_SIZE_TO_KNOW_HEADER_LENGTH = common dso_local global i64 0, align 8
@LZ4F_ERROR_frameHeader_incomplete = common dso_local global i32 0, align 4
@LZ4F_MAGIC_SKIPPABLE_START = common dso_local global i32 0, align 4
@LZ4F_MAGICNUMBER = common dso_local global i32 0, align 4
@LZ4F_ERROR_frameType_unknown = common dso_local global i32 0, align 4
@_1BIT = common dso_local global i32 0, align 4
@minFHSize = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @LZ4F_headerSize(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @LZ4F_ERROR_srcPtr_wrong, align 4
  %13 = call i64 @err0r(i32 %12)
  store i64 %13, i64* %3, align 8
  br label %61

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @LZ4F_MIN_SIZE_TO_KNOW_HEADER_LENGTH, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @LZ4F_ERROR_frameHeader_incomplete, align 4
  %20 = call i64 @err0r(i32 %19)
  store i64 %20, i64* %3, align 8
  br label %61

21:                                               ; preds = %14
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @LZ4F_readLE32(i8* %22)
  %24 = and i32 %23, -16
  %25 = load i32, i32* @LZ4F_MAGIC_SKIPPABLE_START, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i64 8, i64* %3, align 8
  br label %61

28:                                               ; preds = %21
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @LZ4F_readLE32(i8* %29)
  %31 = load i32, i32* @LZ4F_MAGICNUMBER, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @LZ4F_ERROR_frameType_unknown, align 4
  %35 = call i64 @err0r(i32 %34)
  store i64 %35, i64* %3, align 8
  br label %61

36:                                               ; preds = %28
  %37 = load i8*, i8** %4, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 3
  %43 = load i32, i32* @_1BIT, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @_1BIT, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %8, align 4
  %48 = load i64, i64* @minFHSize, align 8
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 8, i32 0
  %53 = sext i32 %52 to i64
  %54 = add i64 %48, %53
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 4, i32 0
  %59 = sext i32 %58 to i64
  %60 = add i64 %54, %59
  store i64 %60, i64* %3, align 8
  br label %61

61:                                               ; preds = %36, %33, %27, %18, %11
  %62 = load i64, i64* %3, align 8
  ret i64 %62
}

declare dso_local i64 @err0r(i32) #1

declare dso_local i32 @LZ4F_readLE32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
