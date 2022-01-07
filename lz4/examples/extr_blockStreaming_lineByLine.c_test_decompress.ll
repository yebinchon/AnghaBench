; ModuleID = '/home/carl/AnghaBench/lz4/examples/extr_blockStreaming_lineByLine.c_test_decompress.c'
source_filename = "/home/carl/AnghaBench/lz4/examples/extr_blockStreaming_lineByLine.c_test_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64, i64)* @test_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_decompress(i32* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = call i32* (...) @LZ4_createStreamDecode()
  store i32* %16, i32** %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @LZ4_COMPRESSBOUND(i64 %17)
  %19 = call i64 @malloc(i64 %18)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %10, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @malloc(i64 %21)
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %71, %4
  store i64 0, i64* %13, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @read_uint16(i32* %25, i64* %13)
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %72

29:                                               ; preds = %24
  %30 = load i64, i64* %13, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %72

33:                                               ; preds = %29
  %34 = load i32*, i32** %6, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i64, i64* %13, align 8
  %37 = call i64 @read_bin(i32* %34, i8* %35, i64 %36)
  %38 = load i64, i64* %13, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %72

41:                                               ; preds = %33
  %42 = load i8*, i8** %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8* %45, i8** %14, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* %7, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @LZ4_decompress_safe_continue(i32* %46, i8* %47, i8* %48, i64 %49, i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  br label %72

56:                                               ; preds = %41
  %57 = load i32*, i32** %5, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @write_bin(i32* %57, i8* %58, i32 %59)
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %7, align 8
  %68 = sub i64 %66, %67
  %69 = icmp uge i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %56
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %70, %56
  br label %24

72:                                               ; preds = %55, %40, %32, %28
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @free(i8* %75)
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @LZ4_freeStreamDecode(i32* %77)
  ret void
}

declare dso_local i32* @LZ4_createStreamDecode(...) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @LZ4_COMPRESSBOUND(i64) #1

declare dso_local i32 @read_uint16(i32*, i64*) #1

declare dso_local i64 @read_bin(i32*, i8*, i64) #1

declare dso_local i32 @LZ4_decompress_safe_continue(i32*, i8*, i8*, i64, i32) #1

declare dso_local i32 @write_bin(i32*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @LZ4_freeStreamDecode(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
