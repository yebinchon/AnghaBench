; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_LzmaEnc.c_LzmaEnc_MemEncode.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_LzmaEnc.c_LzmaEnc_MemEncode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_8__, i32* }

@MyWrite = common dso_local global i32 0, align 4
@False = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i64 0, align 8
@SZ_ERROR_OUTPUT_EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @LzmaEnc_MemEncode(i64 %0, i32* %1, i64* %2, i32* %3, i64 %4, i32 %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_10__*, align 8
  %22 = alloca %struct.TYPE_9__, align 8
  store i64 %0, i64* %11, align 8
  store i32* %1, i32** %12, align 8
  store i64* %2, i64** %13, align 8
  store i32* %3, i32** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %23 = load i64, i64* %11, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %21, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = load i64, i64* %15, align 8
  %28 = call i32 @LzmaEnc_SetInputBuf(%struct.TYPE_10__* %25, i32* %26, i64 %27)
  %29 = load i32, i32* @MyWrite, align 4
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 3
  store i32* %32, i32** %33, align 8
  %34 = load i64*, i64** %13, align 8
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  store i64 %35, i64* %36, align 8
  %37 = load i64, i64* @False, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = load i32, i32* %16, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %45, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = load i64, i64* %15, align 8
  %49 = load i32*, i32** %18, align 8
  %50 = load i32*, i32** %19, align 8
  %51 = call i64 @LzmaEnc_MemPrepare(i64 %46, i32* %47, i64 %48, i32 0, i32* %49, i32* %50)
  store i64 %51, i64* %20, align 8
  %52 = load i64, i64* %20, align 8
  %53 = load i64, i64* @SZ_OK, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %9
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %57 = load i32*, i32** %17, align 8
  %58 = call i64 @LzmaEnc_Encode2(%struct.TYPE_10__* %56, i32* %57)
  store i64 %58, i64* %20, align 8
  br label %59

59:                                               ; preds = %55, %9
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** %13, align 8
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %63, %61
  store i64 %64, i64* %62, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i64, i64* @SZ_ERROR_OUTPUT_EOF, align 8
  store i64 %69, i64* %10, align 8
  br label %72

70:                                               ; preds = %59
  %71 = load i64, i64* %20, align 8
  store i64 %71, i64* %10, align 8
  br label %72

72:                                               ; preds = %70, %68
  %73 = load i64, i64* %10, align 8
  ret i64 %73
}

declare dso_local i32 @LzmaEnc_SetInputBuf(%struct.TYPE_10__*, i32*, i64) #1

declare dso_local i64 @LzmaEnc_MemPrepare(i64, i32*, i64, i32, i32*, i32*) #1

declare dso_local i64 @LzmaEnc_Encode2(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
