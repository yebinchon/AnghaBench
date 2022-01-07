; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_simple.c_run_tests.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_simple.c_run_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"json_boolean(1) failed\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"json_boolean(-123) failed\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"json_boolean(0) failed\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"json_boolean_value failed\00", align 1
@JSON_INTEGER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"json_typeof failed\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"json_is_object failed\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"json_is_array failed\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"json_is_string failed\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"json_is_integer failed\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"json_is_real failed\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"json_is_number failed\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"json_is_true failed\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"json_is_false failed\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"json_is_boolean failed\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"json_is_null failed\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"json_string failed\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"invalid string value\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"invalid string length\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"barr\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"json_string_set failed\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"hi\00ho\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"hi\00ho\00\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"json_string(NULL) failed\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"a\EFz\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"json_string(<invalid utf-8>) failed\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"json_string_nocheck failed\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"json_string_set_nocheck failed\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"qu\FF\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"\FD\FE\FF\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"json_integer failed\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"invalid integer value\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"invalid number value\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"json_integer_set failed\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"json_real failed\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"json_real_set failed\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"invalid real value\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"json_true failed\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"json_false failed\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"json_null failed\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"refcounting true works incorrectly\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"refcounting false works incorrectly\00", align 1
@.str.42 = private unnamed_addr constant [35 x i8] c"refcounting null works incorrectly\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_tests() #0 {
  %1 = alloca %struct.TYPE_37__*, align 8
  %2 = call %struct.TYPE_37__* @json_boolean(i32 1)
  store %struct.TYPE_37__* %2, %struct.TYPE_37__** %1, align 8
  %3 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %4 = call i64 @json_is_true(%struct.TYPE_37__* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 @fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %10 = call i32 @json_decref(%struct.TYPE_37__* %9)
  %11 = call %struct.TYPE_37__* @json_boolean(i32 -123)
  store %struct.TYPE_37__* %11, %struct.TYPE_37__** %1, align 8
  %12 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %13 = call i64 @json_is_true(%struct.TYPE_37__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = call i32 @fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %8
  %18 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %19 = call i32 @json_decref(%struct.TYPE_37__* %18)
  %20 = call %struct.TYPE_37__* @json_boolean(i32 0)
  store %struct.TYPE_37__* %20, %struct.TYPE_37__** %1, align 8
  %21 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %22 = call i64 @json_is_false(%struct.TYPE_37__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = call i32 @fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %17
  %27 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %28 = call i64 @json_boolean_value(%struct.TYPE_37__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %26
  %33 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %34 = call i32 @json_decref(%struct.TYPE_37__* %33)
  %35 = call %struct.TYPE_37__* @json_integer(i32 1)
  store %struct.TYPE_37__* %35, %struct.TYPE_37__** %1, align 8
  %36 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %37 = call i64 @json_typeof(%struct.TYPE_37__* %36)
  %38 = load i64, i64* @JSON_INTEGER, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = call i32 @fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %32
  %43 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %44 = call i64 @json_is_object(%struct.TYPE_37__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 @fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %42
  %49 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %50 = call i64 @json_is_array(%struct.TYPE_37__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 @fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %48
  %55 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %56 = call i64 @json_is_string(%struct.TYPE_37__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 @fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %54
  %61 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %62 = call i32 @json_is_integer(%struct.TYPE_37__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = call i32 @fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %60
  %67 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %68 = call i64 @json_is_real(%struct.TYPE_37__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = call i32 @fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %66
  %73 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %74 = call i32 @json_is_number(%struct.TYPE_37__* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = call i32 @fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %72
  %79 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %80 = call i64 @json_is_true(%struct.TYPE_37__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 @fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %78
  %85 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %86 = call i64 @json_is_false(%struct.TYPE_37__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = call i32 @fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %84
  %91 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %92 = call i64 @json_is_boolean(%struct.TYPE_37__* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = call i32 @fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %90
  %97 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %98 = call i64 @json_is_null(%struct.TYPE_37__* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = call i32 @fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %96
  %103 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %104 = call i32 @json_decref(%struct.TYPE_37__* %103)
  %105 = call %struct.TYPE_37__* @json_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  store %struct.TYPE_37__* %105, %struct.TYPE_37__** %1, align 8
  %106 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %107 = icmp ne %struct.TYPE_37__* %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %102
  %109 = call i32 @fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %102
  %111 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %112 = call i32 @json_string_value(%struct.TYPE_37__* %111)
  %113 = call i64 @strcmp(i32 %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = call i32 @fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %110
  %118 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %119 = call i32 @json_string_length(%struct.TYPE_37__* %118)
  %120 = icmp ne i32 %119, 3
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = call i32 @fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %117
  %124 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %125 = call i64 @json_string_set(%struct.TYPE_37__* %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = call i32 @fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %123
  %130 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %131 = call i32 @json_string_value(%struct.TYPE_37__* %130)
  %132 = call i64 @strcmp(i32 %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = call i32 @fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %129
  %137 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %138 = call i32 @json_string_length(%struct.TYPE_37__* %137)
  %139 = icmp ne i32 %138, 4
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = call i32 @fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %136
  %143 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %144 = call i64 @json_string_setn(%struct.TYPE_37__* %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i32 5)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = call i32 @fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %142
  %149 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %150 = call i32 @json_string_value(%struct.TYPE_37__* %149)
  %151 = call i64 @memcmp(i32 %150, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i32 6)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = call i32 @fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %148
  %156 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %157 = call i32 @json_string_length(%struct.TYPE_37__* %156)
  %158 = icmp ne i32 %157, 5
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = call i32 @fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159, %155
  %162 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %163 = call i32 @json_decref(%struct.TYPE_37__* %162)
  %164 = call %struct.TYPE_37__* @json_string(i8* null)
  store %struct.TYPE_37__* %164, %struct.TYPE_37__** %1, align 8
  %165 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %166 = icmp ne %struct.TYPE_37__* %165, null
  br i1 %166, label %167, label %169

167:                                              ; preds = %161
  %168 = call i32 @fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %161
  %170 = call %struct.TYPE_37__* @json_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0))
  store %struct.TYPE_37__* %170, %struct.TYPE_37__** %1, align 8
  %171 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %172 = icmp ne %struct.TYPE_37__* %171, null
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = call i32 @fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %169
  %176 = call %struct.TYPE_37__* @json_string_nocheck(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  store %struct.TYPE_37__* %176, %struct.TYPE_37__** %1, align 8
  %177 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %178 = icmp ne %struct.TYPE_37__* %177, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %175
  %180 = call i32 @fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0))
  br label %181

181:                                              ; preds = %179, %175
  %182 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %183 = call i32 @json_string_value(%struct.TYPE_37__* %182)
  %184 = call i64 @strcmp(i32 %183, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = call i32 @fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  br label %188

188:                                              ; preds = %186, %181
  %189 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %190 = call i32 @json_string_length(%struct.TYPE_37__* %189)
  %191 = icmp ne i32 %190, 3
  br i1 %191, label %192, label %194

192:                                              ; preds = %188
  %193 = call i32 @fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  br label %194

194:                                              ; preds = %192, %188
  %195 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %196 = call i64 @json_string_set_nocheck(%struct.TYPE_37__* %195, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = call i32 @fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0))
  br label %200

200:                                              ; preds = %198, %194
  %201 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %202 = call i32 @json_string_value(%struct.TYPE_37__* %201)
  %203 = call i64 @strcmp(i32 %202, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %200
  %206 = call i32 @fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  br label %207

207:                                              ; preds = %205, %200
  %208 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %209 = call i32 @json_string_length(%struct.TYPE_37__* %208)
  %210 = icmp ne i32 %209, 4
  br i1 %210, label %211, label %213

211:                                              ; preds = %207
  %212 = call i32 @fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  br label %213

213:                                              ; preds = %211, %207
  %214 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %215 = call i64 @json_string_setn_nocheck(%struct.TYPE_37__* %214, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i32 5)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %213
  %218 = call i32 @fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  br label %219

219:                                              ; preds = %217, %213
  %220 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %221 = call i32 @json_string_value(%struct.TYPE_37__* %220)
  %222 = call i64 @memcmp(i32 %221, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i32 6)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %219
  %225 = call i32 @fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  br label %226

226:                                              ; preds = %224, %219
  %227 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %228 = call i32 @json_string_length(%struct.TYPE_37__* %227)
  %229 = icmp ne i32 %228, 5
  br i1 %229, label %230, label %232

230:                                              ; preds = %226
  %231 = call i32 @fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  br label %232

232:                                              ; preds = %230, %226
  %233 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %234 = call i32 @json_decref(%struct.TYPE_37__* %233)
  %235 = call %struct.TYPE_37__* @json_string_nocheck(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0))
  store %struct.TYPE_37__* %235, %struct.TYPE_37__** %1, align 8
  %236 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %237 = icmp ne %struct.TYPE_37__* %236, null
  br i1 %237, label %240, label %238

238:                                              ; preds = %232
  %239 = call i32 @fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0))
  br label %240

240:                                              ; preds = %238, %232
  %241 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %242 = call i32 @json_string_value(%struct.TYPE_37__* %241)
  %243 = call i64 @strcmp(i32 %242, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0))
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %240
  %246 = call i32 @fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  br label %247

247:                                              ; preds = %245, %240
  %248 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %249 = call i32 @json_string_length(%struct.TYPE_37__* %248)
  %250 = icmp ne i32 %249, 3
  br i1 %250, label %251, label %253

251:                                              ; preds = %247
  %252 = call i32 @fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  br label %253

253:                                              ; preds = %251, %247
  %254 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %255 = call i64 @json_string_set_nocheck(%struct.TYPE_37__* %254, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0))
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %253
  %258 = call i32 @fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0))
  br label %259

259:                                              ; preds = %257, %253
  %260 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %261 = call i32 @json_string_value(%struct.TYPE_37__* %260)
  %262 = call i64 @strcmp(i32 %261, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0))
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %259
  %265 = call i32 @fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  br label %266

266:                                              ; preds = %264, %259
  %267 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %268 = call i32 @json_string_length(%struct.TYPE_37__* %267)
  %269 = icmp ne i32 %268, 3
  br i1 %269, label %270, label %272

270:                                              ; preds = %266
  %271 = call i32 @fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  br label %272

272:                                              ; preds = %270, %266
  %273 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %274 = call i32 @json_decref(%struct.TYPE_37__* %273)
  %275 = call %struct.TYPE_37__* @json_integer(i32 123)
  store %struct.TYPE_37__* %275, %struct.TYPE_37__** %1, align 8
  %276 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %277 = icmp ne %struct.TYPE_37__* %276, null
  br i1 %277, label %280, label %278

278:                                              ; preds = %272
  %279 = call i32 @fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0))
  br label %280

280:                                              ; preds = %278, %272
  %281 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %282 = call i32 @json_integer_value(%struct.TYPE_37__* %281)
  %283 = icmp ne i32 %282, 123
  br i1 %283, label %284, label %286

284:                                              ; preds = %280
  %285 = call i32 @fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0))
  br label %286

286:                                              ; preds = %284, %280
  %287 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %288 = call double @json_number_value(%struct.TYPE_37__* %287)
  %289 = fcmp une double %288, 1.230000e+02
  br i1 %289, label %290, label %292

290:                                              ; preds = %286
  %291 = call i32 @fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0))
  br label %292

292:                                              ; preds = %290, %286
  %293 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %294 = call i64 @json_integer_set(%struct.TYPE_37__* %293, i32 321)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %292
  %297 = call i32 @fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0))
  br label %298

