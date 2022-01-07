; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_array.c_mrb_ary_reverse.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_array.c_mrb_ary_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RArray = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_ary_reverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_ary_reverse(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.RArray*, align 8
  %6 = alloca %struct.RArray*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.RArray* @mrb_ary_ptr(i32 %11)
  store %struct.RArray* %12, %struct.RArray** %5, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.RArray*, %struct.RArray** %5, align 8
  %15 = call i64 @ARY_LEN(%struct.RArray* %14)
  %16 = call %struct.RArray* @ary_new_capa(i32* %13, i64 %15)
  store %struct.RArray* %16, %struct.RArray** %6, align 8
  %17 = load %struct.RArray*, %struct.RArray** %5, align 8
  %18 = call i64 @ARY_LEN(%struct.RArray* %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %2
  %22 = load %struct.RArray*, %struct.RArray** %5, align 8
  %23 = call i32* @ARY_PTR(%struct.RArray* %22)
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32* %26, i32** %10, align 8
  %27 = load %struct.RArray*, %struct.RArray** %6, align 8
  %28 = call i32* @ARY_PTR(%struct.RArray* %27)
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = getelementptr inbounds i32, i32* %30, i64 -1
  store i32* %31, i32** %9, align 8
  br label %32

32:                                               ; preds = %36, %21
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = icmp ult i32* %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %8, align 8
  %39 = load i32, i32* %37, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 -1
  store i32* %41, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  br label %32

42:                                               ; preds = %32
  %43 = load %struct.RArray*, %struct.RArray** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @ARY_SET_LEN(%struct.RArray* %43, i64 %44)
  br label %46

46:                                               ; preds = %42, %2
  %47 = load %struct.RArray*, %struct.RArray** %6, align 8
  %48 = call i32 @mrb_obj_value(%struct.RArray* %47)
  ret i32 %48
}

declare dso_local %struct.RArray* @mrb_ary_ptr(i32) #1

declare dso_local %struct.RArray* @ary_new_capa(i32*, i64) #1

declare dso_local i64 @ARY_LEN(%struct.RArray*) #1

declare dso_local i32* @ARY_PTR(%struct.RArray*) #1

declare dso_local i32 @ARY_SET_LEN(%struct.RArray*, i64) #1

declare dso_local i32 @mrb_obj_value(%struct.RArray*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
