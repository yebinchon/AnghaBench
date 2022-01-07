; ModuleID = '/home/carl/AnghaBench/lz4/lib/extr_lz4hc.c_LZ4_compress_HC_extStateHC_fastReset.c'
source_filename = "/home/carl/AnghaBench/lz4/lib/extr_lz4hc.c_LZ4_compress_HC_extStateHC_fastReset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@limitedOutput = common dso_local global i32 0, align 4
@notLimited = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LZ4_compress_HC_extStateHC_fastReset(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_3__*
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32* %17, i32** %14, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = call i32 (...) @LZ4_streamHC_t_alignment()
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = and i64 %19, %22
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i8*, i8** %8, align 8
  %28 = ptrtoint i8* %27 to i64
  %29 = and i64 %28, 7
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %61

32:                                               ; preds = %6
  %33 = load i8*, i8** %8, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_3__*
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @LZ4_resetStreamHC_fast(%struct.TYPE_3__* %34, i32 %35)
  %37 = load i32*, i32** %14, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = call i32 @LZ4HC_init_internal(i32* %37, i32* %39)
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @LZ4_compressBound(i32 %42)
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %32
  %46 = load i32*, i32** %14, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @limitedOutput, align 4
  %52 = call i32 @LZ4HC_compress_generic(i32* %46, i8* %47, i8* %48, i32* %11, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %7, align 4
  br label %61

53:                                               ; preds = %32
  %54 = load i32*, i32** %14, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @notLimited, align 4
  %60 = call i32 @LZ4HC_compress_generic(i32* %54, i8* %55, i8* %56, i32* %11, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %53, %45, %31
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @LZ4_streamHC_t_alignment(...) #1

declare dso_local i32 @LZ4_resetStreamHC_fast(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @LZ4HC_init_internal(i32*, i32*) #1

declare dso_local i32 @LZ4_compressBound(i32) #1

declare dso_local i32 @LZ4HC_compress_generic(i32*, i8*, i8*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