298:                                              ; preds = %296, %292
  %299 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %300 = call i32 @json_integer_value(%struct.TYPE_37__* %299)
  %301 = icmp ne i32 %300, 321
  br i1 %301, label %302, label %304

302:                                              ; preds = %298
  %303 = call i32 @fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0))
  br label %304

304:                                              ; preds = %302, %298
  %305 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %306 = call double @json_number_value(%struct.TYPE_37__* %305)
  %307 = fcmp une double %306, 3.210000e+02
  br i1 %307, label %308, label %310

308:                                              ; preds = %304
  %309 = call i32 @fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0))
  br label %310

310:                                              ; preds = %308, %304
  %311 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %312 = call i32 @json_decref(%struct.TYPE_37__* %311)
  %313 = call %struct.TYPE_37__* @json_real(double 1.231230e+02)
  store %struct.TYPE_37__* %313, %struct.TYPE_37__** %1, align 8
  %314 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %315 = icmp ne %struct.TYPE_37__* %314, null
  br i1 %315, label %318, label %316

316:                                              ; preds = %310
  %317 = call i32 @fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0))
  br label %318

318:                                              ; preds = %316, %310
  %319 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %320 = call double @json_real_value(%struct.TYPE_37__* %319)
  %321 = fcmp une double %320, 1.231230e+02
  br i1 %321, label %322, label %324

