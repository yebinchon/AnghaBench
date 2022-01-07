; ModuleID = '/home/carl/AnghaBench/openssl/crypto/modes/extr_siv128.c_CRYPTO_siv128_encrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/modes/extr_siv128.c_CRYPTO_siv128_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32* }

@SIV_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CRYPTO_siv128_encrypt(%struct.TYPE_11__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %58

16:                                               ; preds = %4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @siv128_do_s2v_p(%struct.TYPE_11__* %21, %struct.TYPE_10__* %10, i8* %22, i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %58

27:                                               ; preds = %16
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SIV_LEN, align 4
  %33 = call i32 @memcpy(i32 %31, %struct.TYPE_10__* %10, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 8
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 127
  store i32 %38, i32* %36, align 4
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 12
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 127
  store i32 %43, i32* %41, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @siv128_do_encrypt(i32 %46, i8* %47, i8* %48, i64 %49, %struct.TYPE_10__* %10)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %58

53:                                               ; preds = %27
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load i64, i64* %9, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %53, %52, %26, %15
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @siv128_do_s2v_p(%struct.TYPE_11__*, %struct.TYPE_10__*, i8*, i64) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @siv128_do_encrypt(i32, i8*, i8*, i64, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
