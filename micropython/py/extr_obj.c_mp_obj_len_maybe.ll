; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_obj.c_mp_obj_len_maybe.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_obj.c_mp_obj_len_maybe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32, i32)* }

@mp_type_bytes = common dso_local global i32 0, align 4
@l = common dso_local global i32 0, align 4
@MP_UNARY_OP_LEN = common dso_local global i32 0, align 4
@MP_OBJ_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_obj_len_maybe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @mp_obj_is_str(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @mp_obj_is_type(i32 %9, i32* @mp_type_bytes)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @l, align 4
  %15 = call i32 @GET_STR_LEN(i32 %13, i32 %14)
  %16 = load i32, i32* @l, align 4
  %17 = call i32 @MP_OBJ_NEW_SMALL_INT(i32 %16)
  store i32 %17, i32* %2, align 4
  br label %34

18:                                               ; preds = %8
  %19 = load i32, i32* %3, align 4
  %20 = call %struct.TYPE_3__* @mp_obj_get_type(i32 %19)
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %4, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (i32, i32)*, i32 (i32, i32)** %22, align 8
  %24 = icmp ne i32 (i32, i32)* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (i32, i32)*, i32 (i32, i32)** %27, align 8
  %29 = load i32, i32* @MP_UNARY_OP_LEN, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 %28(i32 %29, i32 %30)
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %18
  %33 = load i32, i32* @MP_OBJ_NULL, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %25, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @mp_obj_is_str(i32) #1

declare dso_local i64 @mp_obj_is_type(i32, i32*) #1

declare dso_local i32 @GET_STR_LEN(i32, i32) #1

declare dso_local i32 @MP_OBJ_NEW_SMALL_INT(i32) #1

declare dso_local %struct.TYPE_3__* @mp_obj_get_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
