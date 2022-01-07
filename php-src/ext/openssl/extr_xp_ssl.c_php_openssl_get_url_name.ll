; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_get_url_name.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_xp_ssl.c_php_openssl_get_url_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i32)* @php_openssl_get_url_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @php_openssl_get_url_name(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %67

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call %struct.TYPE_4__* @php_url_parse_ex(i8* %16, i64 %17)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %8, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i8* null, i8** %4, align 8
  br label %67

22:                                               ; preds = %15
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %64

27:                                               ; preds = %22
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i8* @ZSTR_VAL(i64 %30)
  store i8* %31, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @ZSTR_LEN(i64 %34)
  store i64 %35, i64* %11, align 8
  br label %36

36:                                               ; preds = %49, %27
  %37 = load i64, i64* %11, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load i8*, i8** %9, align 8
  %41 = load i64, i64* %11, align 8
  %42 = sub i64 %41, 1
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 46
  br label %47

47:                                               ; preds = %39, %36
  %48 = phi i1 [ false, %36 ], [ %46, %39 ]
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i64, i64* %11, align 8
  %51 = add i64 %50, -1
  store i64 %51, i64* %11, align 8
  br label %36

52:                                               ; preds = %47
  %53 = load i64, i64* %11, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i8*, i8** %9, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i8* @pestrndup(i8* %56, i64 %57, i32 %58)
  store i8* %59, i8** %10, align 8
  br label %60

60:                                               ; preds = %55, %52
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %62 = call i32 @php_url_free(%struct.TYPE_4__* %61)
  %63 = load i8*, i8** %10, align 8
  store i8* %63, i8** %4, align 8
  br label %67

64:                                               ; preds = %22
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %66 = call i32 @php_url_free(%struct.TYPE_4__* %65)
  store i8* null, i8** %4, align 8
  br label %67

67:                                               ; preds = %64, %60, %21, %14
  %68 = load i8*, i8** %4, align 8
  ret i8* %68
}

declare dso_local %struct.TYPE_4__* @php_url_parse_ex(i8*, i64) #1

declare dso_local i8* @ZSTR_VAL(i64) #1

declare dso_local i64 @ZSTR_LEN(i64) #1

declare dso_local i8* @pestrndup(i8*, i64, i32) #1

declare dso_local i32 @php_url_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