322:                                              ; preds = %318
  %323 = call i32 @fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0))
  br label %324

324:                                              ; preds = %322, %318
  %325 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %326 = call double @json_number_value(%struct.TYPE_37__* %325)
  %327 = fcmp une double %326, 1.231230e+02
  br i1 %327, label %328, label %330

328:                                              ; preds = %324
  %329 = call i32 @fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0))
  br label %330

330:                                              ; preds = %328, %324
  %331 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %332 = call i64 @json_real_set(%struct.TYPE_37__* %331, double 3.213210e+02)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %336

334:                                              ; preds = %330
  %335 = call i32 @fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0))
  br label %336

336:                                              ; preds = %334, %330
  %337 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %338 = call double @json_real_value(%struct.TYPE_37__* %337)
  %339 = fcmp une double %338, 3.213210e+02
  br i1 %339, label %340, label %342

340:                                              ; preds = %336
  %341 = call i32 @fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i64 0, i64 0))
  br label %342

342:                                              ; preds = %340, %336
  %343 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %344 = call double @json_number_value(%struct.TYPE_37__* %343)
  %345 = fcmp une double %344, 3.213210e+02
  br i1 %345, label %346, label %348

346:                                              ; preds = %342
  %347 = call i32 @fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0))
  br label %348

348:                                              ; preds = %346, %342
  %349 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %350 = call i32 @json_decref(%struct.TYPE_37__* %349)
  %351 = call %struct.TYPE_37__* (...) @json_true()
  store %struct.TYPE_37__* %351, %struct.TYPE_37__** %1, align 8
  %352 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %353 = icmp ne %struct.TYPE_37__* %352, null
  br i1 %353, label %356, label %354

