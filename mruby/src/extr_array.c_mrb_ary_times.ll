; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_array.c_mrb_ary_times.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_array.c_mrb_ary_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RArray = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"i\00", align 1
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"negative argument\00", align 1
@ARY_MAX_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"array size too big\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_ary_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_ary_times(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.RArray*, align 8
  %7 = alloca %struct.RArray*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.RArray* @mrb_ary_ptr(i32 %11)
  store %struct.RArray* %12, %struct.RArray** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @mrb_get_args(i32* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %9)
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %20 = call i32 @mrb_raise(i32* %18, i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @mrb_ary_new(i32* %25)
  store i32 %26, i32* %3, align 4
  br label %70

27:                                               ; preds = %21
  %28 = load i32, i32* @ARY_MAX_SIZE, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sdiv i32 %28, %29
  %31 = load %struct.RArray*, %struct.RArray** %6, align 8
  %32 = call i32 @ARY_LEN(%struct.RArray* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %37 = call i32 @mrb_raise(i32* %35, i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %27
  %39 = load %struct.RArray*, %struct.RArray** %6, align 8
  %40 = call i32 @ARY_LEN(%struct.RArray* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = mul nsw i32 %42, %43
  %45 = call %struct.RArray* @ary_new_capa(i32* %41, i32 %44)
  store %struct.RArray* %45, %struct.RArray** %7, align 8
  %46 = load %struct.RArray*, %struct.RArray** %7, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = mul nsw i32 %47, %48
  %50 = call i32 @ARY_SET_LEN(%struct.RArray* %46, i32 %49)
  %51 = load %struct.RArray*, %struct.RArray** %7, align 8
  %52 = call i32* @ARY_PTR(%struct.RArray* %51)
  store i32* %52, i32** %8, align 8
  br label %53

53:                                               ; preds = %57, %38
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %9, align 4
  %56 = icmp ne i32 %54, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load i32*, i32** %8, align 8
  %59 = load %struct.RArray*, %struct.RArray** %6, align 8
  %60 = call i32* @ARY_PTR(%struct.RArray* %59)
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @array_copy(i32* %58, i32* %60, i32 %61)
  %63 = load i32, i32* %10, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32* %66, i32** %8, align 8
  br label %53

67:                                               ; preds = %53
  %68 = load %struct.RArray*, %struct.RArray** %7, align 8
  %69 = call i32 @mrb_obj_value(%struct.RArray* %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %24
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.RArray* @mrb_ary_ptr(i32) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @mrb_ary_new(i32*) #1

declare dso_local i32 @ARY_LEN(%struct.RArray*) #1

declare dso_local %struct.RArray* @ary_new_capa(i32*, i32) #1

declare dso_local i32 @ARY_SET_LEN(%struct.RArray*, i32) #1

declare dso_local i32* @ARY_PTR(%struct.RArray*) #1

declare dso_local i32 @array_copy(i32*, i32*, i32) #1

declare dso_local i32 @mrb_obj_value(%struct.RArray*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
