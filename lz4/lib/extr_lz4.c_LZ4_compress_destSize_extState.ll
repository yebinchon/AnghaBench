; ModuleID = '/home/carl/AnghaBench/lz4/lib/extr_lz4.c_LZ4_compress_destSize_extState.c'
source_filename = "/home/carl/AnghaBench/lz4/lib/extr_lz4.c_LZ4_compress_destSize_extState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@LZ4_64Klimit = common dso_local global i32 0, align 4
@fillOutput = common dso_local global i32 0, align 4
@byU16 = common dso_local global i32 0, align 4
@noDict = common dso_local global i32 0, align 4
@noDictIssue = common dso_local global i32 0, align 4
@byU32 = common dso_local global i32 0, align 4
@LZ4_DISTANCE_MAX = common dso_local global i64 0, align 8
@byPtr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i8*, i32*, i32)* @LZ4_compress_destSize_extState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LZ4_compress_destSize_extState(%struct.TYPE_5__* %0, i8* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = call i8* @LZ4_initStream(%struct.TYPE_5__* %14, i32 4)
  store i8* %15, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = icmp ne i8* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i8*, i8** %12, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @LZ4_compressBound(i32 %23)
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %5
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @LZ4_compress_fast_extState(%struct.TYPE_5__* %27, i8* %28, i8* %29, i32 %31, i32 %32, i32 1)
  store i32 %33, i32* %6, align 4
  br label %68

34:                                               ; preds = %5
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @LZ4_64Klimit, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @fillOutput, align 4
  %49 = load i32, i32* @byU16, align 4
  %50 = load i32, i32* @noDict, align 4
  %51 = load i32, i32* @noDictIssue, align 4
  %52 = call i32 @LZ4_compress_generic(i32* %41, i8* %42, i8* %43, i32 %45, i32* %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 1)
  store i32 %52, i32* %6, align 4
  br label %68

53:                                               ; preds = %34
  %54 = load i32, i32* @byU32, align 4
  store i32 %54, i32* %13, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @fillOutput, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @noDict, align 4
  %66 = load i32, i32* @noDictIssue, align 4
  %67 = call i32 @LZ4_compress_generic(i32* %56, i8* %57, i8* %58, i32 %60, i32* %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 1)
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %53, %39, %26
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i8* @LZ4_initStream(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @LZ4_compressBound(i32) #1

declare dso_local i32 @LZ4_compress_fast_extState(%struct.TYPE_5__*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @LZ4_compress_generic(i32*, i8*, i8*, i32, i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
