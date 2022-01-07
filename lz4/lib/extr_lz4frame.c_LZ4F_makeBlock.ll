; ModuleID = '/home/carl/AnghaBench/lz4/lib/extr_lz4frame.c_LZ4F_makeBlock.c'
source_filename = "/home/carl/AnghaBench/lz4/lib/extr_lz4frame.c_LZ4F_makeBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BHSize = common dso_local global i32 0, align 4
@LZ4F_BLOCKUNCOMPRESSED_FLAG = common dso_local global i32 0, align 4
@BFSize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64, i64 (i8*, i8*, i8*, i32, i32, i32, i32*)*, i8*, i32, i32*, i64)* @LZ4F_makeBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @LZ4F_makeBlock(i8* %0, i8* %1, i64 %2, i64 (i8*, i8*, i8*, i32, i32, i32, i32*)* %3, i8* %4, i32 %5, i32* %6, i64 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64 (i8*, i8*, i8*, i32, i32, i32, i32*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 (i8*, i8*, i8*, i32, i32, i32, i32*)* %3, i64 (i8*, i8*, i8*, i32, i32, i32, i32*)** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i64 %7, i64* %16, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %17, align 8
  %22 = load i64 (i8*, i8*, i8*, i32, i32, i32, i32*)*, i64 (i8*, i8*, i8*, i32, i32, i32, i32*)** %12, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i32*, i32** %17, align 8
  %26 = load i32, i32* @BHSize, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = bitcast i32* %28 to i8*
  %30 = load i64, i64* %11, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i64, i64* %11, align 8
  %33 = sub i64 %32, 1
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* %14, align 4
  %36 = load i32*, i32** %15, align 8
  %37 = call i64 %22(i8* %23, i8* %24, i8* %29, i32 %31, i32 %34, i32 %35, i32* %36)
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %18, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %8
  %42 = load i64, i64* %11, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %18, align 4
  %44 = load i32*, i32** %17, align 8
  %45 = load i32, i32* %18, align 4
  %46 = load i32, i32* @LZ4F_BLOCKUNCOMPRESSED_FLAG, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @LZ4F_writeLE32(i32* %44, i32 %47)
  %49 = load i32*, i32** %17, align 8
  %50 = load i32, i32* @BHSize, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i8*, i8** %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @memcpy(i32* %52, i8* %53, i64 %54)
  br label %60

56:                                               ; preds = %8
  %57 = load i32*, i32** %17, align 8
  %58 = load i32, i32* %18, align 4
  %59 = call i32 @LZ4F_writeLE32(i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %41
  %61 = load i64, i64* %16, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %60
  %64 = load i32*, i32** %17, align 8
  %65 = load i32, i32* @BHSize, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %18, align 4
  %69 = call i32 @XXH32(i32* %67, i32 %68, i32 0)
  store i32 %69, i32* %19, align 4
  %70 = load i32*, i32** %17, align 8
  %71 = load i32, i32* @BHSize, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %18, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %19, align 4
  %78 = call i32 @LZ4F_writeLE32(i32* %76, i32 %77)
  br label %79

79:                                               ; preds = %63, %60
  %80 = load i32, i32* @BHSize, align 4
  %81 = load i32, i32* %18, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i64, i64* %16, align 8
  %84 = trunc i64 %83 to i32
  %85 = load i32, i32* @BFSize, align 4
  %86 = mul nsw i32 %84, %85
  %87 = add nsw i32 %82, %86
  %88 = sext i32 %87 to i64
  ret i64 %88
}

declare dso_local i32 @LZ4F_writeLE32(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @XXH32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
