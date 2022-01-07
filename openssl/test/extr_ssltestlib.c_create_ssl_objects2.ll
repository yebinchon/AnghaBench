; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltestlib.c_create_ssl_objects2.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltestlib.c_create_ssl_objects2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIO_NOCLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_ssl_objects2(i32* %0, i32* %1, i32** %2, i32** %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %18 = load i32**, i32*** %10, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load i32**, i32*** %10, align 8
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %14, align 8
  br label %31

24:                                               ; preds = %6
  %25 = load i32*, i32** %8, align 8
  %26 = call i32* @SSL_new(i32* %25)
  store i32* %26, i32** %14, align 8
  %27 = call i32 @TEST_ptr(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %71

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %21
  %32 = load i32**, i32*** %11, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32**, i32*** %11, align 8
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %15, align 8
  br label %45

38:                                               ; preds = %31
  %39 = load i32*, i32** %9, align 8
  %40 = call i32* @SSL_new(i32* %39)
  store i32* %40, i32** %15, align 8
  %41 = call i32 @TEST_ptr(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %71

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %35
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @BIO_NOCLOSE, align 4
  %48 = call i32* @BIO_new_socket(i32 %46, i32 %47)
  store i32* %48, i32** %16, align 8
  %49 = call i32 @TEST_ptr(i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @BIO_NOCLOSE, align 4
  %54 = call i32* @BIO_new_socket(i32 %52, i32 %53)
  store i32* %54, i32** %17, align 8
  %55 = call i32 @TEST_ptr(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51, %45
  br label %71

58:                                               ; preds = %51
  %59 = load i32*, i32** %15, align 8
  %60 = load i32*, i32** %17, align 8
  %61 = load i32*, i32** %17, align 8
  %62 = call i32 @SSL_set_bio(i32* %59, i32* %60, i32* %61)
  %63 = load i32*, i32** %14, align 8
  %64 = load i32*, i32** %16, align 8
  %65 = load i32*, i32** %16, align 8
  %66 = call i32 @SSL_set_bio(i32* %63, i32* %64, i32* %65)
  %67 = load i32*, i32** %14, align 8
  %68 = load i32**, i32*** %10, align 8
  store i32* %67, i32** %68, align 8
  %69 = load i32*, i32** %15, align 8
  %70 = load i32**, i32*** %11, align 8
  store i32* %69, i32** %70, align 8
  store i32 1, i32* %7, align 4
  br label %80

71:                                               ; preds = %57, %43, %29
  %72 = load i32*, i32** %14, align 8
  %73 = call i32 @SSL_free(i32* %72)
  %74 = load i32*, i32** %15, align 8
  %75 = call i32 @SSL_free(i32* %74)
  %76 = load i32*, i32** %16, align 8
  %77 = call i32 @BIO_free(i32* %76)
  %78 = load i32*, i32** %17, align 8
  %79 = call i32 @BIO_free(i32* %78)
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %71, %58
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @SSL_new(i32*) #1

declare dso_local i32* @BIO_new_socket(i32, i32) #1

declare dso_local i32 @SSL_set_bio(i32*, i32*, i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
