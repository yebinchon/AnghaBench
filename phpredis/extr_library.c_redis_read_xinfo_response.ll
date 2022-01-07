; ModuleID = '/home/carl/AnghaBench/phpredis/extr_library.c_redis_read_xinfo_response.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_library.c_redis_read_xinfo_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redis_read_xinfo_response(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %11, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %93, %3
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %96

19:                                               ; preds = %15
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @redis_read_reply_type(i32* %20, i32* %13, i64* %14)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %98

24:                                               ; preds = %19
  %25 = load i32, i32* %13, align 4
  switch i32 %25, label %91 [
    i32 130, label %26
    i32 129, label %52
    i32 128, label %67
  ]

26:                                               ; preds = %24
  %27 = load i32*, i32** %5, align 8
  %28 = load i64, i64* %14, align 8
  %29 = call i8* @redis_sock_read_bulk_reply(i32* %27, i64 %28)
  store i8* %29, i8** %12, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %98

32:                                               ; preds = %26
  %33 = load i8*, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load i32*, i32** %6, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i8*, i8** %12, align 8
  %40 = load i64, i64* %14, align 8
  %41 = call i32 @add_assoc_stringl_ex(i32* %36, i8* %37, i32 %38, i8* %39, i64 %40)
  %42 = load i8*, i8** %12, align 8
  %43 = call i32 @efree(i8* %42)
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @efree(i8* %44)
  store i8* null, i8** %11, align 8
  br label %50

46:                                               ; preds = %32
  %47 = load i8*, i8** %12, align 8
  store i8* %47, i8** %11, align 8
  %48 = load i64, i64* %14, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %46, %35
  br label %51

51:                                               ; preds = %50
  br label %92

52:                                               ; preds = %24
  %53 = load i8*, i8** %11, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load i32*, i32** %6, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i64, i64* %14, align 8
  %60 = call i32 @add_assoc_long_ex(i32* %56, i8* %57, i32 %58, i64 %59)
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @efree(i8* %61)
  store i8* null, i8** %11, align 8
  br label %66

63:                                               ; preds = %52
  %64 = load i64, i64* %14, align 8
  %65 = call i32 @spprintf(i8** %11, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %64)
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %63, %55
  br label %92

67:                                               ; preds = %24
  %68 = call i32 @array_init(i32* %8)
  %69 = load i32*, i32** %5, align 8
  %70 = load i64, i64* %14, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @redis_read_xinfo_response(i32* %69, i32* %8, i32 %71)
  %73 = load i32, i32* @SUCCESS, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = call i32 @zval_dtor(i32* %8)
  br label %98

77:                                               ; preds = %67
  %78 = load i8*, i8** %11, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load i32*, i32** %6, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @add_assoc_zval_ex(i32* %81, i8* %82, i32 %83, i32* %8)
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 @efree(i8* %85)
  store i8* null, i8** %11, align 8
  br label %90

87:                                               ; preds = %77
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @add_next_index_zval(i32* %88, i32* %8)
  br label %90

90:                                               ; preds = %87, %80
  br label %92

91:                                               ; preds = %24
  br label %98

92:                                               ; preds = %90, %66, %51
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %15

96:                                               ; preds = %15
  %97 = load i32, i32* @SUCCESS, align 4
  store i32 %97, i32* %4, align 4
  br label %106

98:                                               ; preds = %91, %75, %31, %23
  %99 = load i8*, i8** %11, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i8*, i8** %11, align 8
  %103 = call i32 @efree(i8* %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* @FAILURE, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %104, %96
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i64 @redis_read_reply_type(i32*, i32*, i64*) #1

declare dso_local i8* @redis_sock_read_bulk_reply(i32*, i64) #1

declare dso_local i32 @add_assoc_stringl_ex(i32*, i8*, i32, i8*, i64) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @add_assoc_long_ex(i32*, i8*, i32, i64) #1

declare dso_local i32 @spprintf(i8**, i32, i8*, i64) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32 @zval_dtor(i32*) #1

declare dso_local i32 @add_assoc_zval_ex(i32*, i8*, i32, i32*) #1

declare dso_local i32 @add_next_index_zval(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
