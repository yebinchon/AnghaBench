; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_array.c_mrb_ary_push_m.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_array.c_mrb_ary_push_m.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RArray = type { i32 }
%struct.RBasic = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"*!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_ary_push_m to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_ary_push_m(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.RArray*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @mrb_get_args(i32* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32** %5, i64* %8)
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.RArray* @mrb_ary_ptr(i32 %12)
  store %struct.RArray* %13, %struct.RArray** %9, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.RArray*, %struct.RArray** %9, align 8
  %16 = call i32 @ary_modify(i32* %14, %struct.RArray* %15)
  %17 = load %struct.RArray*, %struct.RArray** %9, align 8
  %18 = call i64 @ARY_LEN(%struct.RArray* %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %8, align 8
  %21 = add nsw i64 %19, %20
  store i64 %21, i64* %7, align 8
  %22 = load %struct.RArray*, %struct.RArray** %9, align 8
  %23 = call i64 @ARY_CAPA(%struct.RArray* %22)
  %24 = load i64, i64* %7, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.RArray*, %struct.RArray** %9, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @ary_expand_capa(i32* %27, %struct.RArray* %28, i64 %29)
  br label %31

31:                                               ; preds = %26, %2
  %32 = load %struct.RArray*, %struct.RArray** %9, align 8
  %33 = call i64 @ARY_PTR(%struct.RArray* %32)
  %34 = load i64, i64* %6, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i32*, i32** %5, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @array_copy(i64 %35, i32* %36, i64 %37)
  %39 = load %struct.RArray*, %struct.RArray** %9, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @ARY_SET_LEN(%struct.RArray* %39, i64 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.RArray*, %struct.RArray** %9, align 8
  %44 = bitcast %struct.RArray* %43 to %struct.RBasic*
  %45 = call i32 @mrb_write_barrier(i32* %42, %struct.RBasic* %44)
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32**, i64*) #1

declare dso_local %struct.RArray* @mrb_ary_ptr(i32) #1

declare dso_local i32 @ary_modify(i32*, %struct.RArray*) #1

declare dso_local i64 @ARY_LEN(%struct.RArray*) #1

declare dso_local i64 @ARY_CAPA(%struct.RArray*) #1

declare dso_local i32 @ary_expand_capa(i32*, %struct.RArray*, i64) #1

declare dso_local i32 @array_copy(i64, i32*, i64) #1

declare dso_local i64 @ARY_PTR(%struct.RArray*) #1

declare dso_local i32 @ARY_SET_LEN(%struct.RArray*, i64) #1

declare dso_local i32 @mrb_write_barrier(i32*, %struct.RBasic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