354:                                              ; preds = %348
  %355 = call i32 @fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0))
  br label %356

356:                                              ; preds = %354, %348
  %357 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %358 = call i32 @json_decref(%struct.TYPE_37__* %357)
  %359 = call %struct.TYPE_37__* (...) @json_false()
  store %struct.TYPE_37__* %359, %struct.TYPE_37__** %1, align 8
  %360 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %361 = icmp ne %struct.TYPE_37__* %360, null
  br i1 %361, label %364, label %362

362:                                              ; preds = %356
  %363 = call i32 @fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i64 0, i64 0))
  br label %364

364:                                              ; preds = %362, %356
  %365 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %366 = call i32 @json_decref(%struct.TYPE_37__* %365)
  %367 = call %struct.TYPE_37__* (...) @json_null()
  store %struct.TYPE_37__* %367, %struct.TYPE_37__** %1, align 8
  %368 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %369 = icmp ne %struct.TYPE_37__* %368, null
  br i1 %369, label %372, label %370

370:                                              ; preds = %364
  %371 = call i32 @fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i64 0, i64 0))
  br label %372

372:                                              ; preds = %370, %364
  %373 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %374 = call i32 @json_decref(%struct.TYPE_37__* %373)
  %375 = call %struct.TYPE_37__* (...) @json_true()
  store %struct.TYPE_37__* %375, %struct.TYPE_37__** %1, align 8
  %376 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %377 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %378, -1
  br i1 %379, label %380, label %382

380:                                              ; preds = %372
  %381 = call i32 @fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.40, i64 0, i64 0))
  br label %382

382:                                              ; preds = %380, %372
  %383 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %384 = call i32 @json_decref(%struct.TYPE_37__* %383)
  %385 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %386 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = icmp ne i64 %387, -1
  br i1 %388, label %389, label %391

389:                                              ; preds = %382
  %390 = call i32 @fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.40, i64 0, i64 0))
  br label %391

391:                                              ; preds = %389, %382
  %392 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %393 = call %struct.TYPE_37__* @json_incref(%struct.TYPE_37__* %392)
  %394 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %395 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, -1
  br i1 %397, label %398, label %400

398:                                              ; preds = %391
  %399 = call i32 @fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.40, i64 0, i64 0))
  br label %400

400:                                              ; preds = %398, %391
  %401 = call %struct.TYPE_37__* (...) @json_false()
  store %struct.TYPE_37__* %401, %struct.TYPE_37__** %1, align 8
  %402 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %403 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = icmp ne i64 %404, -1
  br i1 %405, label %406, label %408

406:                                              ; preds = %400
  %407 = call i32 @fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i64 0, i64 0))
  br label %408

408:                                              ; preds = %406, %400
  %409 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %410 = call i32 @json_decref(%struct.TYPE_37__* %409)
  %411 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %412 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %411, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = icmp ne i64 %413, -1
  br i1 %414, label %415, label %417

415:                                              ; preds = %408
  %416 = call i32 @fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i64 0, i64 0))
  br label %417

