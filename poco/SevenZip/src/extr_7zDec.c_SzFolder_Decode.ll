; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_7zDec.c_SzFolder_Decode.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_7zDec.c_SzFolder_Decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SzFolder_Decode(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [3 x i32*], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = bitcast [3 x i32*]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 24, i1 false)
  %19 = load i32*, i32** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32*, i32** %12, align 8
  %24 = load i64, i64* %13, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32*, i32** %14, align 8
  %27 = getelementptr inbounds [3 x i32*], [3 x i32*]* %15, i64 0, i64 0
  %28 = call i32 @SzFolder_Decode2(i32* %19, i32* %20, i32* %21, i32 %22, i32* %23, i32 %25, i32* %26, i32** %27)
  store i32 %28, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %29

29:                                               ; preds = %39, %7
  %30 = load i32, i32* %16, align 4
  %31 = icmp slt i32 %30, 3
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i32*, i32** %14, align 8
  %34 = load i32, i32* %16, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [3 x i32*], [3 x i32*]* %15, i64 0, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @IAlloc_Free(i32* %33, i32* %37)
  br label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %16, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %16, align 4
  br label %29

42:                                               ; preds = %29
  %43 = load i32, i32* %17, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SzFolder_Decode2(i32*, i32*, i32*, i32, i32*, i32, i32*, i32**) #2

declare dso_local i32 @IAlloc_Free(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
