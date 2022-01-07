; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-rational/src/extr_rational.c_rational_s_new.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-rational/src/extr_rational.c_rational_s_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"oo\00", align 1
@MRB_INT_MIN = common dso_local global i64 0, align 8
@MRB_INT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64)* @rational_s_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rational_s_new(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @mrb_get_args(i32* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64* %7, i64* %8)
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @mrb_fixnum_p(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %2
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @mrb_fixnum(i64 %18)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i64 @mrb_fixnum_p(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @mrb_fixnum(i64 %24)
  store i64 %25, i64* %6, align 8
  br label %49

26:                                               ; preds = %17
  %27 = load i32*, i32** %3, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @mrb_to_flo(i32* %27, i64 %28)
  store i64 %29, i64* %9, align 8
  br label %30

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %41, %30
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @MRB_INT_MIN, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @MRB_INT_MAX, align 8
  %38 = icmp sgt i64 %36, %37
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i1 [ true, %31 ], [ %38, %35 ]
  br i1 %40, label %41, label %46

41:                                               ; preds = %39
  %42 = load i64, i64* %5, align 8
  %43 = sdiv i64 %42, 2
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %9, align 8
  %45 = sdiv i64 %44, 2
  store i64 %45, i64* %9, align 8
  br label %31

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %9, align 8
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %47, %23
  br label %103

50:                                               ; preds = %2
  %51 = load i32*, i32** %3, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i64 @mrb_to_flo(i32* %51, i64 %52)
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @mrb_fixnum_p(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i64, i64* %8, align 8
  %59 = call i64 @mrb_fixnum(i64 %58)
  store i64 %59, i64* %6, align 8
  br label %83

60:                                               ; preds = %50
  %61 = load i32*, i32** %3, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i64 @mrb_to_flo(i32* %61, i64 %62)
  store i64 %63, i64* %11, align 8
  br label %64

64:                                               ; preds = %60
  br label %65

65:                                               ; preds = %75, %64
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* @MRB_INT_MIN, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* @MRB_INT_MAX, align 8
  %72 = icmp sgt i64 %70, %71
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi i1 [ true, %65 ], [ %72, %69 ]
  br i1 %74, label %75, label %80

75:                                               ; preds = %73
  %76 = load i64, i64* %10, align 8
  %77 = sdiv i64 %76, 2
  store i64 %77, i64* %10, align 8
  %78 = load i64, i64* %11, align 8
  %79 = sdiv i64 %78, 2
  store i64 %79, i64* %11, align 8
  br label %65

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %11, align 8
  store i64 %82, i64* %6, align 8
  br label %83

83:                                               ; preds = %81, %57
  br label %84

84:                                               ; preds = %83
  br label %85

85:                                               ; preds = %95, %84
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* @MRB_INT_MIN, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* @MRB_INT_MAX, align 8
  %92 = icmp sgt i64 %90, %91
  br label %93

93:                                               ; preds = %89, %85
  %94 = phi i1 [ true, %85 ], [ %92, %89 ]
  br i1 %94, label %95, label %100

95:                                               ; preds = %93
  %96 = load i64, i64* %10, align 8
  %97 = sdiv i64 %96, 2
  store i64 %97, i64* %10, align 8
  %98 = load i64, i64* %6, align 8
  %99 = sdiv i64 %98, 2
  store i64 %99, i64* %6, align 8
  br label %85

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %10, align 8
  store i64 %102, i64* %5, align 8
  br label %103

103:                                              ; preds = %101, %49
  %104 = load i32*, i32** %3, align 8
  %105 = load i64, i64* %5, align 8
  %106 = load i64, i64* %6, align 8
  %107 = call i64 @rational_new(i32* %104, i64 %105, i64 %106)
  ret i64 %107
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i64*, i64*) #1

declare dso_local i64 @mrb_fixnum_p(i64) #1

declare dso_local i64 @mrb_fixnum(i64) #1

declare dso_local i64 @mrb_to_flo(i32*, i64) #1

declare dso_local i64 @rational_new(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
