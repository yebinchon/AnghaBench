; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_range.c_mrb_get_values_at.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_range.c_mrb_get_values_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@MRB_RANGE_OK = common dso_local global i64 0, align 8
@E_TYPE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"invalid values selector: %v\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrb_get_values_at(i32* %0, i32 %1, i64 %2, i64 %3, i32* %4, i32 (i32*, i32, i64)* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32 (i32*, i32, i64)*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 (i32*, i32, i64)* %5, i32 (i32*, i32, i64)** %12, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @mrb_ary_new(i32* %19)
  store i32 %20, i32* %17, align 4
  store i64 0, i64* %13, align 8
  br label %21

21:                                               ; preds = %113, %6
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %116

25:                                               ; preds = %21
  %26 = load i32*, i32** %11, align 8
  %27 = load i64, i64* %13, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @mrb_fixnum_p(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %17, align 4
  %35 = load i32 (i32*, i32, i64)*, i32 (i32*, i32, i64)** %12, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = load i64, i64* %13, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @mrb_fixnum(i32 %41)
  %43 = call i32 %35(i32* %36, i32 %37, i64 %42)
  %44 = call i32 @mrb_ary_push(i32* %33, i32 %34, i32 %43)
  br label %112

45:                                               ; preds = %25
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i64, i64* %13, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %9, align 8
  %52 = load i32, i32* @FALSE, align 4
  %53 = call i64 @mrb_range_beg_len(i32* %46, i32 %50, i64* %15, i64* %16, i64 %51, i32 %52)
  %54 = load i64, i64* @MRB_RANGE_OK, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %103

56:                                               ; preds = %45
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* %16, align 8
  %60 = add i64 %58, %59
  %61 = icmp ult i64 %57, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i64, i64* %9, align 8
  br label %68

64:                                               ; preds = %56
  %65 = load i64, i64* %15, align 8
  %66 = load i64, i64* %16, align 8
  %67 = add i64 %65, %66
  br label %68

68:                                               ; preds = %64, %62
  %69 = phi i64 [ %63, %62 ], [ %67, %64 ]
  store i64 %69, i64* %18, align 8
  %70 = load i64, i64* %15, align 8
  store i64 %70, i64* %14, align 8
  br label %71

71:                                               ; preds = %84, %68
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* %18, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %17, align 4
  %78 = load i32 (i32*, i32, i64)*, i32 (i32*, i32, i64)** %12, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i64, i64* %14, align 8
  %82 = call i32 %78(i32* %79, i32 %80, i64 %81)
  %83 = call i32 @mrb_ary_push(i32* %76, i32 %77, i32 %82)
  br label %84

84:                                               ; preds = %75
  %85 = load i64, i64* %14, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %14, align 8
  br label %71

87:                                               ; preds = %71
  br label %88

88:                                               ; preds = %99, %87
  %89 = load i64, i64* %14, align 8
  %90 = load i64, i64* %15, align 8
  %91 = load i64, i64* %16, align 8
  %92 = add i64 %90, %91
  %93 = icmp ult i64 %89, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %17, align 4
  %97 = call i32 (...) @mrb_nil_value()
  %98 = call i32 @mrb_ary_push(i32* %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %94
  %100 = load i64, i64* %14, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %14, align 8
  br label %88

102:                                              ; preds = %88
  br label %111

103:                                              ; preds = %45
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* @E_TYPE_ERROR, align 4
  %106 = load i32*, i32** %11, align 8
  %107 = load i64, i64* %13, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @mrb_raisef(i32* %104, i32 %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %103, %102
  br label %112

112:                                              ; preds = %111, %32
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %13, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %13, align 8
  br label %21

116:                                              ; preds = %21
  %117 = load i32, i32* %17, align 4
  ret i32 %117
}

declare dso_local i32 @mrb_ary_new(i32*) #1

declare dso_local i64 @mrb_fixnum_p(i32) #1

declare dso_local i32 @mrb_ary_push(i32*, i32, i32) #1

declare dso_local i64 @mrb_fixnum(i32) #1

declare dso_local i64 @mrb_range_beg_len(i32*, i32, i64*, i64*, i64, i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
