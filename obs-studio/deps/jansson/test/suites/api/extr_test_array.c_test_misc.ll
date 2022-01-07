; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_array.c_test_misc.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_array.c_test_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"unable to create array\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"unable to create integer\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"empty array has nonzero size\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"able to append NULL\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"unable to append\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"wrong array size\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"unable to get item\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"got wrong value\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"unable to append value\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"unable to set value\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"able to set NULL\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"able to get value out of bounds\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"able to set value out of bounds\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"unable to set new value\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"json_array_set_new works incorrectly\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"able to set_new NULL value\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"unable to append new value\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"json_array_append_new works incorrectly\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"able to append_new NULL value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_misc() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = call i32* (...) @json_array()
  store i32* %6, i32** %1, align 8
  %7 = call i32* @json_integer(i32 5)
  store i32* %7, i32** %2, align 8
  %8 = call i32* @json_integer(i32 7)
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %1, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %0
  %12 = call i32 @fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %0
  %14 = load i32*, i32** %2, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32*, i32** %3, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16, %13
  %20 = call i32 @fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @json_array_size(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i32*, i32** %1, align 8
  %29 = call i64 @json_array_append(i32* %28, i32* null)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = call i32 @fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i32*, i32** %1, align 8
  %35 = load i32*, i32** %2, align 8
  %36 = call i64 @json_array_append(i32* %34, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 @fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %33
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @json_array_size(i32* %41)
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 @fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i32*, i32** %1, align 8
  %48 = call i32* @json_array_get(i32* %47, i32 0)
  store i32* %48, i32** %4, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = call i32 @fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i32*, i32** %4, align 8
  %55 = load i32*, i32** %2, align 8
  %56 = icmp ne i32* %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 @fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %53
  %60 = load i32*, i32** %1, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = call i64 @json_array_append(i32* %60, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 @fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %59
  %67 = load i32*, i32** %1, align 8
  %68 = call i32 @json_array_size(i32* %67)
  %69 = icmp ne i32 %68, 2
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = call i32 @fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i32*, i32** %1, align 8
  %74 = call i32* @json_array_get(i32* %73, i32 1)
  store i32* %74, i32** %4, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = call i32 @fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %72
  %80 = load i32*, i32** %4, align 8
  %81 = load i32*, i32** %3, align 8
  %82 = icmp ne i32* %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = call i32 @fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %79
  %86 = load i32*, i32** %1, align 8
  %87 = load i32*, i32** %3, align 8
  %88 = call i64 @json_array_set(i32* %86, i32 0, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = call i32 @fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %85
  %93 = load i32*, i32** %1, align 8
  %94 = call i64 @json_array_set(i32* %93, i32 0, i32* null)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = call i32 @fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %92
  %99 = load i32*, i32** %1, align 8
  %100 = call i32 @json_array_size(i32* %99)
  %101 = icmp ne i32 %100, 2
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = call i32 @fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %98
  %105 = load i32*, i32** %1, align 8
  %106 = call i32* @json_array_get(i32* %105, i32 0)
  store i32* %106, i32** %4, align 8
  %107 = load i32*, i32** %4, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %104
  %110 = call i32 @fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %104
  %112 = load i32*, i32** %4, align 8
  %113 = load i32*, i32** %3, align 8
  %114 = icmp ne i32* %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = call i32 @fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %111
  %118 = load i32*, i32** %1, align 8
  %119 = call i32* @json_array_get(i32* %118, i32 2)
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = call i32 @fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %117
  %124 = load i32*, i32** %1, align 8
  %125 = load i32*, i32** %3, align 8
  %126 = call i64 @json_array_set(i32* %124, i32 2, i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %123
  %129 = call i32 @fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %123
  store i64 2, i64* %5, align 8
  br label %131

131:                                              ; preds = %151, %130
  %132 = load i64, i64* %5, align 8
  %133 = icmp ult i64 %132, 30
  br i1 %133, label %134, label %154

134:                                              ; preds = %131
  %135 = load i32*, i32** %1, align 8
  %136 = load i32*, i32** %3, align 8
  %137 = call i64 @json_array_append(i32* %135, i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = call i32 @fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139, %134
  %142 = load i32*, i32** %1, align 8
  %143 = call i32 @json_array_size(i32* %142)
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* %5, align 8
  %146 = add i64 %145, 1
  %147 = icmp ne i64 %144, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %141
  %149 = call i32 @fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %141
  br label %151

151:                                              ; preds = %150
  %152 = load i64, i64* %5, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %5, align 8
  br label %131

154:                                              ; preds = %131
  store i64 0, i64* %5, align 8
  br label %155

155:                                              ; preds = %174, %154
  %156 = load i64, i64* %5, align 8
  %157 = icmp ult i64 %156, 30
  br i1 %157, label %158, label %177

158:                                              ; preds = %155
  %159 = load i32*, i32** %1, align 8
  %160 = load i64, i64* %5, align 8
  %161 = trunc i64 %160 to i32
  %162 = call i32* @json_array_get(i32* %159, i32 %161)
  store i32* %162, i32** %4, align 8
  %163 = load i32*, i32** %4, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %158
  %166 = call i32 @fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %158
  %168 = load i32*, i32** %4, align 8
  %169 = load i32*, i32** %3, align 8
  %170 = icmp ne i32* %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = call i32 @fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %173

173:                                              ; preds = %171, %167
  br label %174

174:                                              ; preds = %173
  %175 = load i64, i64* %5, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %5, align 8
  br label %155

177:                                              ; preds = %155
  %178 = load i32*, i32** %1, align 8
  %179 = call i32* @json_integer(i32 123)
  %180 = call i64 @json_array_set_new(i32* %178, i32 15, i32* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %177
  %183 = call i32 @fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  br label %184

184:                                              ; preds = %182, %177
  %185 = load i32*, i32** %1, align 8
  %186 = call i32* @json_array_get(i32* %185, i32 15)
  store i32* %186, i32** %4, align 8
  %187 = load i32*, i32** %4, align 8
  %188 = call i32 @json_is_integer(i32* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %184
  %191 = load i32*, i32** %4, align 8
  %192 = call i32 @json_integer_value(i32* %191)
  %193 = icmp ne i32 %192, 123
  br i1 %193, label %194, label %196

194:                                              ; preds = %190, %184
  %195 = call i32 @fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  br label %196

196:                                              ; preds = %194, %190
  %197 = load i32*, i32** %1, align 8
  %198 = call i64 @json_array_set_new(i32* %197, i32 15, i32* null)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %196
  %201 = call i32 @fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  br label %202

202:                                              ; preds = %200, %196
  %203 = load i32*, i32** %1, align 8
  %204 = call i32* @json_integer(i32 321)
  %205 = call i64 @json_array_append_new(i32* %203, i32* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %202
  %208 = call i32 @fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0))
  br label %209

209:                                              ; preds = %207, %202
  %210 = load i32*, i32** %1, align 8
  %211 = load i32*, i32** %1, align 8
  %212 = call i32 @json_array_size(i32* %211)
  %213 = sub nsw i32 %212, 1
  %214 = call i32* @json_array_get(i32* %210, i32 %213)
  store i32* %214, i32** %4, align 8
  %215 = load i32*, i32** %4, align 8
  %216 = call i32 @json_is_integer(i32* %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %209
  %219 = load i32*, i32** %4, align 8
  %220 = call i32 @json_integer_value(i32* %219)
  %221 = icmp ne i32 %220, 321
  br i1 %221, label %222, label %224

222:                                              ; preds = %218, %209
  %223 = call i32 @fail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0))
  br label %224

224:                                              ; preds = %222, %218
  %225 = load i32*, i32** %1, align 8
  %226 = call i64 @json_array_append_new(i32* %225, i32* null)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %224
  %229 = call i32 @fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  br label %230

230:                                              ; preds = %228, %224
  %231 = load i32*, i32** %2, align 8
  %232 = call i32 @json_decref(i32* %231)
  %233 = load i32*, i32** %3, align 8
  %234 = call i32 @json_decref(i32* %233)
  %235 = load i32*, i32** %1, align 8
  %236 = call i32 @json_decref(i32* %235)
  ret void
}

declare dso_local i32* @json_array(...) #1

declare dso_local i32* @json_integer(i32) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32 @json_array_size(i32*) #1

declare dso_local i64 @json_array_append(i32*, i32*) #1

declare dso_local i32* @json_array_get(i32*, i32) #1

declare dso_local i64 @json_array_set(i32*, i32, i32*) #1

declare dso_local i64 @json_array_set_new(i32*, i32, i32*) #1

declare dso_local i32 @json_is_integer(i32*) #1

declare dso_local i32 @json_integer_value(i32*) #1

declare dso_local i64 @json_array_append_new(i32*, i32*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
