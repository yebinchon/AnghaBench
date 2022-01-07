; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_obj.c_mp_obj_get_type.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_obj.c_mp_obj_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@mp_type_int = common dso_local global i32 0, align 4
@mp_type_str = common dso_local global i32 0, align 4
@mp_type_float = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mp_obj_get_type(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @mp_obj_is_small_int(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32* @mp_type_int, i32** %2, align 8
  br label %21

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @mp_obj_is_qstr(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32* @mp_type_str, i32** %2, align 8
  br label %21

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.TYPE_3__* @MP_OBJ_TO_PTR(i32 %15)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %4, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %2, align 8
  br label %21

21:                                               ; preds = %14, %13, %8
  %22 = load i32*, i32** %2, align 8
  ret i32* %22
}

declare dso_local i64 @mp_obj_is_small_int(i32) #1

declare dso_local i64 @mp_obj_is_qstr(i32) #1

declare dso_local %struct.TYPE_3__* @MP_OBJ_TO_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
