; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_object.c_test_iterators.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_object.c_test_iterators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"able to iterate over NULL\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"able to increment an iterator on a NULL object\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"baz\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"unable to create values\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"able to increment a NULL iterator\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"unable to populate object\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"unable to get iterator\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"iterating doesn't yield keys in order\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"iterating doesn't yield values in order\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"unable to increment iterator\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"able to iterate over the end\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"json_object_iter_at() succeeds for non-existent key\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"json_object_iter_at() fails for an existing key\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"iterating failed: wrong key\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"iterating failed: wrong value\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"unable to set value at iterator\00", align 1
@.str.21 = private unnamed_addr constant [58 x i8] c"json_object_iter_key() fails after json_object_iter_set()\00", align 1
@.str.22 = private unnamed_addr constant [60 x i8] c"json_object_iter_value() fails after json_object_iter_set()\00", align 1
@.str.23 = private unnamed_addr constant [53 x i8] c"json_object_get() fails after json_object_iter_set()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_iterators to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_iterators() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = call i8* @json_object_iter(i32* null)
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %0
  %11 = call i32* @json_object_iter_next(i32* null, i8* null)
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 @fail(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %10
  %16 = call i32* (...) @json_object()
  store i32* %16, i32** %1, align 8
  %17 = call i32* @json_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32* %17, i32** %2, align 8
  %18 = call i32* @json_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32* %18, i32** %3, align 8
  %19 = call i32* @json_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %1, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %15
  %23 = load i32*, i32** %2, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32*, i32** %3, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32*, i32** %4, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28, %25, %22, %15
  %32 = call i32 @fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i32*, i32** %1, align 8
  %35 = call i32* @json_object_iter_next(i32* %34, i8* null)
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i32*, i32** %1, align 8
  %41 = load i32*, i32** %2, align 8
  %42 = call i64 @json_object_set(i32* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = load i32*, i32** %1, align 8
  %46 = load i32*, i32** %3, align 8
  %47 = call i64 @json_object_set(i32* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i32*, i32** %1, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i64 @json_object_set(i32* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49, %44, %39
  %55 = call i32 @fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i32*, i32** %1, align 8
  %58 = call i8* @json_object_iter(i32* %57)
  store i8* %58, i8** %5, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = call i32 @fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %56
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @json_object_iter_key(i8* %64)
  %66 = call i64 @strcmp(i32 %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = call i32 @fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %63
  %71 = load i8*, i8** %5, align 8
  %72 = call i32* @json_object_iter_value(i8* %71)
  %73 = load i32*, i32** %2, align 8
  %74 = icmp ne i32* %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = call i32 @fail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %70
  %78 = load i32*, i32** %1, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = call i32* @json_object_iter_next(i32* %78, i8* %79)
  %81 = bitcast i32* %80 to i8*
  store i8* %81, i8** %5, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %77
  %85 = call i32 @fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %77
  %87 = load i8*, i8** %5, align 8
  %88 = call i32 @json_object_iter_key(i8* %87)
  %89 = call i64 @strcmp(i32 %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = call i32 @fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %86
  %94 = load i8*, i8** %5, align 8
  %95 = call i32* @json_object_iter_value(i8* %94)
  %96 = load i32*, i32** %3, align 8
  %97 = icmp ne i32* %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = call i32 @fail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %93
  %101 = load i32*, i32** %1, align 8
  %102 = load i8*, i8** %5, align 8
  %103 = call i32* @json_object_iter_next(i32* %101, i8* %102)
  %104 = bitcast i32* %103 to i8*
  store i8* %104, i8** %5, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %100
  %108 = call i32 @fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %100
  %110 = load i8*, i8** %5, align 8
  %111 = call i32 @json_object_iter_key(i8* %110)
  %112 = call i64 @strcmp(i32 %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = call i32 @fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %109
  %117 = load i8*, i8** %5, align 8
  %118 = call i32* @json_object_iter_value(i8* %117)
  %119 = load i32*, i32** %4, align 8
  %120 = icmp ne i32* %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = call i32 @fail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %116
  %124 = load i32*, i32** %1, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = call i32* @json_object_iter_next(i32* %124, i8* %125)
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = call i32 @fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %123
  %131 = load i32*, i32** %1, align 8
  %132 = call i8* @json_object_iter_at(i32* %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = call i32 @fail(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.16, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %130
  %137 = load i32*, i32** %1, align 8
  %138 = call i8* @json_object_iter_at(i32* %137, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i8* %138, i8** %5, align 8
  %139 = load i8*, i8** %5, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %143, label %141

141:                                              ; preds = %136
  %142 = call i32 @fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %136
  %144 = load i8*, i8** %5, align 8
  %145 = call i32 @json_object_iter_key(i8* %144)
  %146 = call i64 @strcmp(i32 %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = call i32 @fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %143
  %151 = load i8*, i8** %5, align 8
  %152 = call i32* @json_object_iter_value(i8* %151)
  %153 = load i32*, i32** %3, align 8
  %154 = icmp ne i32* %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = call i32 @fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0))
  br label %157

157:                                              ; preds = %155, %150
  %158 = load i32*, i32** %1, align 8
  %159 = load i8*, i8** %5, align 8
  %160 = load i32*, i32** %4, align 8
  %161 = call i64 @json_object_iter_set(i32* %158, i8* %159, i32* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %157
  %164 = call i32 @fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %157
  %166 = load i8*, i8** %5, align 8
  %167 = call i32 @json_object_iter_key(i8* %166)
  %168 = call i64 @strcmp(i32 %167, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = call i32 @fail(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0))
  br label %172

172:                                              ; preds = %170, %165
  %173 = load i8*, i8** %5, align 8
  %174 = call i32* @json_object_iter_value(i8* %173)
  %175 = load i32*, i32** %4, align 8
  %176 = icmp ne i32* %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %172
  %178 = call i32 @fail(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.22, i64 0, i64 0))
  br label %179

179:                                              ; preds = %177, %172
  %180 = load i32*, i32** %1, align 8
  %181 = call i32* @json_object_get(i32* %180, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %182 = load i32*, i32** %4, align 8
  %183 = icmp ne i32* %181, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = call i32 @fail(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.23, i64 0, i64 0))
  br label %186

186:                                              ; preds = %184, %179
  %187 = load i32*, i32** %1, align 8
  %188 = call i32 @json_decref(i32* %187)
  %189 = load i32*, i32** %2, align 8
  %190 = call i32 @json_decref(i32* %189)
  %191 = load i32*, i32** %3, align 8
  %192 = call i32 @json_decref(i32* %191)
  %193 = load i32*, i32** %4, align 8
  %194 = call i32 @json_decref(i32* %193)
  ret void
}

declare dso_local i8* @json_object_iter(i32*) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32* @json_object_iter_next(i32*, i8*) #1

declare dso_local i32* @json_object(...) #1

declare dso_local i32* @json_string(i8*) #1

declare dso_local i64 @json_object_set(i32*, i8*, i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @json_object_iter_key(i8*) #1

declare dso_local i32* @json_object_iter_value(i8*) #1

declare dso_local i8* @json_object_iter_at(i32*, i8*) #1

declare dso_local i64 @json_object_iter_set(i32*, i8*, i32*) #1

declare dso_local i32* @json_object_get(i32*, i8*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
