; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_array.c_ary_concat.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_array.c_ary_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RArray = type { i32 }
%struct.RBasic = type { i32 }

@ARY_MAX_SIZE = common dso_local global i64 0, align 8
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"array size too big\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.RArray*, %struct.RArray*)* @ary_concat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ary_concat(i32* %0, %struct.RArray* %1, %struct.RArray* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.RArray*, align 8
  %6 = alloca %struct.RArray*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.RArray* %1, %struct.RArray** %5, align 8
  store %struct.RArray* %2, %struct.RArray** %6, align 8
  %8 = load %struct.RArray*, %struct.RArray** %5, align 8
  %9 = call i64 @ARY_LEN(%struct.RArray* %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.RArray*, %struct.RArray** %5, align 8
  %14 = load %struct.RArray*, %struct.RArray** %6, align 8
  %15 = call i32 @ary_replace(i32* %12, %struct.RArray* %13, %struct.RArray* %14)
  br label %64

16:                                               ; preds = %3
  %17 = load %struct.RArray*, %struct.RArray** %6, align 8
  %18 = call i64 @ARY_LEN(%struct.RArray* %17)
  %19 = load i64, i64* @ARY_MAX_SIZE, align 8
  %20 = load %struct.RArray*, %struct.RArray** %5, align 8
  %21 = call i64 @ARY_LEN(%struct.RArray* %20)
  %22 = sub nsw i64 %19, %21
  %23 = icmp sgt i64 %18, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %27 = call i32 @mrb_raise(i32* %25, i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %16
  %29 = load %struct.RArray*, %struct.RArray** %5, align 8
  %30 = call i64 @ARY_LEN(%struct.RArray* %29)
  %31 = load %struct.RArray*, %struct.RArray** %6, align 8
  %32 = call i64 @ARY_LEN(%struct.RArray* %31)
  %33 = add nsw i64 %30, %32
  store i64 %33, i64* %7, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.RArray*, %struct.RArray** %5, align 8
  %36 = call i32 @ary_modify(i32* %34, %struct.RArray* %35)
  %37 = load %struct.RArray*, %struct.RArray** %5, align 8
  %38 = call i64 @ARY_CAPA(%struct.RArray* %37)
  %39 = load i64, i64* %7, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %28
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.RArray*, %struct.RArray** %5, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @ary_expand_capa(i32* %42, %struct.RArray* %43, i64 %44)
  br label %46

46:                                               ; preds = %41, %28
  %47 = load %struct.RArray*, %struct.RArray** %5, align 8
  %48 = call i64 @ARY_PTR(%struct.RArray* %47)
  %49 = load %struct.RArray*, %struct.RArray** %5, align 8
  %50 = call i64 @ARY_LEN(%struct.RArray* %49)
  %51 = add nsw i64 %48, %50
  %52 = load %struct.RArray*, %struct.RArray** %6, align 8
  %53 = call i64 @ARY_PTR(%struct.RArray* %52)
  %54 = load %struct.RArray*, %struct.RArray** %6, align 8
  %55 = call i64 @ARY_LEN(%struct.RArray* %54)
  %56 = call i32 @array_copy(i64 %51, i64 %53, i64 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.RArray*, %struct.RArray** %5, align 8
  %59 = bitcast %struct.RArray* %58 to %struct.RBasic*
  %60 = call i32 @mrb_write_barrier(i32* %57, %struct.RBasic* %59)
  %61 = load %struct.RArray*, %struct.RArray** %5, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @ARY_SET_LEN(%struct.RArray* %61, i64 %62)
  br label %64

64:                                               ; preds = %46, %11
  ret void
}

declare dso_local i64 @ARY_LEN(%struct.RArray*) #1

declare dso_local i32 @ary_replace(i32*, %struct.RArray*, %struct.RArray*) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @ary_modify(i32*, %struct.RArray*) #1

declare dso_local i64 @ARY_CAPA(%struct.RArray*) #1

declare dso_local i32 @ary_expand_capa(i32*, %struct.RArray*, i64) #1

declare dso_local i32 @array_copy(i64, i64, i64) #1

declare dso_local i64 @ARY_PTR(%struct.RArray*) #1

declare dso_local i32 @mrb_write_barrier(i32*, %struct.RBasic*) #1

declare dso_local i32 @ARY_SET_LEN(%struct.RArray*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
