; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_runtime.c_mp_load_method_protected.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_runtime.c_mp_load_method_protected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i32* }

@mp_type_AttributeError = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_load_method_protected(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = call i64 @nlr_push(%struct.TYPE_4__* %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @mp_load_method_maybe(i32 %13, i32 %14, i32* %15)
  %17 = call i32 (...) @nlr_pop()
  br label %37

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = bitcast i32* %23 to %struct.TYPE_5__*
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @MP_OBJ_FROM_PTR(i32* %26)
  %28 = call i32 @MP_OBJ_FROM_PTR(i32* @mp_type_AttributeError)
  %29 = call i32 @mp_obj_is_subclass_fast(i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @MP_OBJ_FROM_PTR(i32* %33)
  %35 = call i32 @nlr_raise(i32 %34)
  br label %36

36:                                               ; preds = %31, %21, %18
  br label %37

37:                                               ; preds = %36, %12
  ret void
}

declare dso_local i64 @nlr_push(%struct.TYPE_4__*) #1

declare dso_local i32 @mp_load_method_maybe(i32, i32, i32*) #1

declare dso_local i32 @nlr_pop(...) #1

declare dso_local i32 @mp_obj_is_subclass_fast(i32, i32) #1

declare dso_local i32 @MP_OBJ_FROM_PTR(i32*) #1

declare dso_local i32 @nlr_raise(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
