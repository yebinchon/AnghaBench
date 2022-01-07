; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_string.c_str_replace_partial.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_string.c_str_replace_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RString = type { i32 }

@MRB_INT_MAX = common dso_local global i64 0, align 8
@E_RUNTIME_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"string size too big\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64, i64, i32)* @str_replace_partial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_replace_partial(i32* %0, i32 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.RString*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store i64 256, i64* %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.RString* @mrb_str_ptr(i32 %17)
  store %struct.RString* %18, %struct.RString** %12, align 8
  %19 = load %struct.RString*, %struct.RString** %12, align 8
  %20 = call i64 @RSTR_LEN(%struct.RString* %19)
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %13, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i64, i64* %13, align 8
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %24, %5
  %27 = load i64, i64* %8, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %13, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29, %26
  %34 = load i32*, i32** %6, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @mrb_fixnum_value(i64 %35)
  %37 = call i32 @str_out_of_index(i32* %34, i32 %36)
  br label %38

38:                                               ; preds = %33, %29
  %39 = load i32, i32* %10, align 4
  %40 = call i64 @mrb_nil_p(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @RSTRING_LEN(i32 %44)
  br label %46

46:                                               ; preds = %43, %42
  %47 = phi i64 [ 0, %42 ], [ %45, %43 ]
  store i64 %47, i64* %14, align 8
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* %13, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %8, align 8
  %53 = sub nsw i64 %51, %52
  %54 = sub nsw i64 %50, %53
  store i64 %54, i64* %15, align 8
  %55 = load i64, i64* %15, align 8
  %56 = load i64, i64* @MRB_INT_MAX, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %46
  %59 = load i64, i64* %15, align 8
  %60 = load i64, i64* %14, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58, %46
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* @E_RUNTIME_ERROR, align 4
  %65 = call i32 @mrb_raise(i32* %63, i32 %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %62, %58
  %67 = load i32*, i32** %6, align 8
  %68 = load %struct.RString*, %struct.RString** %12, align 8
  %69 = call i32 @mrb_str_modify(i32* %67, %struct.RString* %68)
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %15, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load i32*, i32** %6, align 8
  %75 = load %struct.RString*, %struct.RString** %12, align 8
  %76 = load i64, i64* %15, align 8
  %77 = call i32 @resize_capa(i32* %74, %struct.RString* %75, i64 %76)
  br label %78

78:                                               ; preds = %73, %66
  %79 = load %struct.RString*, %struct.RString** %12, align 8
  %80 = call i8* @RSTR_PTR(%struct.RString* %79)
  store i8* %80, i8** %16, align 8
  %81 = load i8*, i8** %16, align 8
  %82 = load i64, i64* %15, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* %9, align 8
  %86 = sub nsw i64 %84, %85
  %87 = sub i64 0, %86
  %88 = getelementptr inbounds i8, i8* %83, i64 %87
  %89 = load i8*, i8** %16, align 8
  %90 = load i64, i64* %9, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* %9, align 8
  %94 = sub nsw i64 %92, %93
  %95 = call i32 @memmove(i8* %88, i8* %91, i64 %94)
  %96 = load i32, i32* %10, align 4
  %97 = call i64 @mrb_nil_p(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %78
  %100 = load i8*, i8** %16, align 8
  %101 = load i64, i64* %8, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = load i32, i32* %10, align 4
  %104 = call i8* @RSTRING_PTR(i32 %103)
  %105 = load i64, i64* %14, align 8
  %106 = call i32 @memmove(i8* %102, i8* %104, i64 %105)
  br label %107

107:                                              ; preds = %99, %78
  %108 = load %struct.RString*, %struct.RString** %12, align 8
  %109 = load i64, i64* %15, align 8
  %110 = call i32 @RSTR_SET_LEN(%struct.RString* %108, i64 %109)
  %111 = load i8*, i8** %16, align 8
  %112 = load i64, i64* %15, align 8
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8 0, i8* %113, align 1
  %114 = load i64, i64* %13, align 8
  %115 = load i64, i64* %15, align 8
  %116 = sub nsw i64 %114, %115
  %117 = icmp sge i64 %116, 256
  br i1 %117, label %118, label %123

118:                                              ; preds = %107
  %119 = load i32*, i32** %6, align 8
  %120 = load %struct.RString*, %struct.RString** %12, align 8
  %121 = load i64, i64* %15, align 8
  %122 = call i32 @resize_capa(i32* %119, %struct.RString* %120, i64 %121)
  br label %123

123:                                              ; preds = %118, %107
  %124 = load i32, i32* %7, align 4
  ret i32 %124
}

declare dso_local %struct.RString* @mrb_str_ptr(i32) #1

declare dso_local i64 @RSTR_LEN(%struct.RString*) #1

declare dso_local i32 @str_out_of_index(i32*, i32) #1

declare dso_local i32 @mrb_fixnum_value(i64) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i64 @RSTRING_LEN(i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @mrb_str_modify(i32*, %struct.RString*) #1

declare dso_local i32 @resize_capa(i32*, %struct.RString*, i64) #1

declare dso_local i8* @RSTR_PTR(%struct.RString*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i8* @RSTRING_PTR(i32) #1

declare dso_local i32 @RSTR_SET_LEN(%struct.RString*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
