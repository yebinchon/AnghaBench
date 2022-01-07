; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_object.c_test_misc.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_object.c_test_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"unable to create object\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"unable to create string\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"value for nonexisting key\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"unable to set value\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"able to set NULL key\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"unable to del the only key\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"able to set NULL value\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"a\EFz\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"able to set invalid unicode key\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"no value for existing key\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"got different value than what was added\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"lp\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"px\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"unable to replace an existing key\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"got different value than what was set\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"nonexisting\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"able to delete a nonexisting key\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"unable to delete an existing key\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"unable to set new value\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"json_object_set_new works incorrectly\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"able to set_new NULL key\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"able to set_new NULL value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_misc() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = call i32* (...) @json_object()
  store i32* %5, i32** %1, align 8
  %6 = call i32* @json_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %6, i32** %2, align 8
  %7 = call i32* @json_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = call i32 @fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32*, i32** %2, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32*, i32** %3, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15, %12
  %19 = call i32 @fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i32*, i32** %1, align 8
  %22 = call i32* @json_object_get(i32* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i32*, i32** %1, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = call i64 @json_object_set(i32* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 @fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i32*, i32** %1, align 8
  %35 = load i32*, i32** %2, align 8
  %36 = call i64 @json_object_set(i32* %34, i8* null, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = call i32 @fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %33
  %41 = load i32*, i32** %1, align 8
  %42 = call i64 @json_object_del(i32* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 @fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i32*, i32** %1, align 8
  %48 = load i32*, i32** %2, align 8
  %49 = call i64 @json_object_set(i32* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 @fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i32*, i32** %1, align 8
  %55 = call i64 @json_object_set(i32* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = call i32 @fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %53
  %60 = load i32*, i32** %1, align 8
  %61 = load i32*, i32** %2, align 8
  %62 = call i64 @json_object_set(i32* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = call i32 @fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %59
  %67 = load i32*, i32** %1, align 8
  %68 = call i32* @json_object_get(i32* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %68, i32** %4, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = call i32 @fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %66
  %74 = load i32*, i32** %4, align 8
  %75 = load i32*, i32** %2, align 8
  %76 = icmp ne i32* %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = call i32 @fail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %73
  %80 = load i32*, i32** %1, align 8
  %81 = load i32*, i32** %2, align 8
  %82 = call i64 @json_object_set(i32* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %79
  %85 = load i32*, i32** %1, align 8
  %86 = load i32*, i32** %2, align 8
  %87 = call i64 @json_object_set(i32* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load i32*, i32** %1, align 8
  %91 = load i32*, i32** %2, align 8
  %92 = call i64 @json_object_set(i32* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89, %84, %79
  %95 = call i32 @fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %89
  %97 = load i32*, i32** %1, align 8
  %98 = call i32* @json_object_get(i32* %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %98, i32** %4, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %96
  %102 = call i32 @fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %96
  %104 = load i32*, i32** %4, align 8
  %105 = load i32*, i32** %2, align 8
  %106 = icmp ne i32* %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = call i32 @fail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %103
  %110 = load i32*, i32** %1, align 8
  %111 = load i32*, i32** %3, align 8
  %112 = call i64 @json_object_set(i32* %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = call i32 @fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %109
  %117 = load i32*, i32** %1, align 8
  %118 = call i32* @json_object_get(i32* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %118, i32** %4, align 8
  %119 = load i32*, i32** %4, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %116
  %122 = call i32 @fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %116
  %124 = load i32*, i32** %4, align 8
  %125 = load i32*, i32** %3, align 8
  %126 = icmp ne i32* %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = call i32 @fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %123
  %130 = load i32*, i32** %1, align 8
  %131 = call i64 @json_object_del(i32* %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %129
  %134 = call i32 @fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %129
  %136 = load i32*, i32** %1, align 8
  %137 = call i64 @json_object_del(i32* %136, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = call i32 @fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139, %135
  %142 = load i32*, i32** %1, align 8
  %143 = call i64 @json_object_del(i32* %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = call i32 @fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %141
  %148 = load i32*, i32** %1, align 8
  %149 = call i64 @json_object_del(i32* %148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = call i32 @fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %147
  %154 = load i32*, i32** %1, align 8
  %155 = load i32*, i32** %2, align 8
  %156 = call i64 @json_object_set(i32* %154, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = call i32 @fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %153
  %161 = load i32*, i32** %1, align 8
  %162 = load i32*, i32** %2, align 8
  %163 = call i64 @json_object_set(i32* %161, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = call i32 @fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %160
  %168 = load i32*, i32** %1, align 8
  %169 = load i32*, i32** %2, align 8
  %170 = call i64 @json_object_set(i32* %168, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = call i32 @fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %167
  %175 = load i32*, i32** %1, align 8
  %176 = load i32*, i32** %2, align 8
  %177 = call i64 @json_object_set(i32* %175, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %174
  %180 = call i32 @fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %181

181:                                              ; preds = %179, %174
  %182 = load i32*, i32** %1, align 8
  %183 = load i32*, i32** %2, align 8
  %184 = call i64 @json_object_set(i32* %182, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i32* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = call i32 @fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %188

188:                                              ; preds = %186, %181
  %189 = load i32*, i32** %1, align 8
  %190 = load i32*, i32** %2, align 8
  %191 = call i64 @json_object_set(i32* %189, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i32* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %188
  %194 = call i32 @fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %195

195:                                              ; preds = %193, %188
  %196 = load i32*, i32** %1, align 8
  %197 = call i32* @json_integer(i32 123)
  %198 = call i64 @json_object_set_new(i32* %196, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i32* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %195
  %201 = call i32 @fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0))
  br label %202

202:                                              ; preds = %200, %195
  %203 = load i32*, i32** %1, align 8
  %204 = call i32* @json_object_get(i32* %203, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  store i32* %204, i32** %4, align 8
  %205 = load i32*, i32** %4, align 8
  %206 = call i32 @json_is_integer(i32* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %202
  %209 = load i32*, i32** %4, align 8
  %210 = call i32 @json_integer_value(i32* %209)
  %211 = icmp ne i32 %210, 123
  br i1 %211, label %212, label %214

212:                                              ; preds = %208, %202
  %213 = call i32 @fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i64 0, i64 0))
  br label %214

214:                                              ; preds = %212, %208
  %215 = load i32*, i32** %1, align 8
  %216 = call i32* @json_integer(i32 432)
  %217 = call i64 @json_object_set_new(i32* %215, i8* null, i32* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %214
  %220 = call i32 @fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0))
  br label %221

221:                                              ; preds = %219, %214
  %222 = load i32*, i32** %1, align 8
  %223 = call i64 @json_object_set_new(i32* %222, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i32* null)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %227, label %225

225:                                              ; preds = %221
  %226 = call i32 @fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0))
  br label %227

227:                                              ; preds = %225, %221
  %228 = load i32*, i32** %2, align 8
  %229 = call i32 @json_decref(i32* %228)
  %230 = load i32*, i32** %3, align 8
  %231 = call i32 @json_decref(i32* %230)
  %232 = load i32*, i32** %1, align 8
  %233 = call i32 @json_decref(i32* %232)
  ret void
}

declare dso_local i32* @json_object(...) #1

declare dso_local i32* @json_string(i8*) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32* @json_object_get(i32*, i8*) #1

declare dso_local i64 @json_object_set(i32*, i8*, i32*) #1

declare dso_local i64 @json_object_del(i32*, i8*) #1

declare dso_local i64 @json_object_set_new(i32*, i8*, i32*) #1

declare dso_local i32* @json_integer(i32) #1

declare dso_local i32 @json_is_integer(i32*) #1

declare dso_local i32 @json_integer_value(i32*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
