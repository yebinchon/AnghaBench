; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_rijndael.c_aes_cbc_decrypt.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_rijndael.c_aes_cbc_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aes_cbc_decrypt(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca [4 x i32], align 16
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32*, i32** %7, align 8
  store i32* %13, i32** %9, align 8
  store i32 16, i32* %10, align 4
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @memcpy(i32* %14, i32* %15, i32 %16)
  br label %18

18:                                               ; preds = %22, %4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp uge i32 %19, %20
  br i1 %21, label %22, label %84

22:                                               ; preds = %18
  %23 = load i32*, i32** %9, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32 %25, i32* %26, align 16
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  store i32 %33, i32* %34, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @rijndael_decrypt(i32* %39, i32* %40, i32* %41)
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %44 = load i32, i32* %43, align 16
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = xor i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = xor i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %68 = load i32, i32* %67, align 16
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %68, i32* %69, align 16
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  store i32 %74, i32* %75, align 8
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  store i32 %77, i32* %78, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  store i32* %80, i32** %9, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %8, align 4
  %83 = sub i32 %82, %81
  store i32 %83, i32* %8, align 4
  br label %18

84:                                               ; preds = %18
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @rijndael_decrypt(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
