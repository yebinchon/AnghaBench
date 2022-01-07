; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_pin.c_pin_find.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_pin.c_pin_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@pin_type = common dso_local global i32 0, align 4
@pin_class_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Pin map passed pin \00", align 1
@PRINT_STR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@pin_class_mapper = common dso_local global i32 0, align 4
@mp_const_none = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Pin.mapper didn't return a Pin object\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Pin.mapper maps \00", align 1
@PRINT_REPR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@pin_class_map_dict = common dso_local global i32 0, align 4
@MP_MAP_LOOKUP = common dso_local global i32 0, align 4
@MP_OBJ_NULL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"Pin.map_dict maps \00", align 1
@pin_board_pins_locals_dict = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"Pin.board maps \00", align 1
@pin_cpu_pins_locals_dict = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"Pin.cpu maps \00", align 1
@mp_type_ValueError = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"Pin(%s) doesn't exist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pin_find(i64 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @mp_obj_is_type(i64 %9, i32* @pin_type)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = call i32* @MP_OBJ_TO_PTR(i64 %13)
  store i32* %14, i32** %4, align 8
  %15 = load i64, i64* @pin_class_debug, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @MP_OBJ_FROM_PTR(i32* %19)
  %21 = load i32, i32* @PRINT_STR, align 4
  %22 = call i32 @mp_obj_print(i64 %20, i32 %21)
  %23 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %17, %12
  %25 = load i32*, i32** %4, align 8
  store i32* %25, i32** %2, align 8
  br label %150

