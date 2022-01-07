; ModuleID = '/home/carl/AnghaBench/lz4/lib/extr_lz4.c_LZ4_compress_fast_extState.c'
source_filename = "/home/carl/AnghaBench/lz4/lib/extr_lz4.c_LZ4_compress_fast_extState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ACCELERATION_DEFAULT = common dso_local global i32 0, align 4
@LZ4_64Klimit = common dso_local global i32 0, align 4
@notLimited = common dso_local global i32 0, align 4
@byU16 = common dso_local global i32 0, align 4
@noDict = common dso_local global i32 0, align 4
@noDictIssue = common dso_local global i32 0, align 4
@byU32 = common dso_local global i32 0, align 4
@limitedOutput = common dso_local global i32 0, align 4
@LZ4_DISTANCE_MAX = common dso_local global i64 0, align 8
@byPtr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LZ4_compress_fast_extState(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = call %struct.TYPE_2__* @LZ4_initStream(i8* %17, i32 4)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32* %19, i32** %14, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* @ACCELERATION_DEFAULT, align 4
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %26, %6
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @LZ4_compressBound(i32 %30)
  %32 = icmp sge i32 %29, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %28
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @LZ4_64Klimit, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load i32*, i32** %14, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @notLimited, align 4
  %43 = load i32, i32* @byU16, align 4
  %44 = load i32, i32* @noDict, align 4
  %45 = load i32, i32* @noDictIssue, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @LZ4_compress_generic(i32* %38, i8* %39, i8* %40, i32 %41, i32* null, i32 0, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %7, align 4
  br label %89

48:                                               ; preds = %33
  %49 = load i32, i32* @byU32, align 4
  store i32 %49, i32* %15, align 4
  %50 = load i32*, i32** %14, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @notLimited, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* @noDict, align 4
  %57 = load i32, i32* @noDictIssue, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @LZ4_compress_generic(i32* %50, i8* %51, i8* %52, i32 %53, i32* null, i32 0, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  br label %89

60:                                               ; preds = %28
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @LZ4_64Klimit, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load i32*, i32** %14, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @limitedOutput, align 4
  %71 = load i32, i32* @byU16, align 4
  %72 = load i32, i32* @noDict, align 4
  %73 = load i32, i32* @noDictIssue, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @LZ4_compress_generic(i32* %65, i8* %66, i8* %67, i32 %68, i32* null, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %7, align 4
  br label %89

76:                                               ; preds = %60
  %77 = load i32, i32* @byU32, align 4
  store i32 %77, i32* %16, align 4
  %78 = load i32*, i32** %14, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @limitedOutput, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* @noDict, align 4
  %86 = load i32, i32* @noDictIssue, align 4
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @LZ4_compress_generic(i32* %78, i8* %79, i8* %80, i32 %81, i32* null, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87)
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %76, %64, %48, %37
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local %struct.TYPE_2__* @LZ4_initStream(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @LZ4_compressBound(i32) #1

declare dso_local i32 @LZ4_compress_generic(i32*, i8*, i8*, i32, i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