417:                                              ; preds = %415, %408
  %418 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %419 = call %struct.TYPE_37__* @json_incref(%struct.TYPE_37__* %418)
  %420 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %421 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %420, i32 0, i32 0
  %422 = load i64, i64* %421, align 8
  %423 = icmp ne i64 %422, -1
  br i1 %423, label %424, label %426

424:                                              ; preds = %417
  %425 = call i32 @fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i64 0, i64 0))
  br label %426

426:                                              ; preds = %424, %417
  %427 = call %struct.TYPE_37__* (...) @json_null()
  store %struct.TYPE_37__* %427, %struct.TYPE_37__** %1, align 8
  %428 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %429 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %428, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  %431 = icmp ne i64 %430, -1
  br i1 %431, label %432, label %434

432:                                              ; preds = %426
  %433 = call i32 @fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.42, i64 0, i64 0))
  br label %434

434:                                              ; preds = %432, %426
  %435 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %436 = call i32 @json_decref(%struct.TYPE_37__* %435)
  %437 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %438 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %437, i32 0, i32 0
  %439 = load i64, i64* %438, align 8
  %440 = icmp ne i64 %439, -1
  br i1 %440, label %441, label %443

441:                                              ; preds = %434
  %442 = call i32 @fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.42, i64 0, i64 0))
  br label %443

443:                                              ; preds = %441, %434
  %444 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %445 = call %struct.TYPE_37__* @json_incref(%struct.TYPE_37__* %444)
  %446 = load %struct.TYPE_37__*, %struct.TYPE_37__** %1, align 8
  %447 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %446, i32 0, i32 0
  %448 = load i64, i64* %447, align 8
  %449 = icmp ne i64 %448, -1
  br i1 %449, label %450, label %452

450:                                              ; preds = %443
  %451 = call i32 @fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.42, i64 0, i64 0))
  br label %452

452:                                              ; preds = %450, %443
  ret void
}

declare dso_local %struct.TYPE_37__* @json_boolean(i32) #1

declare dso_local i64 @json_is_true(%struct.TYPE_37__*) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32 @json_decref(%struct.TYPE_37__*) #1

declare dso_local i64 @json_is_false(%struct.TYPE_37__*) #1

declare dso_local i64 @json_boolean_value(%struct.TYPE_37__*) #1

declare dso_local %struct.TYPE_37__* @json_integer(i32) #1

declare dso_local i64 @json_typeof(%struct.TYPE_37__*) #1

declare dso_local i64 @json_is_object(%struct.TYPE_37__*) #1

declare dso_local i64 @json_is_array(%struct.TYPE_37__*) #1

declare dso_local i64 @json_is_string(%struct.TYPE_37__*) #1

declare dso_local i32 @json_is_integer(%struct.TYPE_37__*) #1

declare dso_local i64 @json_is_real(%struct.TYPE_37__*) #1

declare dso_local i32 @json_is_number(%struct.TYPE_37__*) #1

declare dso_local i64 @json_is_boolean(%struct.TYPE_37__*) #1

declare dso_local i64 @json_is_null(%struct.TYPE_37__*) #1

declare dso_local %struct.TYPE_37__* @json_string(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @json_string_value(%struct.TYPE_37__*) #1

declare dso_local i32 @json_string_length(%struct.TYPE_37__*) #1

declare dso_local i64 @json_string_set(%struct.TYPE_37__*, i8*) #1

declare dso_local i64 @json_string_setn(%struct.TYPE_37__*, i8*, i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local %struct.TYPE_37__* @json_string_nocheck(i8*) #1

declare dso_local i64 @json_string_set_nocheck(%struct.TYPE_37__*, i8*) #1

declare dso_local i64 @json_string_setn_nocheck(%struct.TYPE_37__*, i8*, i32) #1

declare dso_local i32 @json_integer_value(%struct.TYPE_37__*) #1

declare dso_local double @json_number_value(%struct.TYPE_37__*) #1

declare dso_local i64 @json_integer_set(%struct.TYPE_37__*, i32) #1

declare dso_local %struct.TYPE_37__* @json_real(double) #1

declare dso_local double @json_real_value(%struct.TYPE_37__*) #1

declare dso_local i64 @json_real_set(%struct.TYPE_37__*, double) #1

declare dso_local %struct.TYPE_37__* @json_true(...) #1

declare dso_local %struct.TYPE_37__* @json_false(...) #1

declare dso_local %struct.TYPE_37__* @json_null(...) #1

declare dso_local %struct.TYPE_37__* @json_incref(%struct.TYPE_37__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
