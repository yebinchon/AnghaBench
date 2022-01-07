; ModuleID = '/home/carl/AnghaBench/phpredis/extr_cluster_library.c_mbulk_resp_loop_assoc.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_cluster_library.c_mbulk_resp_loop_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbulk_resp_loop_assoc(i32* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %11, align 4
  %15 = load i8*, i8** %8, align 8
  store i8* %15, i8** %12, align 8
  br label %16

16:                                               ; preds = %62, %4
  %17 = load i64, i64* %7, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %7, align 8
  %19 = icmp ne i64 %17, 0
  br i1 %19, label %20, label %72

20:                                               ; preds = %16
  %21 = load i8*, i8** %12, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = call i32* @zval_get_string(i8* %24)
  store i32* %25, i32** %13, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i8* @redis_sock_read(i32* %26, i32* %10)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %55

30:                                               ; preds = %20
  %31 = load i32*, i32** %5, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @redis_unpack(i32* %31, i8* %32, i32 %33, i8* %14)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i8*, i8** %6, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @ZSTR_VAL(i32* %38)
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 @ZSTR_LEN(i32* %40)
  %42 = call i32 @add_assoc_zval_ex(i8* %37, i32 %39, i32 %41, i8* %14)
  br label %52

43:                                               ; preds = %30
  %44 = load i8*, i8** %6, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 @ZSTR_VAL(i32* %45)
  %47 = load i32*, i32** %13, align 8
  %48 = call i32 @ZSTR_LEN(i32* %47)
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @add_assoc_stringl_ex(i8* %44, i32 %46, i32 %48, i8* %49, i32 %50)
  br label %52

52:                                               ; preds = %43, %36
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @efree(i8* %53)
  br label %62

55:                                               ; preds = %20
  %56 = load i8*, i8** %6, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @ZSTR_VAL(i32* %57)
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @ZSTR_LEN(i32* %59)
  %61 = call i32 @add_assoc_bool_ex(i8* %56, i32 %58, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %55, %52
  %63 = load i32*, i32** %13, align 8
  %64 = call i32 @zend_string_release(i32* %63)
  %65 = load i8*, i8** %12, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = call i32 @zval_dtor(i8* %68)
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %16

72:                                               ; preds = %16
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @efree(i8* %73)
  %75 = load i32, i32* @SUCCESS, align 4
  ret i32 %75
}

declare dso_local i32* @zval_get_string(i8*) #1

declare dso_local i8* @redis_sock_read(i32*, i32*) #1

declare dso_local i64 @redis_unpack(i32*, i8*, i32, i8*) #1

declare dso_local i32 @add_assoc_zval_ex(i8*, i32, i32, i8*) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @add_assoc_stringl_ex(i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @add_assoc_bool_ex(i8*, i32, i32, i32) #1

declare dso_local i32 @zend_string_release(i32*) #1

declare dso_local i32 @zval_dtor(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
