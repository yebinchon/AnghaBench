; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_bio.c_BIO_new_bio_pair.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_bio.c_BIO_new_bio_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BIO_new_bio_pair(i32** %0, i64 %1, i32** %2, i64 %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = call i32 (...) @BIO_s_bio()
  %14 = call i32* @BIO_new(i32 %13)
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %54

18:                                               ; preds = %4
  %19 = call i32 (...) @BIO_s_bio()
  %20 = call i32* @BIO_new(i32 %19)
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %54

24:                                               ; preds = %18
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32*, i32** %9, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @BIO_set_write_buf_size(i32* %28, i64 %29)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %54

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %24
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32*, i32** %10, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i64 @BIO_set_write_buf_size(i32* %39, i64 %40)
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %54

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %35
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i64 @BIO_make_bio_pair(i32* %47, i32* %48)
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  br label %54

53:                                               ; preds = %46
  store i32 1, i32* %12, align 4
  br label %54

54:                                               ; preds = %53, %52, %44, %33, %23, %17
  %55 = load i32, i32* %12, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @BIO_free(i32* %58)
  store i32* null, i32** %9, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @BIO_free(i32* %60)
  store i32* null, i32** %10, align 8
  br label %62

62:                                               ; preds = %57, %54
  %63 = load i32*, i32** %9, align 8
  %64 = load i32**, i32*** %5, align 8
  store i32* %63, i32** %64, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i32**, i32*** %7, align 8
  store i32* %65, i32** %66, align 8
  %67 = load i32, i32* %12, align 4
  ret i32 %67
}

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_bio(...) #1

declare dso_local i64 @BIO_set_write_buf_size(i32*, i64) #1

declare dso_local i64 @BIO_make_bio_pair(i32*, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
