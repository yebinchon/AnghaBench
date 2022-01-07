; ModuleID = '/home/carl/AnghaBench/micropython/ports/nrf/modules/machine/extr_pin.c_pin_find.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/nrf/modules/machine/extr_pin.c_pin_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }

@machine_pin_num_of_board_pins = common dso_local global i64 0, align 8
@machine_board_pin_obj = common dso_local global %struct.TYPE_21__* null, align 8
@pin_type = common dso_local global i32 0, align 4
@pin_class_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Pin map passed pin \00", align 1
@PRINT_STR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@pin_class_mapper = common dso_local global i32 0, align 4
@mp_const_none = common dso_local global %struct.TYPE_21__* null, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Pin.mapper didn't return a Pin object\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Pin.mapper maps \00", align 1
@PRINT_REPR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@pin_class_map_dict = common dso_local global i32 0, align 4
@MP_MAP_LOOKUP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Pin.map_dict maps \00", align 1
@pin_board_pins_locals_dict = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"Pin.board maps \00", align 1
@pin_cpu_pins_locals_dict = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"Pin.cpu maps \00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"not a valid pin identifier\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @pin_find(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %10 = call i64 @mp_obj_is_small_int(%struct.TYPE_21__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %1
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %14 = call i64 @MP_OBJ_SMALL_INT_VALUE(%struct.TYPE_21__* %13)
  store i64 %14, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %32, %12
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @machine_pin_num_of_board_pins, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** @machine_board_pin_obj, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** @machine_board_pin_obj, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i64 %29
  store %struct.TYPE_21__* %30, %struct.TYPE_21__** %2, align 8
  br label %168

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %6, align 8
  br label %15

35:                                               ; preds = %15
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %38 = call i64 @mp_obj_is_type(%struct.TYPE_21__* %37, i32* @pin_type)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_21__* %41, %struct.TYPE_21__** %4, align 8
  %42 = load i64, i64* @pin_class_debug, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %47 = load i32, i32* @PRINT_STR, align 4
  %48 = call i32 @mp_obj_print(%struct.TYPE_21__* %46, i32 %47)
  %49 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %44, %40
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_21__* %51, %struct.TYPE_21__** %2, align 8
  br label %168

52:                                               ; preds = %36
  %53 = load i32, i32* @pin_class_mapper, align 4
  %54 = call %struct.TYPE_21__* @MP_STATE_PORT(i32 %53)
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** @mp_const_none, align 8
  %56 = icmp ne %struct.TYPE_21__* %54, %55
  br i1 %56, label %57, label %87

57:                                               ; preds = %52
  %58 = load i32, i32* @pin_class_mapper, align 4
  %59 = call %struct.TYPE_21__* @MP_STATE_PORT(i32 %58)
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %61 = call %struct.TYPE_21__* @mp_call_function_1(%struct.TYPE_21__* %59, %struct.TYPE_21__* %60)
  store %struct.TYPE_21__* %61, %struct.TYPE_21__** %4, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** @mp_const_none, align 8
  %64 = icmp ne %struct.TYPE_21__* %62, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %57
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %67 = call i64 @mp_obj_is_type(%struct.TYPE_21__* %66, i32* @pin_type)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = call i32 @mp_raise_ValueError(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %65
  %72 = load i64, i64* @pin_class_debug, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %77 = load i32, i32* @PRINT_REPR, align 4
  %78 = call i32 @mp_obj_print(%struct.TYPE_21__* %76, i32 %77)
  %79 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %81 = load i32, i32* @PRINT_STR, align 4
  %82 = call i32 @mp_obj_print(%struct.TYPE_21__* %80, i32 %81)
  %83 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %74, %71
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_21__* %85, %struct.TYPE_21__** %2, align 8
  br label %168

86:                                               ; preds = %57
  br label %87

87:                                               ; preds = %86, %52
  %88 = load i32, i32* @pin_class_map_dict, align 4
  %89 = call %struct.TYPE_21__* @MP_STATE_PORT(i32 %88)
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** @mp_const_none, align 8
  %91 = icmp ne %struct.TYPE_21__* %89, %90
  br i1 %91, label %92, label %126

92:                                               ; preds = %87
  %93 = load i32, i32* @pin_class_map_dict, align 4
  %94 = call %struct.TYPE_21__* @MP_STATE_PORT(i32 %93)
  %95 = call i32* @mp_obj_dict_get_map(%struct.TYPE_21__* %94)
  store i32* %95, i32** %7, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %98 = load i32, i32* @MP_MAP_LOOKUP, align 4
  %99 = call %struct.TYPE_22__* @mp_map_lookup(i32* %96, %struct.TYPE_21__* %97, i32 %98)
  store %struct.TYPE_22__* %99, %struct.TYPE_22__** %8, align 8
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %101 = icmp ne %struct.TYPE_22__* %100, null
  br i1 %101, label %102, label %125

102:                                              ; preds = %92
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %104, align 8
  %106 = icmp ne %struct.TYPE_21__* %105, null
  br i1 %106, label %107, label %125

107:                                              ; preds = %102
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %109, align 8
  store %struct.TYPE_21__* %110, %struct.TYPE_21__** %4, align 8
  %111 = load i64, i64* @pin_class_debug, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %107
  %114 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %116 = load i32, i32* @PRINT_REPR, align 4
  %117 = call i32 @mp_obj_print(%struct.TYPE_21__* %115, i32 %116)
  %118 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %120 = load i32, i32* @PRINT_STR, align 4
  %121 = call i32 @mp_obj_print(%struct.TYPE_21__* %119, i32 %120)
  %122 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %123

123:                                              ; preds = %113, %107
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_21__* %124, %struct.TYPE_21__** %2, align 8
  br label %168

125:                                              ; preds = %102, %92
  br label %126

126:                                              ; preds = %125, %87
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %128 = call %struct.TYPE_21__* @pin_find_named_pin(i32* @pin_board_pins_locals_dict, %struct.TYPE_21__* %127)
  store %struct.TYPE_21__* %128, %struct.TYPE_21__** %4, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %130 = icmp ne %struct.TYPE_21__* %129, null
  br i1 %130, label %131, label %146

131:                                              ; preds = %126
  %132 = load i64, i64* @pin_class_debug, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %131
  %135 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %137 = load i32, i32* @PRINT_REPR, align 4
  %138 = call i32 @mp_obj_print(%struct.TYPE_21__* %136, i32 %137)
  %139 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %141 = load i32, i32* @PRINT_STR, align 4
  %142 = call i32 @mp_obj_print(%struct.TYPE_21__* %140, i32 %141)
  %143 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %144

144:                                              ; preds = %134, %131
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_21__* %145, %struct.TYPE_21__** %2, align 8
  br label %168

146:                                              ; preds = %126
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %148 = call %struct.TYPE_21__* @pin_find_named_pin(i32* @pin_cpu_pins_locals_dict, %struct.TYPE_21__* %147)
  store %struct.TYPE_21__* %148, %struct.TYPE_21__** %4, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %150 = icmp ne %struct.TYPE_21__* %149, null
  br i1 %150, label %151, label %166

151:                                              ; preds = %146
  %152 = load i64, i64* @pin_class_debug, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %151
  %155 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %157 = load i32, i32* @PRINT_REPR, align 4
  %158 = call i32 @mp_obj_print(%struct.TYPE_21__* %156, i32 %157)
  %159 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %161 = load i32, i32* @PRINT_STR, align 4
  %162 = call i32 @mp_obj_print(%struct.TYPE_21__* %160, i32 %161)
  %163 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %164

164:                                              ; preds = %154, %151
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_21__* %165, %struct.TYPE_21__** %2, align 8
  br label %168

166:                                              ; preds = %146
  %167 = call i32 @mp_raise_ValueError(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %168

168:                                              ; preds = %166, %164, %144, %123, %84, %50, %27
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  ret %struct.TYPE_21__* %169
}

declare dso_local i64 @mp_obj_is_small_int(%struct.TYPE_21__*) #1

declare dso_local i64 @MP_OBJ_SMALL_INT_VALUE(%struct.TYPE_21__*) #1

declare dso_local i64 @mp_obj_is_type(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @mp_obj_print(%struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_21__* @MP_STATE_PORT(i32) #1

declare dso_local %struct.TYPE_21__* @mp_call_function_1(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @mp_raise_ValueError(i8*) #1

declare dso_local i32* @mp_obj_dict_get_map(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @mp_map_lookup(i32*, %struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_21__* @pin_find_named_pin(i32*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
