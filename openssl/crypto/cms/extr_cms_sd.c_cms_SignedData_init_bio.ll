; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_sd.c_cms_SignedData_init_bio.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cms/extr_cms_sd.c_cms_SignedData_init_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @cms_SignedData_init_bio(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32* null, i32** %6, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = call %struct.TYPE_13__* @cms_get0_signed(%struct.TYPE_14__* %9)
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %5, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %12 = icmp ne %struct.TYPE_13__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %64

14:                                               ; preds = %1
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = call i32 @cms_sd_set_version(%struct.TYPE_13__* %25)
  br label %27

27:                                               ; preds = %24, %14
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %56, %27
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sk_X509_ALGOR_num(i32 %32)
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %28
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32* @sk_X509_ALGOR_value(i32 %38, i32 %39)
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32* @cms_DigestAlgorithm_init_bio(i32* %41)
  store i32* %42, i32** %8, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  br label %61

46:                                               ; preds = %35
  %47 = load i32*, i32** %6, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @BIO_push(i32* %50, i32* %51)
  br label %55

53:                                               ; preds = %46
  %54 = load i32*, i32** %8, align 8
  store i32* %54, i32** %6, align 8
  br label %55

55:                                               ; preds = %53, %49
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %28

59:                                               ; preds = %28
  %60 = load i32*, i32** %6, align 8
  store i32* %60, i32** %2, align 8
  br label %64

61:                                               ; preds = %45
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @BIO_free_all(i32* %62)
  store i32* null, i32** %2, align 8
  br label %64

64:                                               ; preds = %61, %59, %13
  %65 = load i32*, i32** %2, align 8
  ret i32* %65
}

declare dso_local %struct.TYPE_13__* @cms_get0_signed(%struct.TYPE_14__*) #1

declare dso_local i32 @cms_sd_set_version(%struct.TYPE_13__*) #1

declare dso_local i32 @sk_X509_ALGOR_num(i32) #1

declare dso_local i32* @sk_X509_ALGOR_value(i32, i32) #1

declare dso_local i32* @cms_DigestAlgorithm_init_bio(i32*) #1

declare dso_local i32 @BIO_push(i32*, i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
