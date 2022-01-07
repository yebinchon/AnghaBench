; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_runtime.c_mp_resume.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_runtime.c_mp_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 (i64)* }

@MP_OBJ_NULL = common dso_local global i64 0, align 8
@mp_type_gen_instance = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@mp_const_none = common dso_local global i64 0, align 8
@MP_OBJ_STOP_ITERATION = common dso_local global i64 0, align 8
@MP_VM_RETURN_YIELD = common dso_local global i32 0, align 4
@MP_VM_RETURN_NORMAL = common dso_local global i32 0, align 4
@MP_QSTR___next__ = common dso_local global i32 0, align 4
@MP_QSTR_send = common dso_local global i32 0, align 4
@mp_type_GeneratorExit = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@MP_QSTR_close = common dso_local global i32 0, align 4
@MP_QSTR_throw = common dso_local global i32 0, align 4
@mp_type_StopIteration = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@mp_type_RuntimeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"generator raised StopIteration\00", align 1
@MP_VM_RETURN_EXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_resume(i64 %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [3 x i64], align 16
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @MP_OBJ_NULL, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @MP_OBJ_NULL, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = xor i32 %16, %20
  %22 = call i32 @assert(i32 %21)
  %23 = load i64, i64* %6, align 8
  %24 = call %struct.TYPE_7__* @mp_obj_get_type(i64 %23)
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %10, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %26 = icmp eq %struct.TYPE_7__* %25, @mp_type_gen_instance
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64*, i64** %9, align 8
  %32 = call i32 @mp_obj_gen_resume(i64 %28, i64 %29, i64 %30, i64* %31)
  store i32 %32, i32* %5, align 4
  br label %149

33:                                               ; preds = %4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64 (i64)*, i64 (i64)** %35, align 8
  %37 = icmp ne i64 (i64)* %36, null
  br i1 %37, label %38, label %57

38:                                               ; preds = %33
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @mp_const_none, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64 (i64)*, i64 (i64)** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i64 %45(i64 %46)
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i64*, i64** %9, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* @MP_OBJ_STOP_ITERATION, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* @MP_VM_RETURN_YIELD, align 4
  store i32 %54, i32* %5, align 4
  br label %149

55:                                               ; preds = %42
  %56 = load i32, i32* @MP_VM_RETURN_NORMAL, align 4
  store i32 %56, i32* %5, align 4
  br label %149

57:                                               ; preds = %38, %33
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @mp_const_none, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %57
  %62 = load i64, i64* %6, align 8
  %63 = load i32, i32* @MP_QSTR___next__, align 4
  %64 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  %65 = call i32 @mp_load_method_maybe(i64 %62, i32 %63, i64* %64)
  %66 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  %67 = load i64, i64* %66, align 16
  %68 = load i64, i64* @MP_OBJ_NULL, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  %72 = call i64 @mp_call_method_n_kw(i32 0, i32 0, i64* %71)
  %73 = load i64*, i64** %9, align 8
  store i64 %72, i64* %73, align 8
  %74 = load i32, i32* @MP_VM_RETURN_YIELD, align 4
  store i32 %74, i32* %5, align 4
  br label %149

75:                                               ; preds = %61
  br label %76

76:                                               ; preds = %75, %57
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* @MP_OBJ_NULL, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load i64, i64* %6, align 8
  %82 = load i32, i32* @MP_QSTR_send, align 4
  %83 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  %84 = call i32 @mp_load_method(i64 %81, i32 %82, i64* %83)
  %85 = load i64, i64* %7, align 8
  %86 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 2
  store i64 %85, i64* %86, align 16
  %87 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  %88 = call i64 @mp_call_method_n_kw(i32 1, i32 0, i64* %87)
  %89 = load i64*, i64** %9, align 8
  store i64 %88, i64* %89, align 8
  %90 = load i32, i32* @MP_VM_RETURN_YIELD, align 4
  store i32 %90, i32* %5, align 4
  br label %149

91:                                               ; preds = %76
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* @MP_OBJ_NULL, align 8
  %94 = icmp ne i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load i64, i64* %8, align 8
  %98 = call %struct.TYPE_7__* @mp_obj_get_type(i64 %97)
  %99 = call i32 @MP_OBJ_FROM_PTR(%struct.TYPE_7__* %98)
  %100 = call i32 @MP_OBJ_FROM_PTR(%struct.TYPE_7__* @mp_type_GeneratorExit)
  %101 = call i64 @mp_obj_is_subclass_fast(i32 %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %91
  %104 = load i64, i64* %6, align 8
  %105 = load i32, i32* @MP_QSTR_close, align 4
  %106 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  %107 = call i32 @mp_load_method_maybe(i64 %104, i32 %105, i64* %106)
  %108 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  %109 = load i64, i64* %108, align 16
  %110 = load i64, i64* @MP_OBJ_NULL, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %103
  %113 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  %114 = call i64 @mp_call_method_n_kw(i32 0, i32 0, i64* %113)
  %115 = load i64*, i64** %9, align 8
  store i64 %114, i64* %115, align 8
  %116 = load i32, i32* @MP_VM_RETURN_NORMAL, align 4
  store i32 %116, i32* %5, align 4
  br label %149

117:                                              ; preds = %103
  br label %135

118:                                              ; preds = %91
  %119 = load i64, i64* %6, align 8
  %120 = load i32, i32* @MP_QSTR_throw, align 4
  %121 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  %122 = call i32 @mp_load_method_maybe(i64 %119, i32 %120, i64* %121)
  %123 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  %124 = load i64, i64* %123, align 16
  %125 = load i64, i64* @MP_OBJ_NULL, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %118
  %128 = load i64, i64* %8, align 8
  %129 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 2
  store i64 %128, i64* %129, align 16
  %130 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  %131 = call i64 @mp_call_method_n_kw(i32 1, i32 0, i64* %130)
  %132 = load i64*, i64** %9, align 8
  store i64 %131, i64* %132, align 8
  %133 = load i32, i32* @MP_VM_RETURN_YIELD, align 4
  store i32 %133, i32* %5, align 4
  br label %149

134:                                              ; preds = %118
  br label %135

135:                                              ; preds = %134, %117
  %136 = load i64, i64* %8, align 8
  %137 = call i32 @MP_OBJ_FROM_PTR(%struct.TYPE_7__* @mp_type_StopIteration)
  %138 = call i64 @mp_obj_exception_match(i64 %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = call i64 @mp_obj_new_exception_msg(i32* @mp_type_RuntimeError, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %142 = load i64*, i64** %9, align 8
  store i64 %141, i64* %142, align 8
  br label %147

143:                                              ; preds = %135
  %144 = load i64, i64* %8, align 8
  %145 = call i64 @mp_make_raise_obj(i64 %144)
  %146 = load i64*, i64** %9, align 8
  store i64 %145, i64* %146, align 8
  br label %147

147:                                              ; preds = %143, %140
  %148 = load i32, i32* @MP_VM_RETURN_EXCEPTION, align 4
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %147, %127, %112, %80, %70, %55, %53, %27
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_7__* @mp_obj_get_type(i64) #1

declare dso_local i32 @mp_obj_gen_resume(i64, i64, i64, i64*) #1

declare dso_local i32 @mp_load_method_maybe(i64, i32, i64*) #1

declare dso_local i64 @mp_call_method_n_kw(i32, i32, i64*) #1

declare dso_local i32 @mp_load_method(i64, i32, i64*) #1

declare dso_local i64 @mp_obj_is_subclass_fast(i32, i32) #1

declare dso_local i32 @MP_OBJ_FROM_PTR(%struct.TYPE_7__*) #1

declare dso_local i64 @mp_obj_exception_match(i64, i32) #1

declare dso_local i64 @mp_obj_new_exception_msg(i32*, i8*) #1

declare dso_local i64 @mp_make_raise_obj(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
