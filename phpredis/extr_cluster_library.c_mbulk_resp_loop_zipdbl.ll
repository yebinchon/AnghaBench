; ModuleID = '/home/carl/AnghaBench/phpredis/extr_cluster_library.c_mbulk_resp_loop_zipdbl.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_cluster_library.c_mbulk_resp_loop_zipdbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbulk_resp_loop_zipdbl(i32* %0, i32* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  %18 = load i64, i64* %8, align 8
  %19 = srem i64 %18, 2
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %78

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %75, %22
  %24 = load i64, i64* %8, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %8, align 8
  %26 = icmp ne i64 %24, 0
  br i1 %26, label %27, label %76

27:                                               ; preds = %23
  %28 = load i32*, i32** %6, align 8
  %29 = call i8* @redis_sock_read(i32* %28, i32* %12)
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %75

32:                                               ; preds = %27
  %33 = load i64, i64* %14, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %14, align 8
  %35 = srem i64 %33, 2
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i8*, i8** %10, align 8
  store i8* %38, i8** %11, align 8
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %13, align 4
  br label %74

40:                                               ; preds = %32
  store i32* %15, i32** %16, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load i32*, i32** %16, align 8
  %45 = call i64 @redis_unpack(i32* %41, i8* %42, i32 %43, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %40
  %48 = load i32*, i32** %16, align 8
  %49 = call i32* @zval_get_string(i32* %48)
  store i32* %49, i32** %17, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %17, align 8
  %52 = call i8* @ZSTR_VAL(i32* %51)
  %53 = load i32*, i32** %17, align 8
  %54 = call i32 @ZSTR_LEN(i32* %53)
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @atof(i8* %55)
  %57 = call i32 @add_assoc_double_ex(i32* %50, i8* %52, i32 %54, i32 %56)
  %58 = load i32*, i32** %17, align 8
  %59 = call i32 @zend_string_release(i32* %58)
  %60 = load i32*, i32** %16, align 8
  %61 = call i32 @zval_dtor(i32* %60)
  br label %69

62:                                               ; preds = %40
  %63 = load i32*, i32** %7, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @atof(i8* %66)
  %68 = call i32 @add_assoc_double_ex(i32* %63, i8* %64, i32 %65, i32 %67)
  br label %69

69:                                               ; preds = %62, %47
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @efree(i8* %70)
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 @efree(i8* %72)
  br label %74

74:                                               ; preds = %69, %37
  br label %75

75:                                               ; preds = %74, %27
  br label %23

76:                                               ; preds = %23
  %77 = load i32, i32* @SUCCESS, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %76, %21
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i8* @redis_sock_read(i32*, i32*) #1

declare dso_local i64 @redis_unpack(i32*, i8*, i32, i32*) #1

declare dso_local i32* @zval_get_string(i32*) #1

declare dso_local i32 @add_assoc_double_ex(i32*, i8*, i32, i32) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @atof(i8*) #1

declare dso_local i32 @zend_string_release(i32*) #1

declare dso_local i32 @zval_dtor(i32*) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
