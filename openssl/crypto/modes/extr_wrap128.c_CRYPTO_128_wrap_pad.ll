; ModuleID = '/home/carl/AnghaBench/openssl/crypto/modes/extr_wrap128.c_CRYPTO_128_wrap_pad.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/modes/extr_wrap128.c_CRYPTO_128_wrap_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRYPTO128_WRAP_MAX = common dso_local global i64 0, align 8
@default_aiv = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CRYPTO_128_wrap_pad(i8* %0, i8* %1, i8* %2, i8* %3, i64 %4, i32 (i8*, i8*, i8*)* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32 (i8*, i8*, i8*)*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca [8 x i8], align 1
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 (i8*, i8*, i8*)* %5, i32 (i8*, i8*, i8*)** %13, align 8
  %19 = load i64, i64* %12, align 8
  %20 = add i64 %19, 7
  %21 = udiv i64 %20, 8
  store i64 %21, i64* %14, align 8
  %22 = load i64, i64* %14, align 8
  %23 = mul i64 %22, 8
  store i64 %23, i64* %15, align 8
  %24 = load i64, i64* %15, align 8
  %25 = load i64, i64* %12, align 8
  %26 = sub i64 %24, %25
  store i64 %26, i64* %16, align 8
  %27 = load i64, i64* %12, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %6
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* @CRYPTO128_WRAP_MAX, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %6
  store i64 0, i64* %7, align 8
  br label %107

34:                                               ; preds = %29
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 0
  %39 = load i8*, i8** @default_aiv, align 8
  %40 = call i32 @memcpy(i8* %38, i8* %39, i32 4)
  br label %45

41:                                               ; preds = %34
  %42 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 0
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @memcpy(i8* %42, i8* %43, i32 4)
  br label %45

45:                                               ; preds = %41, %37
  %46 = load i64, i64* %12, align 8
  %47 = lshr i64 %46, 24
  %48 = and i64 %47, 255
  %49 = trunc i64 %48 to i8
  %50 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 4
  store i8 %49, i8* %50, align 1
  %51 = load i64, i64* %12, align 8
  %52 = lshr i64 %51, 16
  %53 = and i64 %52, 255
  %54 = trunc i64 %53 to i8
  %55 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 5
  store i8 %54, i8* %55, align 1
  %56 = load i64, i64* %12, align 8
  %57 = lshr i64 %56, 8
  %58 = and i64 %57, 255
  %59 = trunc i64 %58 to i8
  %60 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 6
  store i8 %59, i8* %60, align 1
  %61 = load i64, i64* %12, align 8
  %62 = and i64 %61, 255
  %63 = trunc i64 %62 to i8
  %64 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 7
  store i8 %63, i8* %64, align 1
  %65 = load i64, i64* %15, align 8
  %66 = icmp eq i64 %65, 8
  br i1 %66, label %67, label %87

67:                                               ; preds = %45
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 8
  %70 = load i8*, i8** %11, align 8
  %71 = load i64, i64* %12, align 8
  %72 = call i32 @memmove(i8* %69, i8* %70, i64 %71)
  %73 = load i8*, i8** %10, align 8
  %74 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 0
  %75 = call i32 @memcpy(i8* %73, i8* %74, i32 8)
  %76 = load i8*, i8** %10, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 8
  %78 = load i64, i64* %12, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = load i64, i64* %16, align 8
  %81 = call i32 @memset(i8* %79, i32 0, i64 %80)
  %82 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %13, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 %82(i8* %83, i8* %84, i8* %85)
  store i32 16, i32* %18, align 4
  br label %104

87:                                               ; preds = %45
  %88 = load i8*, i8** %10, align 8
  %89 = load i8*, i8** %11, align 8
  %90 = load i64, i64* %12, align 8
  %91 = call i32 @memmove(i8* %88, i8* %89, i64 %90)
  %92 = load i8*, i8** %10, align 8
  %93 = load i64, i64* %12, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = load i64, i64* %16, align 8
  %96 = call i32 @memset(i8* %94, i32 0, i64 %95)
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 0
  %99 = load i8*, i8** %10, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = load i64, i64* %15, align 8
  %102 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %13, align 8
  %103 = call i32 @CRYPTO_128_wrap(i8* %97, i8* %98, i8* %99, i8* %100, i64 %101, i32 (i8*, i8*, i8*)* %102)
  store i32 %103, i32* %18, align 4
  br label %104

104:                                              ; preds = %87, %67
  %105 = load i32, i32* %18, align 4
  %106 = sext i32 %105 to i64
  store i64 %106, i64* %7, align 8
  br label %107

107:                                              ; preds = %104, %33
  %108 = load i64, i64* %7, align 8
  ret i64 %108
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @CRYPTO_128_wrap(i8*, i8*, i8*, i8*, i64, i32 (i8*, i8*, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
