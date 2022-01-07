; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_objint_longlong.c_mp_obj_int_binary_op.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_objint_longlong.c_mp_obj_int_binary_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@mp_type_int = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"negative power with no float support\00", align 1
@MP_OBJ_NULL = common dso_local global i64 0, align 8
@mp_type_ZeroDivisionError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mp_obj_int_binary_op(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @mp_obj_is_small_int(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @MP_OBJ_SMALL_INT_VALUE(i64 %15)
  store i64 %16, i64* %8, align 8
  br label %25

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @mp_obj_is_type(i64 %18, i32* @mp_type_int)
  %20 = call i32 @assert(i64 %19)
  %21 = load i64, i64* %6, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  br label %25

25:                                               ; preds = %17, %14
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @mp_obj_is_small_int(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @MP_OBJ_SMALL_INT_VALUE(i64 %30)
  store i64 %31, i64* %9, align 8
  br label %47

32:                                               ; preds = %25
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @mp_obj_is_type(i64 %33, i32* @mp_type_int)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i64, i64* %7, align 8
  %38 = inttoptr i64 %37 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %9, align 8
  br label %46

41:                                               ; preds = %32
  %42 = load i32, i32* %5, align 4
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @mp_obj_int_binary_op_extra_cases(i32 %42, i64 %43, i64 %44)
  store i64 %45, i64* %4, align 8
  br label %175

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %29
  %48 = load i32, i32* %5, align 4
  switch i32 %48, label %171 [
    i32 154, label %49
    i32 150, label %49
    i32 129, label %54
    i32 141, label %54
    i32 133, label %59
    i32 145, label %59
    i32 151, label %64
    i32 148, label %64
    i32 136, label %73
    i32 146, label %73
    i32 153, label %82
    i32 149, label %82
    i32 132, label %87
    i32 144, label %87
    i32 128, label %92
    i32 140, label %92
    i32 137, label %97
    i32 147, label %97
    i32 130, label %104
    i32 142, label %104
    i32 131, label %111
    i32 143, label %111
    i32 139, label %141
    i32 135, label %147
    i32 138, label %153
    i32 134, label %159
    i32 152, label %165
  ]

49:                                               ; preds = %47, %47
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i64 @mp_obj_new_int_from_ll(i64 %52)
  store i64 %53, i64* %4, align 8
  br label %175

54:                                               ; preds = %47, %47
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = sub nsw i64 %55, %56
  %58 = call i64 @mp_obj_new_int_from_ll(i64 %57)
  store i64 %58, i64* %4, align 8
  br label %175

59:                                               ; preds = %47, %47
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = mul nsw i64 %60, %61
  %63 = call i64 @mp_obj_new_int_from_ll(i64 %62)
  store i64 %63, i64* %4, align 8
  br label %175

64:                                               ; preds = %47, %47
  %65 = load i64, i64* %9, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %173

68:                                               ; preds = %64
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = sdiv i64 %69, %70
  %72 = call i64 @mp_obj_new_int_from_ll(i64 %71)
  store i64 %72, i64* %4, align 8
  br label %175

73:                                               ; preds = %47, %47
  %74 = load i64, i64* %9, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %173

77:                                               ; preds = %73
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %9, align 8
  %80 = srem i64 %78, %79
  %81 = call i64 @mp_obj_new_int_from_ll(i64 %80)
  store i64 %81, i64* %4, align 8
  br label %175

82:                                               ; preds = %47, %47
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* %9, align 8
  %85 = and i64 %83, %84
  %86 = call i64 @mp_obj_new_int_from_ll(i64 %85)
  store i64 %86, i64* %4, align 8
  br label %175

87:                                               ; preds = %47, %47
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* %9, align 8
  %90 = or i64 %88, %89
  %91 = call i64 @mp_obj_new_int_from_ll(i64 %90)
  store i64 %91, i64* %4, align 8
  br label %175

92:                                               ; preds = %47, %47
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %9, align 8
  %95 = xor i64 %93, %94
  %96 = call i64 @mp_obj_new_int_from_ll(i64 %95)
  store i64 %96, i64* %4, align 8
  br label %175

97:                                               ; preds = %47, %47
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* %9, align 8
  %100 = trunc i64 %99 to i32
  %101 = zext i32 %100 to i64
  %102 = shl i64 %98, %101
  %103 = call i64 @mp_obj_new_int_from_ll(i64 %102)
  store i64 %103, i64* %4, align 8
  br label %175

104:                                              ; preds = %47, %47
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* %9, align 8
  %107 = trunc i64 %106 to i32
  %108 = zext i32 %107 to i64
  %109 = ashr i64 %105, %108
  %110 = call i64 @mp_obj_new_int_from_ll(i64 %109)
  store i64 %110, i64* %4, align 8
  br label %175

111:                                              ; preds = %47, %47
  %112 = load i64, i64* %9, align 8
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = call i32 @mp_raise_ValueError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %111
  store i64 1, i64* %10, align 8
  br label %117

117:                                              ; preds = %132, %116
  %118 = load i64, i64* %9, align 8
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %117
  %121 = load i64, i64* %9, align 8
  %122 = and i64 %121, 1
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load i64, i64* %8, align 8
  %126 = load i64, i64* %10, align 8
  %127 = mul nsw i64 %126, %125
  store i64 %127, i64* %10, align 8
  br label %128

128:                                              ; preds = %124, %120
  %129 = load i64, i64* %9, align 8
  %130 = icmp eq i64 %129, 1
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %138

132:                                              ; preds = %128
  %133 = load i64, i64* %9, align 8
  %134 = sdiv i64 %133, 2
  store i64 %134, i64* %9, align 8
  %135 = load i64, i64* %8, align 8
  %136 = load i64, i64* %8, align 8
  %137 = mul nsw i64 %136, %135
  store i64 %137, i64* %8, align 8
  br label %117

138:                                              ; preds = %131, %117
  %139 = load i64, i64* %10, align 8
  %140 = call i64 @mp_obj_new_int_from_ll(i64 %139)
  store i64 %140, i64* %4, align 8
  br label %175

141:                                              ; preds = %47
  %142 = load i64, i64* %8, align 8
  %143 = load i64, i64* %9, align 8
  %144 = icmp slt i64 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i64 @mp_obj_new_bool(i32 %145)
  store i64 %146, i64* %4, align 8
  br label %175

147:                                              ; preds = %47
  %148 = load i64, i64* %8, align 8
  %149 = load i64, i64* %9, align 8
  %150 = icmp sgt i64 %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i64 @mp_obj_new_bool(i32 %151)
  store i64 %152, i64* %4, align 8
  br label %175

153:                                              ; preds = %47
  %154 = load i64, i64* %8, align 8
  %155 = load i64, i64* %9, align 8
  %156 = icmp sle i64 %154, %155
  %157 = zext i1 %156 to i32
  %158 = call i64 @mp_obj_new_bool(i32 %157)
  store i64 %158, i64* %4, align 8
  br label %175

159:                                              ; preds = %47
  %160 = load i64, i64* %8, align 8
  %161 = load i64, i64* %9, align 8
  %162 = icmp sge i64 %160, %161
  %163 = zext i1 %162 to i32
  %164 = call i64 @mp_obj_new_bool(i32 %163)
  store i64 %164, i64* %4, align 8
  br label %175

165:                                              ; preds = %47
  %166 = load i64, i64* %8, align 8
  %167 = load i64, i64* %9, align 8
  %168 = icmp eq i64 %166, %167
  %169 = zext i1 %168 to i32
  %170 = call i64 @mp_obj_new_bool(i32 %169)
  store i64 %170, i64* %4, align 8
  br label %175

171:                                              ; preds = %47
  %172 = load i64, i64* @MP_OBJ_NULL, align 8
  store i64 %172, i64* %4, align 8
  br label %175

173:                                              ; preds = %76, %67
  %174 = call i32 @mp_raise_msg(i32* @mp_type_ZeroDivisionError, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %171, %165, %159, %153, %147, %141, %138, %104, %97, %92, %87, %82, %77, %68, %59, %54, %49, %41
  %176 = load i64, i64* %4, align 8
  ret i64 %176
}

declare dso_local i64 @mp_obj_is_small_int(i64) #1

declare dso_local i64 @MP_OBJ_SMALL_INT_VALUE(i64) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i64 @mp_obj_is_type(i64, i32*) #1

declare dso_local i64 @mp_obj_int_binary_op_extra_cases(i32, i64, i64) #1

declare dso_local i64 @mp_obj_new_int_from_ll(i64) #1

declare dso_local i32 @mp_raise_ValueError(i8*) #1

declare dso_local i64 @mp_obj_new_bool(i32) #1

declare dso_local i32 @mp_raise_msg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
