; ModuleID = '/home/carl/AnghaBench/phpredis/extr_library.c_redis_parse_client_list_response.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_library.c_redis_parse_client_list_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @redis_parse_client_list_response(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @array_init(i32* %16)
  %18 = call i32 @array_init(i32* %15)
  %19 = load i8*, i8** %3, align 8
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %3, align 8
  store i8* %20, i8** %6, align 8
  br label %21

21:                                               ; preds = %120, %2
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %123

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  switch i32 %28, label %120 [
    i32 0, label %29
    i32 10, label %30
    i32 32, label %30
    i32 61, label %110
  ]

29:                                               ; preds = %25
  store i32 1, i32* %13, align 4
  br label %120

30:                                               ; preds = %25, %25
  %31 = load i8*, i8** %6, align 8
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %102

34:                                               ; preds = %30
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %102

37:                                               ; preds = %34
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i8* @estrndup(i8* %38, i32 %39)
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = trunc i64 %46 to i32
  %48 = call i8* @estrndup(i8* %41, i32 %47)
  store i8* %48, i8** %11, align 8
  store i32 1, i32* %14, align 4
  %49 = load i8*, i8** %11, align 8
  store i8* %49, i8** %9, align 8
  br label %50

50:                                               ; preds = %66, %37
  %51 = load i8*, i8** %9, align 8
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = load i8*, i8** %9, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp slt i32 %57, 48
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** %9, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp sgt i32 %62, 57
  br i1 %63, label %64, label %65

64:                                               ; preds = %59, %54
  store i32 0, i32* %14, align 4
  br label %69

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %9, align 8
  br label %50

69:                                               ; preds = %64, %50
  %70 = load i32, i32* %14, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i8*, i8** %10, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = call i32 @atol(i8* %74)
  %76 = call i32 @add_assoc_long(i32* %15, i8* %73, i32 %75)
  br label %81

77:                                               ; preds = %69
  %78 = load i8*, i8** %10, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = call i32 @add_assoc_string(i32* %15, i8* %78, i8* %79)
  br label %81

81:                                               ; preds = %77, %72
  %82 = load i8*, i8** %11, align 8
  %83 = call i32 @efree(i8* %82)
  %84 = load i8*, i8** %5, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 10
  br i1 %87, label %88, label %99

88:                                               ; preds = %81
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @add_next_index_zval(i32* %89, i32* %15)
  %91 = load i8*, i8** %5, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = call i32 @array_init(i32* %15)
  br label %98

98:                                               ; preds = %96, %88
  br label %99

99:                                               ; preds = %98, %81
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @efree(i8* %100)
  br label %107

102:                                              ; preds = %34, %30
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @zval_dtor(i32* %103)
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @ZVAL_BOOL(i32* %105, i32 0)
  br label %123

107:                                              ; preds = %99
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  store i8* %109, i8** %6, align 8
  br label %120

110:                                              ; preds = %25
  %111 = load i8*, i8** %6, align 8
  store i8* %111, i8** %7, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %12, align 4
  %118 = load i8*, i8** %5, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  store i8* %119, i8** %6, align 8
  br label %120

120:                                              ; preds = %25, %110, %107, %29
  %121 = load i8*, i8** %5, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %5, align 8
  br label %21

123:                                              ; preds = %102, %21
  ret void
}

declare dso_local i32 @array_init(i32*) #1

declare dso_local i8* @estrndup(i8*, i32) #1

declare dso_local i32 @add_assoc_long(i32*, i8*, i32) #1

declare dso_local i32 @atol(i8*) #1

declare dso_local i32 @add_assoc_string(i32*, i8*, i8*) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @add_next_index_zval(i32*, i32*) #1

declare dso_local i32 @zval_dtor(i32*) #1

declare dso_local i32 @ZVAL_BOOL(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
