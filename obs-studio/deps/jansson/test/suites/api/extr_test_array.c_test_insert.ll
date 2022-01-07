; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_array.c_test_insert.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_array.c_test_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"unable to create array\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"unable to create integer\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"able to insert value out of bounds\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"unable to insert value in an empty array\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"json_array_insert works incorrectly\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"array size is invalid after insertion\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"unable to insert value at the end of an array\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"unable to insert value in the middle of an array\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"json_array_insert_new works incorrectly\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"unable to insert value at the begining of an array\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"json_aray_insert works incorrectly\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"array size is invalid after loop insertion\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_insert() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = call i32* (...) @json_array()
  store i32* %7, i32** %1, align 8
  %8 = call i32* @json_integer(i32 5)
  store i32* %8, i32** %2, align 8
  %9 = call i32* @json_integer(i32 7)
  store i32* %9, i32** %3, align 8
  %10 = call i32* @json_integer(i32 11)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %1, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %0
  %14 = call i32 @fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %0
  %16 = load i32*, i32** %2, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32*, i32** %3, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32*, i32** %4, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21, %18, %15
  %25 = call i32 @fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32*, i32** %1, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = call i64 @json_array_insert(i32* %27, i32 1, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = call i32 @fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i32*, i32** %1, align 8
  %35 = load i32*, i32** %2, align 8
  %36 = call i64 @json_array_insert(i32* %34, i32 0, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 @fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %33
  %41 = load i32*, i32** %1, align 8
  %42 = call i32* @json_array_get(i32* %41, i32 0)
  %43 = load i32*, i32** %2, align 8
  %44 = icmp ne i32* %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 @fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %40
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @json_array_size(i32* %48)
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 @fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %47
  %54 = load i32*, i32** %1, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = call i64 @json_array_insert(i32* %54, i32 1, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = call i32 @fail(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %53
  %61 = load i32*, i32** %1, align 8
  %62 = call i32* @json_array_get(i32* %61, i32 0)
  %63 = load i32*, i32** %2, align 8
  %64 = icmp ne i32* %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 @fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %60
  %68 = load i32*, i32** %1, align 8
  %69 = call i32* @json_array_get(i32* %68, i32 1)
  %70 = load i32*, i32** %3, align 8
  %71 = icmp ne i32* %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 @fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %67
  %75 = load i32*, i32** %1, align 8
  %76 = call i32 @json_array_size(i32* %75)
  %77 = icmp ne i32 %76, 2
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = call i32 @fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %74
  %81 = load i32*, i32** %1, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = call i64 @json_array_insert(i32* %81, i32 1, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = call i32 @fail(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %80
  %88 = load i32*, i32** %1, align 8
  %89 = call i32* @json_array_get(i32* %88, i32 0)
  %90 = load i32*, i32** %2, align 8
  %91 = icmp ne i32* %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = call i32 @fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %87
  %95 = load i32*, i32** %1, align 8
  %96 = call i32* @json_array_get(i32* %95, i32 1)
  %97 = load i32*, i32** %4, align 8
  %98 = icmp ne i32* %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = call i32 @fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %94
  %102 = load i32*, i32** %1, align 8
  %103 = call i32* @json_array_get(i32* %102, i32 2)
  %104 = load i32*, i32** %3, align 8
  %105 = icmp ne i32* %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = call i32 @fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %101
  %109 = load i32*, i32** %1, align 8
  %110 = call i32 @json_array_size(i32* %109)
  %111 = icmp ne i32 %110, 3
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = call i32 @fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %108
  %115 = load i32*, i32** %1, align 8
  %116 = call i32* @json_integer(i32 123)
  %117 = call i64 @json_array_insert_new(i32* %115, i32 2, i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = call i32 @fail(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %114
  %122 = load i32*, i32** %1, align 8
  %123 = call i32* @json_array_get(i32* %122, i32 2)
  store i32* %123, i32** %5, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 @json_is_integer(i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load i32*, i32** %5, align 8
  %129 = call i32 @json_integer_value(i32* %128)
  %130 = icmp ne i32 %129, 123
  br i1 %130, label %131, label %133

131:                                              ; preds = %127, %121
  %132 = call i32 @fail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %127
  %134 = load i32*, i32** %1, align 8
  %135 = call i32 @json_array_size(i32* %134)
  %136 = icmp ne i32 %135, 4
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = call i32 @fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %133
  store i32 0, i32* %6, align 4
  br label %140

140:                                              ; preds = %151, %139
  %141 = load i32, i32* %6, align 4
  %142 = icmp slt i32 %141, 20
  br i1 %142, label %143, label %154

143:                                              ; preds = %140
  %144 = load i32*, i32** %1, align 8
  %145 = load i32*, i32** %3, align 8
  %146 = call i64 @json_array_insert(i32* %144, i32 0, i32* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = call i32 @fail(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %143
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %6, align 4
  br label %140

154:                                              ; preds = %140
  store i32 0, i32* %6, align 4
  br label %155

155:                                              ; preds = %167, %154
  %156 = load i32, i32* %6, align 4
  %157 = icmp slt i32 %156, 20
  br i1 %157, label %158, label %170

158:                                              ; preds = %155
  %159 = load i32*, i32** %1, align 8
  %160 = load i32, i32* %6, align 4
  %161 = call i32* @json_array_get(i32* %159, i32 %160)
  %162 = load i32*, i32** %3, align 8
  %163 = icmp ne i32* %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %158
  %165 = call i32 @fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  br label %166

166:                                              ; preds = %164, %158
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %6, align 4
  br label %155

170:                                              ; preds = %155
  %171 = load i32*, i32** %1, align 8
  %172 = call i32 @json_array_size(i32* %171)
  %173 = icmp ne i32 %172, 24
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = call i32 @fail(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0))
  br label %176

176:                                              ; preds = %174, %170
  %177 = load i32*, i32** %2, align 8
  %178 = call i32 @json_decref(i32* %177)
  %179 = load i32*, i32** %3, align 8
  %180 = call i32 @json_decref(i32* %179)
  %181 = load i32*, i32** %4, align 8
  %182 = call i32 @json_decref(i32* %181)
  %183 = load i32*, i32** %1, align 8
  %184 = call i32 @json_decref(i32* %183)
  ret void
}

declare dso_local i32* @json_array(...) #1

declare dso_local i32* @json_integer(i32) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i64 @json_array_insert(i32*, i32, i32*) #1

declare dso_local i32* @json_array_get(i32*, i32) #1

declare dso_local i32 @json_array_size(i32*) #1

declare dso_local i64 @json_array_insert_new(i32*, i32, i32*) #1

declare dso_local i32 @json_is_integer(i32*) #1

declare dso_local i32 @json_integer_value(i32*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
