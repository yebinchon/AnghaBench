; ModuleID = '/home/carl/AnghaBench/phpredis/extr_cluster_library.c_mbulk_resp_loop_zipstr.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_cluster_library.c_mbulk_resp_loop_zipstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbulk_resp_loop_zipstr(i32* %0, i32* %1, i64 %2, i8* %3) #0 {
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
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  %16 = load i64, i64* %8, align 8
  %17 = srem i64 %16, 2
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %64

20:                                               ; preds = %4
  br label %21

21:                                               ; preds = %61, %20
  %22 = load i64, i64* %8, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %8, align 8
  %24 = icmp ne i64 %22, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %21
  %26 = load i32*, i32** %6, align 8
  %27 = call i8* @redis_sock_read(i32* %26, i32* %12)
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %64

31:                                               ; preds = %25
  %32 = load i64, i64* %14, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %14, align 8
  %34 = srem i64 %32, 2
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i8*, i8** %10, align 8
  store i8* %37, i8** %11, align 8
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %13, align 4
  br label %61

39:                                               ; preds = %31
  %40 = load i32*, i32** %6, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i64 @redis_unpack(i32* %40, i8* %41, i32 %42, i32* %15)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32*, i32** %7, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @add_assoc_zval(i32* %46, i8* %47, i32* %15)
  br label %56

49:                                               ; preds = %39
  %50 = load i32*, i32** %7, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @add_assoc_stringl_ex(i32* %50, i8* %51, i32 %52, i8* %53, i32 %54)
  br label %56

56:                                               ; preds = %49, %45
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @efree(i8* %57)
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @efree(i8* %59)
  br label %61

61:                                               ; preds = %56, %36
  br label %21

62:                                               ; preds = %21
  %63 = load i32, i32* @SUCCESS, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %30, %19
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i8* @redis_sock_read(i32*, i32*) #1

declare dso_local i64 @redis_unpack(i32*, i8*, i32, i32*) #1

declare dso_local i32 @add_assoc_zval(i32*, i8*, i32*) #1

declare dso_local i32 @add_assoc_stringl_ex(i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
