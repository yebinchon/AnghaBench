; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_add_type_string.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_add_type_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @add_type_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_type_string(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  %11 = call i32* @zend_string_copy(i32* %10)
  store i32* %11, i32** %3, align 8
  br label %58

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @ZSTR_LEN(i32* %13)
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @ZSTR_LEN(i32* %15)
  %17 = add nsw i32 %14, %16
  %18 = add nsw i32 %17, 1
  %19 = call i32* @zend_string_alloc(i32 %18, i32 0)
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i8* @ZSTR_VAL(i32* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call i8* @ZSTR_VAL(i32* %22)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @ZSTR_LEN(i32* %24)
  %26 = call i32 @memcpy(i8* %21, i8* %23, i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = call i8* @ZSTR_VAL(i32* %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @ZSTR_LEN(i32* %29)
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  store i8 124, i8* %32, align 1
  %33 = load i32*, i32** %6, align 8
  %34 = call i8* @ZSTR_VAL(i32* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @ZSTR_LEN(i32* %35)
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i32*, i32** %5, align 8
  %41 = call i8* @ZSTR_VAL(i32* %40)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @ZSTR_LEN(i32* %42)
  %44 = call i32 @memcpy(i8* %39, i8* %41, i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = call i8* @ZSTR_VAL(i32* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @ZSTR_LEN(i32* %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @ZSTR_LEN(i32* %49)
  %51 = add nsw i32 %48, %50
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %46, i64 %53
  store i8 0, i8* %54, align 1
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @zend_string_release(i32* %55)
  %57 = load i32*, i32** %6, align 8
  store i32* %57, i32** %3, align 8
  br label %58

58:                                               ; preds = %12, %9
  %59 = load i32*, i32** %3, align 8
  ret i32* %59
}

declare dso_local i32* @zend_string_copy(i32*) #1

declare dso_local i32* @zend_string_alloc(i32, i32) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i32 @zend_string_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
