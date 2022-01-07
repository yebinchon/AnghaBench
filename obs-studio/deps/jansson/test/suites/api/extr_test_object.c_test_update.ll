; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_object.c_test_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_object.c_test_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"unable to create object\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"unable to create integer\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"unable to update an emtpy object with an empty object\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"invalid size after update\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"invalid size for updater after update\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"unable to set value\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"unable to update an empty object\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"update works incorrectly\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"unable to update a non-empty object\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"clear failed\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"unable to update a nonempty object\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_update() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = call i32* (...) @json_object()
  store i32* %5, i32** %1, align 8
  %6 = call i32* (...) @json_object()
  store i32* %6, i32** %2, align 8
  %7 = call i32* @json_integer(i32 9)
  store i32* %7, i32** %3, align 8
  %8 = call i32* @json_integer(i32 10)
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %1, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32*, i32** %2, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11, %0
  %15 = call i32 @fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i32*, i32** %3, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32*, i32** %4, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19, %16
  %23 = call i32 @fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i32*, i32** %1, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = call i64 @json_object_update(i32* %25, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @json_object_size(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @json_object_size(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32*, i32** %2, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = call i64 @json_object_set(i32* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %68, label %48

48:                                               ; preds = %43
  %49 = load i32*, i32** %2, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i64 @json_object_set(i32* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %48
  %54 = load i32*, i32** %2, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i64 @json_object_set(i32* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %53
  %59 = load i32*, i32** %2, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call i64 @json_object_set(i32* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i32*, i32** %2, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = call i64 @json_object_set(i32* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63, %58, %53, %48, %43
  %69 = call i32 @fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %63
  %71 = load i32*, i32** %1, align 8
  %72 = load i32*, i32** %2, align 8
  %73 = call i64 @json_object_update(i32* %71, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = call i32 @fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %70
  %78 = load i32*, i32** %1, align 8
  %79 = call i32 @json_object_size(i32* %78)
  %80 = icmp ne i32 %79, 5
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = call i32 @fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %77
  %84 = load i32*, i32** %1, align 8
  %85 = call i32* @json_object_get(i32* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %86 = load i32*, i32** %4, align 8
  %87 = icmp ne i32* %85, %86
  br i1 %87, label %108, label %88

88:                                               ; preds = %83
  %89 = load i32*, i32** %1, align 8
  %90 = call i32* @json_object_get(i32* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %91 = load i32*, i32** %4, align 8
  %92 = icmp ne i32* %90, %91
  br i1 %92, label %108, label %93

93:                                               ; preds = %88
  %94 = load i32*, i32** %1, align 8
  %95 = call i32* @json_object_get(i32* %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %96 = load i32*, i32** %4, align 8
  %97 = icmp ne i32* %95, %96
  br i1 %97, label %108, label %98

98:                                               ; preds = %93
  %99 = load i32*, i32** %1, align 8
  %100 = call i32* @json_object_get(i32* %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %101 = load i32*, i32** %4, align 8
  %102 = icmp ne i32* %100, %101
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = load i32*, i32** %1, align 8
  %105 = call i32* @json_object_get(i32* %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %106 = load i32*, i32** %4, align 8
  %107 = icmp ne i32* %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %103, %98, %93, %88, %83
  %109 = call i32 @fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %103
  %111 = load i32*, i32** %1, align 8
  %112 = load i32*, i32** %2, align 8
  %113 = call i64 @json_object_update(i32* %111, i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = call i32 @fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %110
  %118 = load i32*, i32** %1, align 8
  %119 = call i32 @json_object_size(i32* %118)
  %120 = icmp ne i32 %119, 5
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = call i32 @fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %117
  %124 = load i32*, i32** %1, align 8
  %125 = call i32* @json_object_get(i32* %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %126 = load i32*, i32** %4, align 8
  %127 = icmp ne i32* %125, %126
  br i1 %127, label %148, label %128

128:                                              ; preds = %123
  %129 = load i32*, i32** %1, align 8
  %130 = call i32* @json_object_get(i32* %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %131 = load i32*, i32** %4, align 8
  %132 = icmp ne i32* %130, %131
  br i1 %132, label %148, label %133

133:                                              ; preds = %128
  %134 = load i32*, i32** %1, align 8
  %135 = call i32* @json_object_get(i32* %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %136 = load i32*, i32** %4, align 8
  %137 = icmp ne i32* %135, %136
  br i1 %137, label %148, label %138

138:                                              ; preds = %133
  %139 = load i32*, i32** %1, align 8
  %140 = call i32* @json_object_get(i32* %139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %141 = load i32*, i32** %4, align 8
  %142 = icmp ne i32* %140, %141
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = load i32*, i32** %1, align 8
  %145 = call i32* @json_object_get(i32* %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %146 = load i32*, i32** %4, align 8
  %147 = icmp ne i32* %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %143, %138, %133, %128, %123
  %149 = call i32 @fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %143
  %151 = load i32*, i32** %2, align 8
  %152 = call i64 @json_object_clear(i32* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = call i32 @fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %150
  %157 = load i32*, i32** %2, align 8
  %158 = load i32*, i32** %3, align 8
  %159 = call i64 @json_object_set(i32* %157, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %181, label %161

161:                                              ; preds = %156
  %162 = load i32*, i32** %2, align 8
  %163 = load i32*, i32** %3, align 8
  %164 = call i64 @json_object_set(i32* %162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %181, label %166

166:                                              ; preds = %161
  %167 = load i32*, i32** %2, align 8
  %168 = load i32*, i32** %3, align 8
  %169 = call i64 @json_object_set(i32* %167, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %181, label %171

171:                                              ; preds = %166
  %172 = load i32*, i32** %2, align 8
  %173 = load i32*, i32** %3, align 8
  %174 = call i64 @json_object_set(i32* %172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %171
  %177 = load i32*, i32** %2, align 8
  %178 = load i32*, i32** %3, align 8
  %179 = call i64 @json_object_set(i32* %177, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %176, %171, %166, %161, %156
  %182 = call i32 @fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181, %176
  %184 = load i32*, i32** %1, align 8
  %185 = load i32*, i32** %2, align 8
  %186 = call i64 @json_object_update(i32* %184, i32* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %183
  %189 = call i32 @fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0))
  br label %190

190:                                              ; preds = %188, %183
  %191 = load i32*, i32** %1, align 8
  %192 = call i32 @json_object_size(i32* %191)
  %193 = icmp ne i32 %192, 8
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = call i32 @fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %196

196:                                              ; preds = %194, %190
  %197 = load i32*, i32** %1, align 8
  %198 = call i32* @json_object_get(i32* %197, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %199 = load i32*, i32** %3, align 8
  %200 = icmp ne i32* %198, %199
  br i1 %200, label %221, label %201

201:                                              ; preds = %196
  %202 = load i32*, i32** %1, align 8
  %203 = call i32* @json_object_get(i32* %202, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %204 = load i32*, i32** %3, align 8
  %205 = icmp ne i32* %203, %204
  br i1 %205, label %221, label %206

206:                                              ; preds = %201
  %207 = load i32*, i32** %1, align 8
  %208 = call i32* @json_object_get(i32* %207, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %209 = load i32*, i32** %3, align 8
  %210 = icmp ne i32* %208, %209
  br i1 %210, label %221, label %211

211:                                              ; preds = %206
  %212 = load i32*, i32** %1, align 8
  %213 = call i32* @json_object_get(i32* %212, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %214 = load i32*, i32** %3, align 8
  %215 = icmp ne i32* %213, %214
  br i1 %215, label %221, label %216

216:                                              ; preds = %211
  %217 = load i32*, i32** %1, align 8
  %218 = call i32* @json_object_get(i32* %217, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %219 = load i32*, i32** %3, align 8
  %220 = icmp ne i32* %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %216, %211, %206, %201, %196
  %222 = call i32 @fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  br label %223

223:                                              ; preds = %221, %216
  %224 = load i32*, i32** %3, align 8
  %225 = call i32 @json_decref(i32* %224)
  %226 = load i32*, i32** %4, align 8
  %227 = call i32 @json_decref(i32* %226)
  %228 = load i32*, i32** %2, align 8
  %229 = call i32 @json_decref(i32* %228)
  %230 = load i32*, i32** %1, align 8
  %231 = call i32 @json_decref(i32* %230)
  ret void
}

declare dso_local i32* @json_object(...) #1

declare dso_local i32* @json_integer(i32) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i64 @json_object_update(i32*, i32*) #1

declare dso_local i32 @json_object_size(i32*) #1

declare dso_local i64 @json_object_set(i32*, i8*, i32*) #1

declare dso_local i32* @json_object_get(i32*, i8*) #1

declare dso_local i64 @json_object_clear(i32*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
