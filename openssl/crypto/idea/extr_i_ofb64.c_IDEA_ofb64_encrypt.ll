; ModuleID = '/home/carl/AnghaBench/openssl/crypto/idea/extr_i_ofb64.c_IDEA_ofb64_encrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/idea/extr_i_ofb64.c_IDEA_ofb64_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IDEA_ofb64_encrypt(i8* %0, i8* %1, i64 %2, i32* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca [8 x i8], align 1
  %19 = alloca i8*, align 8
  %20 = alloca [2 x i64], align 16
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %16, align 4
  %25 = load i64, i64* %9, align 8
  store i64 %25, i64* %17, align 8
  store i32 0, i32* %22, align 4
  %26 = load i8*, i8** %11, align 8
  store i8* %26, i8** %21, align 8
  %27 = load i8*, i8** %21, align 8
  %28 = load i64, i64* %13, align 8
  %29 = call i32 @n2l(i8* %27, i64 %28)
  %30 = load i8*, i8** %21, align 8
  %31 = load i64, i64* %14, align 8
  %32 = call i32 @n2l(i8* %30, i64 %31)
  %33 = load i64, i64* %13, align 8
  %34 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  store i64 %33, i64* %34, align 16
  %35 = load i64, i64* %14, align 8
  %36 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  store i64 %35, i64* %36, align 8
  %37 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 0
  store i8* %37, i8** %19, align 8
  %38 = load i64, i64* %13, align 8
  %39 = load i8*, i8** %19, align 8
  %40 = call i32 (i64, ...) @l2n(i64 %38, i8* %39)
  %41 = load i64, i64* %14, align 8
  %42 = load i8*, i8** %19, align 8
  %43 = call i32 (i64, ...) @l2n(i64 %41, i8* %42)
  br label %44

44:                                               ; preds = %68, %6
  %45 = load i64, i64* %17, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %17, align 8
  %47 = icmp ne i64 %45, 0
  br i1 %47, label %48, label %85

48:                                               ; preds = %44
  %49 = load i32, i32* %16, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  %52 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @IDEA_encrypt(i64* %52, i32* %53)
  %55 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 0
  store i8* %55, i8** %19, align 8
  %56 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %57 = load i64, i64* %56, align 16
  store i64 %57, i64* %15, align 8
  %58 = load i64, i64* %15, align 8
  %59 = load i8*, i8** %19, align 8
  %60 = call i32 (i64, ...) @l2n(i64 %58, i8* %59)
  %61 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %15, align 8
  %63 = load i64, i64* %15, align 8
  %64 = load i8*, i8** %19, align 8
  %65 = call i32 (i64, ...) @l2n(i64 %63, i8* %64)
  %66 = load i32, i32* %22, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %22, align 4
  br label %68

68:                                               ; preds = %51, %48
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %7, align 8
  %71 = load i8, i8* %69, align 1
  %72 = zext i8 %71 to i32
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = xor i32 %72, %77
  %79 = trunc i32 %78 to i8
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %8, align 8
  store i8 %79, i8* %80, align 1
  %82 = load i32, i32* %16, align 4
  %83 = add nsw i32 %82, 1
  %84 = and i32 %83, 7
  store i32 %84, i32* %16, align 4
  br label %44

85:                                               ; preds = %44
  %86 = load i32, i32* %22, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %85
  %89 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %90 = load i64, i64* %89, align 16
  store i64 %90, i64* %13, align 8
  %91 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %14, align 8
  %93 = load i8*, i8** %11, align 8
  store i8* %93, i8** %21, align 8
  %94 = load i64, i64* %13, align 8
  %95 = load i8*, i8** %21, align 8
  %96 = call i32 (i64, ...) @l2n(i64 %94, i8* %95)
  %97 = load i64, i64* %14, align 8
  %98 = load i8*, i8** %21, align 8
  %99 = call i32 (i64, ...) @l2n(i64 %97, i8* %98)
  br label %100

100:                                              ; preds = %88, %85
  %101 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  store i64 0, i64* %101, align 8
  %102 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  store i64 0, i64* %102, align 16
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %15, align 8
  %103 = load i32, i32* %16, align 4
  %104 = load i32*, i32** %12, align 8
  store i32 %103, i32* %104, align 4
  ret void
}

declare dso_local i32 @n2l(i8*, i64) #1

declare dso_local i32 @l2n(i64, ...) #1

declare dso_local i32 @IDEA_encrypt(i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
