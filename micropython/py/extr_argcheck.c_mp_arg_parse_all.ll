; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_argcheck.c_mp_arg_parse_all.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_argcheck.c_mp_arg_parse_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@MP_ARG_KW_ONLY = common dso_local global i32 0, align 4
@MP_MAP_LOOKUP = common dso_local global i32 0, align 4
@MP_ARG_REQUIRED = common dso_local global i32 0, align 4
@MICROPY_ERROR_REPORTING = common dso_local global i64 0, align 8
@MICROPY_ERROR_REPORTING_TERSE = common dso_local global i64 0, align 8
@mp_type_TypeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"'%q' argument required\00", align 1
@MP_ARG_KIND_MASK = common dso_local global i32 0, align 4
@MP_ARG_BOOL = common dso_local global i32 0, align 4
@MP_ARG_INT = common dso_local global i32 0, align 4
@MP_ARG_OBJ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"extra positional arguments given\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"extra keyword arguments given\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_arg_parse_all(i64 %0, i32* %1, %struct.TYPE_10__* %2, i64 %3, %struct.TYPE_13__* %4, %struct.TYPE_12__* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_11__*, align 8
  store i64 %0, i64* %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %18

18:                                               ; preds = %149, %6
  %19 = load i64, i64* %15, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %152

22:                                               ; preds = %18
  %23 = load i64, i64* %15, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %28 = load i64, i64* %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MP_ARG_KW_ONLY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %157

36:                                               ; preds = %26
  %37 = load i64, i64* %13, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %13, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i64, i64* %15, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %16, align 4
  br label %96

43:                                               ; preds = %22
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %46 = load i64, i64* %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @MP_OBJ_NEW_QSTR(i32 %49)
  %51 = load i32, i32* @MP_MAP_LOOKUP, align 4
  %52 = call %struct.TYPE_11__* @mp_map_lookup(%struct.TYPE_10__* %44, i32 %50, i32 %51)
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %17, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %54 = icmp eq %struct.TYPE_11__* %53, null
  br i1 %54, label %55, label %89

55:                                               ; preds = %43
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %57 = load i64, i64* %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MP_ARG_REQUIRED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %55
  %65 = load i64, i64* @MICROPY_ERROR_REPORTING, align 8
  %66 = load i64, i64* @MICROPY_ERROR_REPORTING_TERSE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 (...) @mp_arg_error_terse_mismatch()
  br label %78

70:                                               ; preds = %64
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %72 = load i64, i64* %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @mp_obj_new_exception_msg_varg(i32* @mp_type_TypeError, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = call i32 @nlr_raise(i32 %76)
  br label %78

78:                                               ; preds = %70, %68
  br label %79

79:                                               ; preds = %78, %55
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %81 = load i64, i64* %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i64 %81
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %84 = load i64, i64* %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = bitcast %struct.TYPE_12__* %82 to i8*
  %88 = bitcast %struct.TYPE_12__* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %87, i8* align 4 %88, i64 12, i1 false)
  br label %149

89:                                               ; preds = %43
  %90 = load i64, i64* %14, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %14, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %16, align 4
  br label %95

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95, %36
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %98 = load i64, i64* %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @MP_ARG_KIND_MASK, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* @MP_ARG_BOOL, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %96
  %107 = load i32, i32* %16, align 4
  %108 = call i32 @mp_obj_is_true(i32 %107)
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %110 = load i64, i64* %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 2
  store i32 %108, i32* %112, align 4
  br label %148

113:                                              ; preds = %96
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %115 = load i64, i64* %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @MP_ARG_KIND_MASK, align 4
  %120 = and i32 %118, %119
  %121 = load i32, i32* @MP_ARG_INT, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %113
  %124 = load i32, i32* %16, align 4
  %125 = call i32 @mp_obj_get_int(i32 %124)
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %127 = load i64, i64* %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  store i32 %125, i32* %129, align 4
  br label %147

130:                                              ; preds = %113
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %132 = load i64, i64* %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @MP_ARG_KIND_MASK, align 4
  %137 = and i32 %135, %136
  %138 = load i32, i32* @MP_ARG_OBJ, align 4
  %139 = icmp eq i32 %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = load i32, i32* %16, align 4
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %144 = load i64, i64* %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  store i32 %142, i32* %146, align 4
  br label %147

147:                                              ; preds = %130, %123
  br label %148

148:                                              ; preds = %147, %106
  br label %149

149:                                              ; preds = %148, %79
  %150 = load i64, i64* %15, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %15, align 8
  br label %18

152:                                              ; preds = %18
  %153 = load i64, i64* %13, align 8
  %154 = load i64, i64* %7, align 8
  %155 = icmp ult i64 %153, %154
  br i1 %155, label %156, label %166

156:                                              ; preds = %152
  br label %157

157:                                              ; preds = %156, %35
  %158 = load i64, i64* @MICROPY_ERROR_REPORTING, align 8
  %159 = load i64, i64* @MICROPY_ERROR_REPORTING_TERSE, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = call i32 (...) @mp_arg_error_terse_mismatch()
  br label %165

163:                                              ; preds = %157
  %164 = call i32 @mp_raise_TypeError(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %161
  br label %166

166:                                              ; preds = %165, %152
  %167 = load i64, i64* %14, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ult i64 %167, %170
  br i1 %171, label %172, label %181

172:                                              ; preds = %166
  %173 = load i64, i64* @MICROPY_ERROR_REPORTING, align 8
  %174 = load i64, i64* @MICROPY_ERROR_REPORTING_TERSE, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = call i32 (...) @mp_arg_error_terse_mismatch()
  br label %180

178:                                              ; preds = %172
  %179 = call i32 @mp_raise_TypeError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %180

180:                                              ; preds = %178, %176
  br label %181

181:                                              ; preds = %180, %166
  ret void
}

declare dso_local %struct.TYPE_11__* @mp_map_lookup(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @MP_OBJ_NEW_QSTR(i32) #1

declare dso_local i32 @mp_arg_error_terse_mismatch(...) #1

declare dso_local i32 @nlr_raise(i32) #1

declare dso_local i32 @mp_obj_new_exception_msg_varg(i32*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mp_obj_is_true(i32) #1

declare dso_local i32 @mp_obj_get_int(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mp_raise_TypeError(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
