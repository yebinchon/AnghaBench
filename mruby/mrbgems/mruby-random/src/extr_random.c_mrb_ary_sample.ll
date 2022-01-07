; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-random/src/extr_random.c_mrb_ary_sample.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-random/src/extr_random.c_mrb_ary_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"|i?o\00", align 1
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"negative sample number\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_ary_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_ary_sample(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %15 = call i32 (...) @mrb_nil_value()
  store i32 %15, i32* %8, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @mrb_get_args(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %7, i32* %8)
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @mrb_nil_p(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = call i32* @random_default_state(i32* %22)
  store i32* %23, i32** %9, align 8
  br label %30

24:                                               ; preds = %2
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @random_check(i32* %25, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = call i32* @random_ptr(i32 %28)
  store i32* %29, i32** %9, align 8
  br label %30

30:                                               ; preds = %24, %21
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @RARRAY_LEN(i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  switch i32 %36, label %44 [
    i32 0, label %37
    i32 1, label %39
  ]

37:                                               ; preds = %35
  %38 = call i32 (...) @mrb_nil_value()
  store i32 %38, i32* %3, align 4
  br label %138

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = call i32* @RARRAY_PTR(i32 %40)
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %3, align 4
  br label %138

44:                                               ; preds = %35
  %45 = load i32, i32* %5, align 4
  %46 = call i32* @RARRAY_PTR(i32 %45)
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @rand_uint32(i32* %47)
  %49 = load i32, i32* %10, align 4
  %50 = srem i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %46, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %3, align 4
  br label %138

54:                                               ; preds = %30
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %60 = call i32 @mrb_raise(i32* %58, i32 %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @mrb_ary_new_capa(i32* %68, i32 %69)
  store i32 %70, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %109, %67
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %112

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %97, %76
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @rand_uint32(i32* %78)
  %80 = load i32, i32* %10, align 4
  %81 = srem i32 %79, %80
  store i32 %81, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %82

82:                                               ; preds = %99, %77
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = load i32, i32* %11, align 4
  %88 = call i32* @RARRAY_PTR(i32 %87)
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @mrb_fixnum(i32 %92)
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp eq i64 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  br label %77

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %13, align 4
  br label %82

102:                                              ; preds = %82
  br label %103

103:                                              ; preds = %102
  %104 = load i32*, i32** %4, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @mrb_fixnum_value(i32 %106)
  %108 = call i32 @mrb_ary_push(i32* %104, i32 %105, i32 %107)
  br label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %71

112:                                              ; preds = %71
  store i32 0, i32* %12, align 4
  br label %113

113:                                              ; preds = %133, %112
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %136

117:                                              ; preds = %113
  %118 = load i32*, i32** %4, align 8
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %5, align 4
  %122 = call i32* @RARRAY_PTR(i32 %121)
  %123 = load i32, i32* %11, align 4
  %124 = call i32* @RARRAY_PTR(i32 %123)
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @mrb_fixnum(i32 %128)
  %130 = getelementptr inbounds i32, i32* %122, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @mrb_ary_set(i32* %118, i32 %119, i32 %120, i32 %131)
  br label %133

133:                                              ; preds = %117
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %113

136:                                              ; preds = %113
  %137 = load i32, i32* %11, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %136, %44, %39, %37
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32* @random_default_state(i32*) #1

declare dso_local i32 @random_check(i32*, i32) #1

declare dso_local i32* @random_ptr(i32) #1

declare dso_local i32 @RARRAY_LEN(i32) #1

declare dso_local i32* @RARRAY_PTR(i32) #1

declare dso_local i32 @rand_uint32(i32*) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @mrb_ary_new_capa(i32*, i32) #1

declare dso_local i64 @mrb_fixnum(i32) #1

declare dso_local i32 @mrb_ary_push(i32*, i32, i32) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

declare dso_local i32 @mrb_ary_set(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
