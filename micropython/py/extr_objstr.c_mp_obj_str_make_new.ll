; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_objstr.c_mp_obj_str_make_new.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_objstr.c_mp_obj_str_make_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }

@MP_QSTR_ = common dso_local global i32 0, align 4
@PRINT_STR = common dso_local global i32 0, align 4
@mp_type_bytes = common dso_local global i32 0, align 4
@str_data = common dso_local global i64 0, align 8
@str_len = common dso_local global i32 0, align 4
@str_hash = common dso_local global i32 0, align 4
@MP_QSTRnull = common dso_local global i32 0, align 4
@MP_BUFFER_READ = common dso_local global i32 0, align 4
@mp_type_UnicodeError = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_obj_str_make_new(i32* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_7__, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @mp_arg_check_num(i64 %15, i64 %16, i32 0, i32 3, i32 0)
  %18 = load i64, i64* %7, align 8
  switch i64 %18, label %31 [
    i64 0, label %19
    i64 1, label %22
  ]

19:                                               ; preds = %4
  %20 = load i32, i32* @MP_QSTR_, align 4
  %21 = call i32 @MP_OBJ_NEW_QSTR(i32 %20)
  store i32 %21, i32* %5, align 4
  br label %90

22:                                               ; preds = %4
  %23 = call i32 @vstr_init_print(i32* %10, i32 16, i32* %11)
  %24 = load i32*, i32** %9, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PRINT_STR, align 4
  %28 = call i32 @mp_obj_print_helper(i32* %11, i32 %26, i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @mp_obj_new_str_from_vstr(i32* %29, i32* %10)
  store i32 %30, i32* %5, align 4
  br label %90

31:                                               ; preds = %4
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mp_obj_is_type(i32 %34, i32* @mp_type_bytes)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %79

37:                                               ; preds = %31
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* @str_data, align 8
  %42 = load i32, i32* @str_len, align 4
  %43 = call i32 @GET_STR_DATA_LEN(i32 %40, i64 %41, i32 %42)
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @str_hash, align 4
  %48 = call i32 @GET_STR_HASH(i32 %46, i32 %47)
  %49 = load i32, i32* @str_hash, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %37
  %52 = load i64, i64* @str_data, align 8
  %53 = load i32, i32* @str_len, align 4
  %54 = call i32 @qstr_compute_hash(i64 %52, i32 %53)
  store i32 %54, i32* @str_hash, align 4
  br label %55

55:                                               ; preds = %51, %37
  %56 = load i64, i64* @str_data, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = load i32, i32* @str_len, align 4
  %59 = call i32 @qstr_find_strn(i8* %57, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @MP_QSTRnull, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @MP_OBJ_NEW_QSTR(i32 %64)
  store i32 %65, i32* %5, align 4
  br label %90

66:                                               ; preds = %55
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* @str_len, align 4
  %69 = call i32 @mp_obj_new_str_copy(i32* %67, i32* null, i32 %68)
  %70 = call %struct.TYPE_6__* @MP_OBJ_TO_PTR(i32 %69)
  store %struct.TYPE_6__* %70, %struct.TYPE_6__** %13, align 8
  %71 = load i64, i64* @str_data, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load i32, i32* @str_hash, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %78 = call i32 @MP_OBJ_FROM_PTR(%struct.TYPE_6__* %77)
  store i32 %78, i32* %5, align 4
  br label %90

79:                                               ; preds = %31
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @MP_BUFFER_READ, align 4
  %84 = call i32 @mp_get_buffer_raise(i32 %82, %struct.TYPE_7__* %14, i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @mp_obj_new_str(i64 %86, i32 %88)
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %79, %66, %63, %22, %19
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @mp_arg_check_num(i64, i64, i32, i32, i32) #1

declare dso_local i32 @MP_OBJ_NEW_QSTR(i32) #1

declare dso_local i32 @vstr_init_print(i32*, i32, i32*) #1

declare dso_local i32 @mp_obj_print_helper(i32*, i32, i32) #1

declare dso_local i32 @mp_obj_new_str_from_vstr(i32*, i32*) #1

declare dso_local i32 @mp_obj_is_type(i32, i32*) #1

declare dso_local i32 @GET_STR_DATA_LEN(i32, i64, i32) #1

declare dso_local i32 @GET_STR_HASH(i32, i32) #1

declare dso_local i32 @qstr_compute_hash(i64, i32) #1

declare dso_local i32 @qstr_find_strn(i8*, i32) #1

declare dso_local %struct.TYPE_6__* @MP_OBJ_TO_PTR(i32) #1

declare dso_local i32 @mp_obj_new_str_copy(i32*, i32*, i32) #1

declare dso_local i32 @MP_OBJ_FROM_PTR(%struct.TYPE_6__*) #1

declare dso_local i32 @mp_get_buffer_raise(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @mp_obj_new_str(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
