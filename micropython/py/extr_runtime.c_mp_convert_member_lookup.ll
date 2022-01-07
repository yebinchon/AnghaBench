; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_runtime.c_mp_convert_member_lookup.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_runtime.c_mp_convert_member_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }

@mp_type_staticmethod = common dso_local global i32 0, align 4
@mp_type_classmethod = common dso_local global i32 0, align 4
@MP_OBJ_NULL = common dso_local global i64 0, align 8
@mp_type_type = common dso_local global i32 0, align 4
@MP_QSTR_closure = common dso_local global i64 0, align 8
@MP_QSTR_generator = common dso_local global i64 0, align 8
@mp_type_fun_builtin_0 = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@mp_type_fun_builtin_1 = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@mp_type_fun_builtin_2 = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@mp_type_fun_builtin_3 = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@mp_type_fun_builtin_var = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_convert_member_lookup(i64 %0, %struct.TYPE_13__* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %9 = load i64, i64* %7, align 8
  %10 = call i64 @mp_obj_is_type(i64 %9, i32* @mp_type_staticmethod)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = load i64, i64* %7, align 8
  %14 = call i64 @MP_OBJ_TO_PTR(i64 %13)
  %15 = inttoptr i64 %14 to %struct.TYPE_14__*
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64*, i64** %8, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  store i64 %17, i64* %19, align 8
  br label %93

20:                                               ; preds = %4
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @mp_obj_is_type(i64 %21, i32* @mp_type_classmethod)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @MP_OBJ_NULL, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8
  %30 = call %struct.TYPE_13__* @mp_obj_get_type(i64 %29)
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %6, align 8
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @MP_OBJ_TO_PTR(i64 %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_14__*
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %8, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %40 = call i64 @MP_OBJ_FROM_PTR(%struct.TYPE_13__* %39)
  %41 = load i64*, i64** %8, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  store i64 %40, i64* %42, align 8
  br label %92

43:                                               ; preds = %20
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @mp_obj_is_type(i64 %44, i32* @mp_type_type)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i64, i64* %7, align 8
  %49 = load i64*, i64** %8, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  store i64 %48, i64* %50, align 8
  br label %91

51:                                               ; preds = %43
  %52 = load i64, i64* %7, align 8
  %53 = call i64 @mp_obj_is_fun(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %79, label %55

55:                                               ; preds = %51
  %56 = load i64, i64* %7, align 8
  %57 = call i64 @mp_obj_is_obj(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %55
  %60 = load i64, i64* %7, align 8
  %61 = call i64 @MP_OBJ_TO_PTR(i64 %60)
  %62 = inttoptr i64 %61 to %struct.TYPE_15__*
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @MP_QSTR_closure, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %79, label %69

69:                                               ; preds = %59
  %70 = load i64, i64* %7, align 8
  %71 = call i64 @MP_OBJ_TO_PTR(i64 %70)
  %72 = inttoptr i64 %71 to %struct.TYPE_15__*
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MP_QSTR_generator, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %69, %59, %51
  %80 = load i64, i64* %7, align 8
  %81 = load i64*, i64** %8, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* %5, align 8
  %84 = load i64*, i64** %8, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 1
  store i64 %83, i64* %85, align 8
  br label %90

86:                                               ; preds = %69, %55
  %87 = load i64, i64* %7, align 8
  %88 = load i64*, i64** %8, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %86, %79
  br label %91

91:                                               ; preds = %90, %47
  br label %92

92:                                               ; preds = %91, %31
  br label %93

93:                                               ; preds = %92, %12
  ret void
}

declare dso_local i64 @mp_obj_is_type(i64, i32*) #1

declare dso_local i64 @MP_OBJ_TO_PTR(i64) #1

declare dso_local %struct.TYPE_13__* @mp_obj_get_type(i64) #1

declare dso_local i64 @MP_OBJ_FROM_PTR(%struct.TYPE_13__*) #1

declare dso_local i64 @mp_obj_is_fun(i64) #1

declare dso_local i64 @mp_obj_is_obj(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
