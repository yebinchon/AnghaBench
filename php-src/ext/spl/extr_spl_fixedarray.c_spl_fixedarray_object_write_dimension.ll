; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_fixedarray.c_spl_fixedarray_object_write_dimension.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_fixedarray.c_spl_fixedarray_object_write_dimension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"offsetSet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @spl_fixedarray_object_write_dimension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spl_fixedarray_object_write_dimension(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call %struct.TYPE_6__* @spl_fixed_array_from_obj(i32* %9)
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = call i32 @ZVAL_NULL(i32* %8)
  store i32* %8, i32** %5, align 8
  br label %23

20:                                               ; preds = %15
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @SEPARATE_ARG_IF_REF(i32* %21)
  br label %23

23:                                               ; preds = %20, %18
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @SEPARATE_ARG_IF_REF(i32* %24)
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @zend_call_method_with_2_params(i32* %26, i32 %30, i64* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32* %33, i32* %34)
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @zval_ptr_dtor(i32* %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @zval_ptr_dtor(i32* %38)
  br label %45

40:                                               ; preds = %3
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @spl_fixedarray_object_write_dimension_helper(%struct.TYPE_6__* %41, i32* %42, i32* %43)
  br label %45

45:                                               ; preds = %40, %23
  ret void
}

declare dso_local %struct.TYPE_6__* @spl_fixed_array_from_obj(i32*) #1

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @SEPARATE_ARG_IF_REF(i32*) #1

declare dso_local i32 @zend_call_method_with_2_params(i32*, i32, i64*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @spl_fixedarray_object_write_dimension_helper(%struct.TYPE_6__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
