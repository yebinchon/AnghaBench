; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_password.c_php_password_bcrypt_verify.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_password.c_php_password_bcrypt_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @php_password_bcrypt_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_password_bcrypt_verify(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32* @ZSTR_VAL(i32* %9)
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @ZSTR_LEN(i32* %11)
  %13 = trunc i64 %12 to i32
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @ZSTR_VAL(i32* %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @ZSTR_LEN(i32* %16)
  %18 = trunc i64 %17 to i32
  %19 = call i32* @php_crypt(i32* %10, i32 %13, i32* %15, i32 %18, i32 1)
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

23:                                               ; preds = %2
  %24 = load i32*, i32** %8, align 8
  %25 = call i64 @ZSTR_LEN(i32* %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @ZSTR_LEN(i32* %26)
  %28 = icmp ne i64 %25, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @ZSTR_LEN(i32* %30)
  %32 = icmp ult i64 %31, 13
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %23
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @zend_string_free(i32* %34)
  store i32 0, i32* %3, align 4
  br label %65

36:                                               ; preds = %29
  store i64 0, i64* %6, align 8
  br label %37

37:                                               ; preds = %56, %36
  %38 = load i64, i64* %6, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i64 @ZSTR_LEN(i32* %39)
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %37
  %43 = load i32*, i32** %8, align 8
  %44 = call i32* @ZSTR_VAL(i32* %43)
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = call i32* @ZSTR_VAL(i32* %48)
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = xor i32 %47, %52
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %42
  %57 = load i64, i64* %6, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %6, align 8
  br label %37

59:                                               ; preds = %37
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @zend_string_free(i32* %60)
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 0
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %59, %33, %22
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32* @php_crypt(i32*, i32, i32*, i32, i32) #1

declare dso_local i32* @ZSTR_VAL(i32*) #1

declare dso_local i64 @ZSTR_LEN(i32*) #1

declare dso_local i32 @zend_string_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