26:                                               ; preds = %1
  %27 = load i32, i32* @pin_class_mapper, align 4
  %28 = call i64 @MP_STATE_PORT(i32 %27)
  %29 = load i64, i64* @mp_const_none, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %26
  %32 = load i32, i32* @pin_class_mapper, align 4
  %33 = call i64 @MP_STATE_PORT(i32 %32)
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @mp_call_function_1(i64 %33, i64 %34)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @mp_const_none, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %31
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @mp_obj_is_type(i64 %40, i32* @pin_type)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = call i32 @mp_raise_ValueError(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %39
  %46 = load i64, i64* @pin_class_debug, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i64, i64* %3, align 8
  %51 = load i32, i32* @PRINT_REPR, align 4
  %52 = call i32 @mp_obj_print(i64 %50, i32 %51)
  %53 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i64, i64* %5, align 8
  %55 = load i32, i32* @PRINT_STR, align 4
  %56 = call i32 @mp_obj_print(i64 %54, i32 %55)
  %57 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %48, %45
  %59 = load i64, i64* %5, align 8
  %60 = call i32* @MP_OBJ_TO_PTR(i64 %59)
  store i32* %60, i32** %2, align 8
  br label %150

61:                                               ; preds = %31
  br label %62

62:                                               ; preds = %61, %26
  %63 = load i32, i32* @pin_class_map_dict, align 4
  %64 = call i64 @MP_STATE_PORT(i32 %63)
  %65 = load i64, i64* @mp_const_none, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %103

67:                                               ; preds = %62
  %68 = load i32, i32* @pin_class_map_dict, align 4
  %69 = call i64 @MP_STATE_PORT(i32 %68)
  %70 = call i32* @mp_obj_dict_get_map(i64 %69)
  store i32* %70, i32** %6, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load i64, i64* %3, align 8
  %73 = load i32, i32* @MP_MAP_LOOKUP, align 4
  %74 = call %struct.TYPE_3__* @mp_map_lookup(i32* %71, i64 %72, i32 %73)
  store %struct.TYPE_3__* %74, %struct.TYPE_3__** %7, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %76 = icmp ne %struct.TYPE_3__* %75, null
  br i1 %76, label %77, label %102

77:                                               ; preds = %67
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MP_OBJ_NULL, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %77
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %8, align 8
  %87 = load i64, i64* @pin_class_debug, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %83
  %90 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %91 = load i64, i64* %3, align 8
  %92 = load i32, i32* @PRINT_REPR, align 4
  %93 = call i32 @mp_obj_print(i64 %91, i32 %92)
  %94 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i64, i64* %8, align 8
  %96 = load i32, i32* @PRINT_STR, align 4
  %97 = call i32 @mp_obj_print(i64 %95, i32 %96)
  %98 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %99

99:                                               ; preds = %89, %83
  %100 = load i64, i64* %8, align 8
  %101 = call i32* @MP_OBJ_TO_PTR(i64 %100)
  store i32* %101, i32** %2, align 8
  br label %150

102:                                              ; preds = %77, %67
  br label %103

103:                                              ; preds = %102, %62
  %104 = load i64, i64* %3, align 8
  %105 = call i32* @pin_find_named_pin(i32* @pin_board_pins_locals_dict, i64 %104)
  store i32* %105, i32** %4, align 8
  %106 = load i32*, i32** %4, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %124

108:                                              ; preds = %103
  %109 = load i64, i64* @pin_class_debug, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %108
  %112 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %113 = load i64, i64* %3, align 8
  %114 = load i32, i32* @PRINT_REPR, align 4
  %115 = call i32 @mp_obj_print(i64 %113, i32 %114)
  %116 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %117 = load i32*, i32** %4, align 8
  %118 = call i64 @MP_OBJ_FROM_PTR(i32* %117)
  %119 = load i32, i32* @PRINT_STR, align 4
  %120 = call i32 @mp_obj_print(i64 %118, i32 %119)
  %121 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %122

122:                                              ; preds = %111, %108
  %123 = load i32*, i32** %4, align 8
  store i32* %123, i32** %2, align 8
  br label %150

124:                                              ; preds = %103
  %125 = load i64, i64* %3, align 8
  %126 = call i32* @pin_find_named_pin(i32* @pin_cpu_pins_locals_dict, i64 %125)
  store i32* %126, i32** %4, align 8
  %127 = load i32*, i32** %4, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %145

129:                                              ; preds = %124
  %130 = load i64, i64* @pin_class_debug, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %129
  %133 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %134 = load i64, i64* %3, align 8
  %135 = load i32, i32* @PRINT_REPR, align 4
  %136 = call i32 @mp_obj_print(i64 %134, i32 %135)
  %137 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %138 = load i32*, i32** %4, align 8
  %139 = call i64 @MP_OBJ_FROM_PTR(i32* %138)
  %140 = load i32, i32* @PRINT_STR, align 4
  %141 = call i32 @mp_obj_print(i64 %139, i32 %140)
  %142 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %143

143:                                              ; preds = %132, %129
  %144 = load i32*, i32** %4, align 8
  store i32* %144, i32** %2, align 8
  br label %150

145:                                              ; preds = %124
  %146 = load i64, i64* %3, align 8
  %147 = call i32 @mp_obj_str_get_str(i64 %146)
  %148 = call i32 @mp_obj_new_exception_msg_varg(i32* @mp_type_ValueError, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %147)
  %149 = call i32 @nlr_raise(i32 %148)
  br label %150

150:                                              ; preds = %145, %143, %122, %99, %58, %24
  %151 = load i32*, i32** %2, align 8
  ret i32* %151
}

declare dso_local i64 @mp_obj_is_type(i64, i32*) #1

declare dso_local i32* @MP_OBJ_TO_PTR(i64) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @mp_obj_print(i64, i32) #1

declare dso_local i64 @MP_OBJ_FROM_PTR(i32*) #1

declare dso_local i64 @MP_STATE_PORT(i32) #1

declare dso_local i64 @mp_call_function_1(i64, i64) #1

declare dso_local i32 @mp_raise_ValueError(i8*) #1

declare dso_local i32* @mp_obj_dict_get_map(i64) #1

declare dso_local %struct.TYPE_3__* @mp_map_lookup(i32*, i64, i32) #1

declare dso_local i32* @pin_find_named_pin(i32*, i64) #1

declare dso_local i32 @nlr_raise(i32) #1

declare dso_local i32 @mp_obj_new_exception_msg_varg(i32*, i8*, i32) #1

declare dso_local i32 @mp_obj_str_get_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
