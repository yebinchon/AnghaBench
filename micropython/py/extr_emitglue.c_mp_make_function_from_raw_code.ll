; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_emitglue.c_mp_make_function_from_raw_code.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_emitglue.c_mp_make_function_from_raw_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [32 x i8] c"make_function_from_raw_code %p\0A\00", align 1
@MP_OBJ_NULL = common dso_local global i64 0, align 8
@mp_type_tuple = common dso_local global i32 0, align 4
@mp_type_dict = common dso_local global i32 0, align 4
@MP_CODE_BYTECODE = common dso_local global i32 0, align 4
@MP_SCOPE_FLAG_GENERATOR = common dso_local global i32 0, align 4
@mp_type_gen_wrap = common dso_local global i32 0, align 4
@mp_type_native_gen_wrap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mp_make_function_from_raw_code(%struct.TYPE_6__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = call i32 @DEBUG_OP_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %8)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @MP_OBJ_NULL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @mp_obj_is_type(i64 %18, i32* @mp_type_tuple)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %17, %3
  %22 = phi i1 [ true, %3 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @MP_OBJ_NULL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @mp_obj_is_type(i64 %29, i32* @mp_type_dict)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %28, %21
  %33 = phi i1 [ true, %21 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %39 [
  ]

39:                                               ; preds = %32
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MP_CODE_BYTECODE, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @mp_obj_new_fun_bc(i64 %47, i64 %48, i32 %51, i32 %54)
  store i64 %55, i64* %7, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MP_SCOPE_FLAG_GENERATOR, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %39
  %63 = load i64, i64* %7, align 8
  %64 = call i64 @MP_OBJ_TO_PTR(i64 %63)
  %65 = inttoptr i64 %64 to %struct.TYPE_8__*
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i32* @mp_type_gen_wrap, i32** %66, align 8
  br label %67

67:                                               ; preds = %62, %39
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %7, align 8
  ret i64 %69
}

declare dso_local i32 @DEBUG_OP_printf(i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @mp_obj_is_type(i64, i32*) #1

declare dso_local i64 @mp_obj_new_fun_bc(i64, i64, i32, i32) #1

declare dso_local i64 @MP_OBJ_TO_PTR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
