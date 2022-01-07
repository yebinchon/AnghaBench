; ModuleID = '/home/carl/AnghaBench/openssl/crypto/sha/extr_keccak1600.c_SHA3_absorb.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/sha/extr_keccak1600.c_SHA3_absorb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SHA3_absorb([5 x i32]* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca [5 x i32]*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store [5 x i32]* %0, [5 x i32]** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load [5 x i32]*, [5 x i32]** %5, align 8
  %14 = bitcast [5 x i32]* %13 to i32*
  store i32* %14, i32** %9, align 8
  %15 = load i64, i64* %8, align 8
  %16 = udiv i64 %15, 8
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ult i64 %17, 100
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = urem i64 %20, 8
  %22 = icmp eq i64 %21, 0
  br label %23

23:                                               ; preds = %19, %4
  %24 = phi i1 [ false, %4 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  br label %27

27:                                               ; preds = %95, %23
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp uge i64 %28, %29
  br i1 %30, label %31, label %102

31:                                               ; preds = %27
  store i64 0, i64* %10, align 8
  br label %32

32:                                               ; preds = %92, %31
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %95

36:                                               ; preds = %32
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl i32 %44, 8
  %46 = or i32 %40, %45
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = shl i32 %50, 16
  %52 = or i32 %46, %51
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 3
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl i32 %56, 24
  %58 = or i32 %52, %57
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 4
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl i32 %62, 32
  %64 = or i32 %58, %63
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 5
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = shl i32 %68, 40
  %70 = or i32 %64, %69
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 6
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = shl i32 %74, 48
  %76 = or i32 %70, %75
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 7
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = shl i32 %80, 56
  %82 = or i32 %76, %81
  store i32 %82, i32* %12, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 8
  store i8* %84, i8** %6, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @BitInterleave(i32 %85)
  %87 = load i32*, i32** %9, align 8
  %88 = load i64, i64* %10, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = xor i32 %90, %86
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %36
  %93 = load i64, i64* %10, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %10, align 8
  br label %32

95:                                               ; preds = %32
  %96 = load [5 x i32]*, [5 x i32]** %5, align 8
  %97 = bitcast [5 x i32]* %96 to i32**
  %98 = call i32 @KeccakF1600(i32** %97)
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %7, align 8
  %101 = sub i64 %100, %99
  store i64 %101, i64* %7, align 8
  br label %27

102:                                              ; preds = %27
  %103 = load i64, i64* %7, align 8
  ret i64 %103
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @BitInterleave(i32) #1

declare dso_local i32 @KeccakF1600(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
