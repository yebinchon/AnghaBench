; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-array-ext/src/extr_array.c_mrb_ary_slice_bang.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-array-ext/src/extr_array.c_mrb_ary_slice_bang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RArray = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"o|i\00", align 1
@TRUE = common dso_local global i32 0, align 4
@MRB_RANGE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"delete_at\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ii\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64)* @mrb_ary_slice_bang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mrb_ary_slice_bang(i32* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.RArray*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call %struct.RArray* @mrb_ary_ptr(i64 %16)
  store %struct.RArray* %17, %struct.RArray** %6, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.RArray*, %struct.RArray** %6, align 8
  %20 = call i32 @mrb_ary_modify(i32* %18, %struct.RArray* %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @mrb_get_argc(i32* %21)
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %53

24:                                               ; preds = %2
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @mrb_get_args(i32* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %15, i64* %10)
  %27 = load i64, i64* %15, align 8
  %28 = call i32 @mrb_type(i64 %27)
  switch i32 %28, label %47 [
    i32 128, label %29
    i32 129, label %41
  ]

29:                                               ; preds = %24
  %30 = load i32*, i32** %4, align 8
  %31 = load i64, i64* %15, align 8
  %32 = load %struct.RArray*, %struct.RArray** %6, align 8
  %33 = call i64 @ARY_LEN(%struct.RArray* %32)
  %34 = load i32, i32* @TRUE, align 4
  %35 = call i32 @mrb_range_beg_len(i32* %30, i64 %31, i64* %7, i64* %10, i64 %33, i32 %34)
  %36 = load i32, i32* @MRB_RANGE_OK, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %56

39:                                               ; preds = %29
  %40 = call i64 (...) @mrb_nil_value()
  store i64 %40, i64* %3, align 8
  br label %150

41:                                               ; preds = %24
  %42 = load i32*, i32** %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %15, align 8
  %45 = call i64 @mrb_funcall(i32* %42, i64 %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1, i64 %44)
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  store i64 %46, i64* %3, align 8
  br label %150

47:                                               ; preds = %24
  %48 = load i32*, i32** %4, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* %15, align 8
  %51 = call i64 @mrb_funcall(i32* %48, i64 %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 1, i64 %50)
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %12, align 8
  store i64 %52, i64* %3, align 8
  br label %150

53:                                               ; preds = %2
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @mrb_get_args(i32* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64* %7, i64* %10)
  br label %56

56:                                               ; preds = %53, %38
  %57 = load %struct.RArray*, %struct.RArray** %6, align 8
  %58 = call i64 @ARY_LEN(%struct.RArray* %57)
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %7, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %7, align 8
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i64, i64* %7, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %7, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68, %65
  %73 = call i64 (...) @mrb_nil_value()
  store i64 %73, i64* %3, align 8
  br label %150

74:                                               ; preds = %68
  %75 = load i64, i64* %10, align 8
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i64 (...) @mrb_nil_value()
  store i64 %78, i64* %3, align 8
  br label %150

79:                                               ; preds = %74
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* %7, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32*, i32** %4, align 8
  %85 = call i64 @mrb_ary_new(i32* %84)
  store i64 %85, i64* %3, align 8
  br label %150

86:                                               ; preds = %79
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %7, align 8
  %90 = sub nsw i64 %88, %89
  %91 = icmp sgt i64 %87, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* %7, align 8
  %95 = sub nsw i64 %93, %94
  store i64 %95, i64* %10, align 8
  br label %96

96:                                               ; preds = %92, %86
  %97 = load i32*, i32** %4, align 8
  %98 = load i64, i64* %10, align 8
  %99 = call i64 @mrb_ary_new_capa(i32* %97, i64 %98)
  store i64 %99, i64* %14, align 8
  %100 = load %struct.RArray*, %struct.RArray** %6, align 8
  %101 = call i64* @ARY_PTR(%struct.RArray* %100)
  store i64* %101, i64** %13, align 8
  %102 = load i64, i64* %7, align 8
  store i64 %102, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %103

103:                                              ; preds = %115, %96
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %10, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %103
  %108 = load i32*, i32** %4, align 8
  %109 = load i64, i64* %14, align 8
  %110 = load i64*, i64** %13, align 8
  %111 = load i64, i64* %8, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @mrb_ary_push(i32* %108, i64 %109, i64 %113)
  br label %115

115:                                              ; preds = %107
  %116 = load i64, i64* %8, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %8, align 8
  %118 = load i64, i64* %9, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %9, align 8
  br label %103

120:                                              ; preds = %103
  %121 = load i64, i64* %7, align 8
  %122 = load i64*, i64** %13, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 %121
  store i64* %123, i64** %13, align 8
  %124 = load i64, i64* %7, align 8
  store i64 %124, i64* %8, align 8
  br label %125

125:                                              ; preds = %139, %120
  %126 = load i64, i64* %8, align 8
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* %10, align 8
  %129 = sub nsw i64 %127, %128
  %130 = icmp slt i64 %126, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %125
  %132 = load i64*, i64** %13, align 8
  %133 = load i64, i64* %10, align 8
  %134 = getelementptr inbounds i64, i64* %132, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = load i64*, i64** %13, align 8
  store i64 %135, i64* %136, align 8
  %137 = load i64*, i64** %13, align 8
  %138 = getelementptr inbounds i64, i64* %137, i32 1
  store i64* %138, i64** %13, align 8
  br label %139

139:                                              ; preds = %131
  %140 = load i64, i64* %8, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %8, align 8
  br label %125

142:                                              ; preds = %125
  %143 = load i32*, i32** %4, align 8
  %144 = load i64, i64* %5, align 8
  %145 = load i64, i64* %11, align 8
  %146 = load i64, i64* %10, align 8
  %147 = sub nsw i64 %145, %146
  %148 = call i32 @mrb_ary_resize(i32* %143, i64 %144, i64 %147)
  %149 = load i64, i64* %14, align 8
  store i64 %149, i64* %3, align 8
  br label %150

150:                                              ; preds = %142, %83, %77, %72, %47, %41, %39
  %151 = load i64, i64* %3, align 8
  ret i64 %151
}

declare dso_local %struct.RArray* @mrb_ary_ptr(i64) #1

declare dso_local i32 @mrb_ary_modify(i32*, %struct.RArray*) #1

declare dso_local i32 @mrb_get_argc(i32*) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i64*, i64*) #1

declare dso_local i32 @mrb_type(i64) #1

declare dso_local i32 @mrb_range_beg_len(i32*, i64, i64*, i64*, i64, i32) #1

declare dso_local i64 @ARY_LEN(%struct.RArray*) #1

declare dso_local i64 @mrb_nil_value(...) #1

declare dso_local i64 @mrb_funcall(i32*, i64, i8*, i32, i64) #1

declare dso_local i64 @mrb_ary_new(i32*) #1

declare dso_local i64 @mrb_ary_new_capa(i32*, i64) #1

declare dso_local i64* @ARY_PTR(%struct.RArray*) #1

declare dso_local i32 @mrb_ary_push(i32*, i64, i64) #1

declare dso_local i32 @mrb_ary_resize(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
