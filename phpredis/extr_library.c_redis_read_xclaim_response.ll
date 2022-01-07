; ModuleID = '/home/carl/AnghaBench/phpredis/extr_library.c_redis_read_xclaim_response.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_library.c_redis_read_xclaim_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_BULK = common dso_local global i64 0, align 8
@TYPE_MULTIBULK = common dso_local global i64 0, align 8
@UNSERIALIZE_VALS = common dso_local global i32 0, align 4
@SCORE_DECODE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redis_read_xclaim_response(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %94, %3
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %97

19:                                               ; preds = %15
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @redis_read_reply_type(i32* %20, i64* %9, i64* %14)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @TYPE_BULK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @TYPE_MULTIBULK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %27, %23
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @TYPE_BULK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i64, i64* %14, align 8
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %27, %19
  store i32 -1, i32* %4, align 4
  br label %98

39:                                               ; preds = %35, %31
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @TYPE_BULK, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = load i32*, i32** %5, align 8
  %45 = load i64, i64* %14, align 8
  %46 = call i8* @redis_sock_read_bulk_reply(i32* %44, i64 %45)
  store i8* %46, i8** %10, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 -1, i32* %4, align 4
  br label %98

49:                                               ; preds = %43
  %50 = load i32*, i32** %7, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i64, i64* %14, align 8
  %53 = call i32 @add_next_index_stringl(i32* %50, i8* %51, i64 %52)
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @efree(i8* %54)
  br label %93

56:                                               ; preds = %39
  %57 = load i64, i64* %14, align 8
  %58 = icmp ne i64 %57, 2
  br i1 %58, label %71, label %59

59:                                               ; preds = %56
  %60 = load i32*, i32** %5, align 8
  %61 = call i8* @redis_sock_read(i32* %60, i32* %13)
  store i8* %61, i8** %10, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %59
  %64 = load i32*, i32** %5, align 8
  %65 = call i64 @read_mbulk_header(i32* %64, i32* %12)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %12, align 4
  %69 = srem i32 %68, 2
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %67, %63, %59, %56
  %72 = load i8*, i8** %10, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @efree(i8* %75)
  br label %77

77:                                               ; preds = %74, %71
  store i32 -1, i32* %4, align 4
  br label %98

78:                                               ; preds = %67
  %79 = call i32 @array_init(i32* %8)
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @UNSERIALIZE_VALS, align 4
  %83 = call i32 @redis_mbulk_reply_loop(i32* %80, i32* %8, i32 %81, i32 %82)
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* @SCORE_DECODE_NONE, align 4
  %86 = call i32 @array_zip_values_and_scores(i32* %84, i32* %8, i32 %85)
  %87 = load i32*, i32** %7, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @add_assoc_zval_ex(i32* %87, i8* %88, i32 %89, i32* %8)
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 @efree(i8* %91)
  br label %93

93:                                               ; preds = %78, %49
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %15

97:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %77, %48, %38
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i64 @redis_read_reply_type(i32*, i64*, i64*) #1

declare dso_local i8* @redis_sock_read_bulk_reply(i32*, i64) #1

declare dso_local i32 @add_next_index_stringl(i32*, i8*, i64) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i8* @redis_sock_read(i32*, i32*) #1

declare dso_local i64 @read_mbulk_header(i32*, i32*) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32 @redis_mbulk_reply_loop(i32*, i32*, i32, i32) #1

declare dso_local i32 @array_zip_values_and_scores(i32*, i32*, i32) #1

declare dso_local i32 @add_assoc_zval_ex(i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
