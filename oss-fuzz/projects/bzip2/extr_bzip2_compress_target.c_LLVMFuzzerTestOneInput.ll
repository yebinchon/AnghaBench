; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/bzip2/extr_bzip2_compress_target.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/bzip2/extr_bzip2_compress_target.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BZ_OK = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = add i64 %14, 600
  %16 = load i64, i64* %5, align 8
  %17 = udiv i64 %16, 100
  %18 = add i64 %15, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i8* @malloc(i32 %20)
  store i8* %21, i8** %12, align 8
  %22 = load i64, i64* %5, align 8
  %23 = urem i64 %22, 11
  %24 = add i64 %23, 1
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 %26, 9
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 9, i32* %7, align 4
  br label %29

29:                                               ; preds = %28, %2
  %30 = load i64, i64* %5, align 8
  %31 = urem i64 %30, 251
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %8, align 4
  %33 = load i8*, i8** %12, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = bitcast i32* %34 to i8*
  %36 = load i64, i64* %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @BZ2_bzBuffToBuffCompress(i8* %33, i32* %10, i8* %35, i64 %36, i32 %37, i32 0, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @BZ_OK, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = load i8*, i8** %12, align 8
  %45 = call i32 @free(i8* %44)
  store i32 0, i32* %3, align 4
  br label %86

46:                                               ; preds = %29
  %47 = load i64, i64* %5, align 8
  %48 = mul i64 %47, 2
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i8* @malloc(i32 %50)
  store i8* %51, i8** %13, align 8
  %52 = load i64, i64* %5, align 8
  %53 = urem i64 %52, 2
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %9, align 4
  %55 = load i8*, i8** %13, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @BZ2_bzBuffToBuffDecompress(i8* %55, i32* %11, i8* %56, i32 %57, i32 %58, i32 0)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @BZ_OK, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %46
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 @free(i8* %64)
  %66 = load i8*, i8** %13, align 8
  %67 = call i32 @free(i8* %66)
  store i32 0, i32* %3, align 4
  br label %86

68:                                               ; preds = %46
  %69 = load i32, i32* %11, align 4
  %70 = zext i32 %69 to i64
  %71 = load i64, i64* %5, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i32*, i32** %4, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = load i64, i64* %5, align 8
  %78 = call i64 @memcmp(i32* %75, i8* %76, i64 %77)
  %79 = icmp eq i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i8*, i8** %12, align 8
  %83 = call i32 @free(i8* %82)
  %84 = load i8*, i8** %13, align 8
  %85 = call i32 @free(i8* %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %68, %63, %43
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @BZ2_bzBuffToBuffCompress(i8*, i32*, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @BZ2_bzBuffToBuffDecompress(i8*, i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
