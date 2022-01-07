; ModuleID = '/home/carl/AnghaBench/php-src/ext/reflection/extr_php_reflection.c__parameter_string.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/reflection/extr_php_reflection.c__parameter_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct._zend_arg_info = type { i32*, i32 }
%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Parameter #%d [ \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"<optional> \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"<required> \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"$%s\00", align 1
@ZEND_INTERNAL_FUNCTION = common dso_local global i64 0, align 8
@ZEND_ACC_USER_ARG_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"$param%d\00", align 1
@ZEND_USER_FUNCTION = common dso_local global i64 0, align 8
@ZEND_RECV_INIT = common dso_local global i64 0, align 8
@IS_UNUSED = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@FAILURE = common dso_local global i64 0, align 8
@IS_TRUE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@IS_FALSE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@IS_NULL = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@IS_STRING = common dso_local global i64 0, align 8
@IS_ARRAY = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"Array\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c" ]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_11__*, %struct._zend_arg_info*, i32, i32, i8*)* @_parameter_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_parameter_string(i32* %0, %struct.TYPE_11__* %1, %struct._zend_arg_info* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct._zend_arg_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store %struct._zend_arg_info* %2, %struct._zend_arg_info** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i32 (i32*, i8*, ...) @smart_str_append_printf(i32* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 (i32*, i8*, ...) @smart_str_append_printf(i32* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %29

26:                                               ; preds = %6
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 (i32*, i8*, ...) @smart_str_append_printf(i32* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct._zend_arg_info*, %struct._zend_arg_info** %9, align 8
  %31 = getelementptr inbounds %struct._zend_arg_info, %struct._zend_arg_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @ZEND_TYPE_IS_SET(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load %struct._zend_arg_info*, %struct._zend_arg_info** %9, align 8
  %37 = getelementptr inbounds %struct._zend_arg_info, %struct._zend_arg_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32* @zend_type_to_string(i32 %38)
  store i32* %39, i32** %13, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 @ZSTR_VAL(i32* %41)
  %43 = call i32 (i32*, i8*, ...) @smart_str_append_printf(i32* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @zend_string_release(i32* %44)
  br label %46

46:                                               ; preds = %35, %29
  %47 = load %struct._zend_arg_info*, %struct._zend_arg_info** %9, align 8
  %48 = call i64 @ZEND_ARG_SEND_MODE(%struct._zend_arg_info* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @smart_str_appendc(i32* %51, i8 signext 38)
  br label %53

53:                                               ; preds = %50, %46
  %54 = load %struct._zend_arg_info*, %struct._zend_arg_info** %9, align 8
  %55 = call i64 @ZEND_ARG_IS_VARIADIC(%struct._zend_arg_info* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @smart_str_appends(i32* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %53
  %61 = load %struct._zend_arg_info*, %struct._zend_arg_info** %9, align 8
  %62 = getelementptr inbounds %struct._zend_arg_info, %struct._zend_arg_info* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %93

65:                                               ; preds = %60
  %66 = load i32*, i32** %7, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ZEND_INTERNAL_FUNCTION, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %65
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @ZEND_ACC_USER_ARG_INFO, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %72
  %81 = load %struct._zend_arg_info*, %struct._zend_arg_info** %9, align 8
  %82 = bitcast %struct._zend_arg_info* %81 to %struct.TYPE_10__*
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  br label %90

85:                                               ; preds = %72, %65
  %86 = load %struct._zend_arg_info*, %struct._zend_arg_info** %9, align 8
  %87 = getelementptr inbounds %struct._zend_arg_info, %struct._zend_arg_info* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @ZSTR_VAL(i32* %88)
  br label %90

90:                                               ; preds = %85, %80
  %91 = phi i32 [ %84, %80 ], [ %89, %85 ]
  %92 = call i32 (i32*, i8*, ...) @smart_str_append_printf(i32* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %91)
  br label %97

93:                                               ; preds = %60
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 (i32*, i8*, ...) @smart_str_append_printf(i32* %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %93, %90
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @ZEND_USER_FUNCTION, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %216

103:                                              ; preds = %97
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %216, label %106

106:                                              ; preds = %103
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %108 = bitcast %struct.TYPE_11__* %107 to i32*
  %109 = load i32, i32* %10, align 4
  %110 = call %struct.TYPE_9__* @_get_recv_op(i32* %108, i32 %109)
  store %struct.TYPE_9__* %110, %struct.TYPE_9__** %14, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %112 = icmp ne %struct.TYPE_9__* %111, null
  br i1 %112, label %113, label %215

113:                                              ; preds = %106
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @ZEND_RECV_INIT, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %215

119:                                              ; preds = %113
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @IS_UNUSED, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %215

125:                                              ; preds = %119
  %126 = load i32*, i32** %7, align 8
  %127 = call i32 @smart_str_appends(i32* %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @RT_CONSTANT(%struct.TYPE_9__* %128, i32 %131)
  %133 = call i32 @ZVAL_COPY(i32* %15, i32 %132)
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @zval_update_constant_ex(i32* %15, i32 %137)
  %139 = load i64, i64* @FAILURE, align 8
  %140 = icmp eq i64 %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i64 @UNEXPECTED(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %125
  %145 = call i32 @zval_ptr_dtor(i32* %15)
  br label %219

146:                                              ; preds = %125
  %147 = load i32, i32* %15, align 4
  %148 = call i64 @Z_TYPE(i32 %147)
  %149 = load i64, i64* @IS_TRUE, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load i32*, i32** %7, align 8
  %153 = call i32 @smart_str_appends(i32* %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %213

154:                                              ; preds = %146
  %155 = load i32, i32* %15, align 4
  %156 = call i64 @Z_TYPE(i32 %155)
  %157 = load i64, i64* @IS_FALSE, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load i32*, i32** %7, align 8
  %161 = call i32 @smart_str_appends(i32* %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %212

162:                                              ; preds = %154
  %163 = load i32, i32* %15, align 4
  %164 = call i64 @Z_TYPE(i32 %163)
  %165 = load i64, i64* @IS_NULL, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load i32*, i32** %7, align 8
  %169 = call i32 @smart_str_appends(i32* %168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %211

170:                                              ; preds = %162
  %171 = load i32, i32* %15, align 4
  %172 = call i64 @Z_TYPE(i32 %171)
  %173 = load i64, i64* @IS_STRING, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %194

175:                                              ; preds = %170
  %176 = load i32*, i32** %7, align 8
  %177 = call i32 @smart_str_appendc(i32* %176, i8 signext 39)
  %178 = load i32*, i32** %7, align 8
  %179 = load i32, i32* %15, align 4
  %180 = call i32 @Z_STRVAL(i32 %179)
  %181 = load i32, i32* %15, align 4
  %182 = call i32 @Z_STRLEN(i32 %181)
  %183 = call i32 @MIN(i32 %182, i32 15)
  %184 = call i32 @smart_str_appendl(i32* %178, i32 %180, i32 %183)
  %185 = load i32, i32* %15, align 4
  %186 = call i32 @Z_STRLEN(i32 %185)
  %187 = icmp sgt i32 %186, 15
  br i1 %187, label %188, label %191

188:                                              ; preds = %175
  %189 = load i32*, i32** %7, align 8
  %190 = call i32 @smart_str_appends(i32* %189, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %191

191:                                              ; preds = %188, %175
  %192 = load i32*, i32** %7, align 8
  %193 = call i32 @smart_str_appendc(i32* %192, i8 signext 39)
  br label %210

194:                                              ; preds = %170
  %195 = load i32, i32* %15, align 4
  %196 = call i64 @Z_TYPE(i32 %195)
  %197 = load i64, i64* @IS_ARRAY, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %194
  %200 = load i32*, i32** %7, align 8
  %201 = call i32 @smart_str_appends(i32* %200, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %209

202:                                              ; preds = %194
  %203 = call i32* @zval_get_tmp_string(i32* %15, i32** %16)
  store i32* %203, i32** %17, align 8
  %204 = load i32*, i32** %7, align 8
  %205 = load i32*, i32** %17, align 8
  %206 = call i32 @smart_str_append(i32* %204, i32* %205)
  %207 = load i32*, i32** %16, align 8
  %208 = call i32 @zend_tmp_string_release(i32* %207)
  br label %209

209:                                              ; preds = %202, %199
  br label %210

210:                                              ; preds = %209, %191
  br label %211

211:                                              ; preds = %210, %167
  br label %212

212:                                              ; preds = %211, %159
  br label %213

213:                                              ; preds = %212, %151
  %214 = call i32 @zval_ptr_dtor(i32* %15)
  br label %215

215:                                              ; preds = %213, %119, %113, %106
  br label %216

216:                                              ; preds = %215, %103, %97
  %217 = load i32*, i32** %7, align 8
  %218 = call i32 @smart_str_appends(i32* %217, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  br label %219

219:                                              ; preds = %216, %144
  ret void
}

declare dso_local i32 @smart_str_append_printf(i32*, i8*, ...) #1

declare dso_local i64 @ZEND_TYPE_IS_SET(i32) #1

declare dso_local i32* @zend_type_to_string(i32) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @zend_string_release(i32*) #1

declare dso_local i64 @ZEND_ARG_SEND_MODE(%struct._zend_arg_info*) #1

declare dso_local i32 @smart_str_appendc(i32*, i8 signext) #1

declare dso_local i64 @ZEND_ARG_IS_VARIADIC(%struct._zend_arg_info*) #1

declare dso_local i32 @smart_str_appends(i32*, i8*) #1

declare dso_local %struct.TYPE_9__* @_get_recv_op(i32*, i32) #1

declare dso_local i32 @ZVAL_COPY(i32*, i32) #1

declare dso_local i32 @RT_CONSTANT(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @UNEXPECTED(i32) #1

declare dso_local i64 @zval_update_constant_ex(i32*, i32) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32 @smart_str_appendl(i32*, i32, i32) #1

declare dso_local i32 @Z_STRVAL(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @Z_STRLEN(i32) #1

declare dso_local i32* @zval_get_tmp_string(i32*, i32**) #1

declare dso_local i32 @smart_str_append(i32*, i32*) #1

declare dso_local i32 @zend_tmp_string_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
