; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_objexcept.c_mp_obj_exception_attr.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_objexcept.c_mp_obj_exception_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { i32* }

@MP_OBJ_NULL = common dso_local global i32 0, align 4
@MP_QSTR___traceback__ = common dso_local global i64 0, align 8
@mp_const_none = common dso_local global i32 0, align 4
@MP_QSTR_args = common dso_local global i64 0, align 8
@mp_type_StopIteration = common dso_local global i32 0, align 4
@MP_QSTR_value = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_obj_exception_attr(i32 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.TYPE_5__* @MP_OBJ_TO_PTR(i32 %8)
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MP_OBJ_NULL, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @MP_QSTR___traceback__, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @mp_const_none, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @MP_OBJ_NULL, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %25, %19, %15
  br label %59

32:                                               ; preds = %3
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @MP_QSTR_args, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @MP_OBJ_FROM_PTR(i32 %39)
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %40, i32* %42, align 4
  br label %59

43:                                               ; preds = %32
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, @mp_type_StopIteration
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @MP_QSTR_value, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @mp_obj_exception_get_value(i32 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %49, %43
  br label %59

59:                                               ; preds = %31, %58, %36
  ret void
}

declare dso_local %struct.TYPE_5__* @MP_OBJ_TO_PTR(i32) #1

declare dso_local i32 @MP_OBJ_FROM_PTR(i32) #1

declare dso_local i32 @mp_obj_exception_get_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
