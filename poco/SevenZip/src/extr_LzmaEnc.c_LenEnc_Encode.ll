; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_LzmaEnc.c_LenEnc_Encode.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_LzmaEnc.c_LenEnc_Encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64, i32, i64 }

@kLenNumLowSymbols = common dso_local global i64 0, align 8
@kLenNumLowBits = common dso_local global i64 0, align 8
@kLenNumMidSymbols = common dso_local global i64 0, align 8
@kLenNumMidBits = common dso_local global i64 0, align 8
@kLenNumHighBits = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i64, i64)* @LenEnc_Encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LenEnc_Encode(%struct.TYPE_3__* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @kLenNumLowSymbols, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %4
  %13 = load i32*, i32** %6, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = call i32 @RangeEnc_EncodeBit(i32* %13, i32* %15, i32 0)
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @kLenNumLowBits, align 8
  %23 = shl i64 %21, %22
  %24 = add nsw i64 %20, %23
  %25 = load i64, i64* @kLenNumLowBits, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @RcTree_Encode(i32* %17, i64 %24, i64 %25, i64 %26)
  br label %73

28:                                               ; preds = %4
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = call i32 @RangeEnc_EncodeBit(i32* %29, i32* %31, i32 1)
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @kLenNumLowSymbols, align 8
  %35 = load i64, i64* @kLenNumMidSymbols, align 8
  %36 = add nsw i64 %34, %35
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %28
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = call i32 @RangeEnc_EncodeBit(i32* %39, i32* %41, i32 0)
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @kLenNumMidBits, align 8
  %49 = shl i64 %47, %48
  %50 = add nsw i64 %46, %49
  %51 = load i64, i64* @kLenNumMidBits, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @kLenNumLowSymbols, align 8
  %54 = sub nsw i64 %52, %53
  %55 = call i32 @RcTree_Encode(i32* %43, i64 %50, i64 %51, i64 %54)
  br label %72

56:                                               ; preds = %28
  %57 = load i32*, i32** %6, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = call i32 @RangeEnc_EncodeBit(i32* %57, i32* %59, i32 1)
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @kLenNumHighBits, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @kLenNumLowSymbols, align 8
  %68 = sub nsw i64 %66, %67
  %69 = load i64, i64* @kLenNumMidSymbols, align 8
  %70 = sub nsw i64 %68, %69
  %71 = call i32 @RcTree_Encode(i32* %61, i64 %64, i64 %65, i64 %70)
  br label %72

72:                                               ; preds = %56, %38
  br label %73

73:                                               ; preds = %72, %12
  ret void
}

declare dso_local i32 @RangeEnc_EncodeBit(i32*, i32*, i32) #1

declare dso_local i32 @RcTree_Encode(i32*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
