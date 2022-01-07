; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_password.c_php_password_algo_extract_ident.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_password.c_php_password_algo_extract_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @php_password_algo_extract_ident(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @ZSTR_LEN(i32* %9)
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  store i32* null, i32** %2, align 8
  br label %31

13:                                               ; preds = %8
  %14 = load i32*, i32** %3, align 8
  %15 = call i8* @ZSTR_VAL(i32* %14)
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i8* @strchr(i8* %17, i8 signext 36)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  store i32* null, i32** %2, align 8
  br label %31

22:                                               ; preds = %13
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  %30 = call i32* @zend_string_init(i8* %23, i32 %29, i32 0)
  store i32* %30, i32** %2, align 8
  br label %31

31:                                               ; preds = %22, %21, %12
  %32 = load i32*, i32** %2, align 8
  ret i32* %32
}

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32* @zend_string_init(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
