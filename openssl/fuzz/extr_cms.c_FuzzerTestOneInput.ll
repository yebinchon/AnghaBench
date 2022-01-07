; ModuleID = '/home/carl/AnghaBench/openssl/fuzz/extr_cms.c_FuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/openssl/fuzz/extr_cms.c_FuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

12:                                               ; preds = %2
  %13 = call i32 (...) @BIO_s_mem()
  %14 = call i32* @BIO_new(i32 %13)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @BIO_write(i32* %15, i32* %16, i64 %17)
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @OPENSSL_assert(i32 %21)
  %23 = load i32*, i32** %7, align 8
  %24 = call i32* @d2i_CMS_bio(i32* %23, i32* null)
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %12
  %28 = call i32 (...) @BIO_s_null()
  %29 = call i32* @BIO_new(i32 %28)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @i2d_CMS_bio(i32* %30, i32* %31)
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @BIO_free(i32* %33)
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @CMS_ContentInfo_free(i32* %35)
  br label %37

37:                                               ; preds = %27, %12
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @BIO_free(i32* %38)
  %40 = call i32 (...) @ERR_clear_error()
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %11
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_mem(...) #1

declare dso_local i32 @OPENSSL_assert(i32) #1

declare dso_local i64 @BIO_write(i32*, i32*, i64) #1

declare dso_local i32* @d2i_CMS_bio(i32*, i32*) #1

declare dso_local i32 @BIO_s_null(...) #1

declare dso_local i32 @i2d_CMS_bio(i32*, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @CMS_ContentInfo_free(i32*) #1

declare dso_local i32 @ERR_clear_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
