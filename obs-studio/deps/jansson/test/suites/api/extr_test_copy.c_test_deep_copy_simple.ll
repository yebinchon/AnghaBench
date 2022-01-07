; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_copy.c_test_deep_copy_simple.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_copy.c_test_deep_copy_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"deep copying NULL doesn't return NULL\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"deep copying true failed\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"deep copying false failed\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"deep copying null failed\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"unable to create a string\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"unable to deep copy a string\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"deep copying a string doesn't copy\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"deep copying a string produces an inequal copy\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"invalid refcounts\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"unable to create an integer\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"unable to deep copy an integer\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"deep copying an integer doesn't copy\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"deep copying an integer produces an inequal copy\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"unable to create a real\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"unable to deep copy a real\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"deep copying a real doesn't copy\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"deep copying a real produces an inequal copy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_deep_copy_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_deep_copy_simple() #0 {
  %1 = alloca %struct.TYPE_13__*, align 8
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = call %struct.TYPE_13__* @json_deep_copy(%struct.TYPE_13__* null)
  %4 = icmp ne %struct.TYPE_13__* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  %8 = call %struct.TYPE_13__* (...) @json_true()
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %1, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %10 = call %struct.TYPE_13__* @json_deep_copy(%struct.TYPE_13__* %9)
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %2, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %13 = icmp ne %struct.TYPE_13__* %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = call i32 @fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %7
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %18 = call i32 @json_decref(%struct.TYPE_13__* %17)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %20 = call i32 @json_decref(%struct.TYPE_13__* %19)
  %21 = call %struct.TYPE_13__* (...) @json_false()
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %1, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %23 = call %struct.TYPE_13__* @json_deep_copy(%struct.TYPE_13__* %22)
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %2, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %26 = icmp ne %struct.TYPE_13__* %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = call i32 @fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %16
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %31 = call i32 @json_decref(%struct.TYPE_13__* %30)
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %33 = call i32 @json_decref(%struct.TYPE_13__* %32)
  %34 = call %struct.TYPE_13__* (...) @json_null()
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %1, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %36 = call %struct.TYPE_13__* @json_deep_copy(%struct.TYPE_13__* %35)
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %2, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %39 = icmp ne %struct.TYPE_13__* %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = call i32 @fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %29
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %44 = call i32 @json_decref(%struct.TYPE_13__* %43)
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %46 = call i32 @json_decref(%struct.TYPE_13__* %45)
  %47 = call %struct.TYPE_13__* @json_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_13__* %47, %struct.TYPE_13__** %1, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %49 = icmp ne %struct.TYPE_13__* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %42
  %51 = call i32 @fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %42
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %54 = call %struct.TYPE_13__* @json_deep_copy(%struct.TYPE_13__* %53)
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %2, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %56 = icmp ne %struct.TYPE_13__* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = call i32 @fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %52
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %62 = icmp eq %struct.TYPE_13__* %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 @fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %59
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %68 = call i32 @json_equal(%struct.TYPE_13__* %66, %struct.TYPE_13__* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = call i32 @fail(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %65
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 1
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 1
  br i1 %81, label %82, label %84

82:                                               ; preds = %77, %72
  %83 = call i32 @fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %77
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %86 = call i32 @json_decref(%struct.TYPE_13__* %85)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %88 = call i32 @json_decref(%struct.TYPE_13__* %87)
  %89 = call %struct.TYPE_13__* @json_integer(i32 543)
  store %struct.TYPE_13__* %89, %struct.TYPE_13__** %1, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %91 = icmp ne %struct.TYPE_13__* %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %84
  %93 = call i32 @fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %84
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %96 = call %struct.TYPE_13__* @json_deep_copy(%struct.TYPE_13__* %95)
  store %struct.TYPE_13__* %96, %struct.TYPE_13__** %2, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %98 = icmp ne %struct.TYPE_13__* %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %94
  %100 = call i32 @fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %94
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %104 = icmp eq %struct.TYPE_13__* %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = call i32 @fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %101
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %110 = call i32 @json_equal(%struct.TYPE_13__* %108, %struct.TYPE_13__* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %107
  %113 = call i32 @fail(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %107
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 1
  br i1 %118, label %124, label %119

119:                                              ; preds = %114
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 1
  br i1 %123, label %124, label %126

124:                                              ; preds = %119, %114
  %125 = call i32 @fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %119
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %128 = call i32 @json_decref(%struct.TYPE_13__* %127)
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %130 = call i32 @json_decref(%struct.TYPE_13__* %129)
  %131 = call %struct.TYPE_13__* @json_real(i32 undef)
  store %struct.TYPE_13__* %131, %struct.TYPE_13__** %1, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %133 = icmp ne %struct.TYPE_13__* %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %126
  %135 = call i32 @fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %126
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %138 = call %struct.TYPE_13__* @json_deep_copy(%struct.TYPE_13__* %137)
  store %struct.TYPE_13__* %138, %struct.TYPE_13__** %2, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %140 = icmp ne %struct.TYPE_13__* %139, null
  br i1 %140, label %143, label %141

141:                                              ; preds = %136
  %142 = call i32 @fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %136
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %146 = icmp eq %struct.TYPE_13__* %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = call i32 @fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %143
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %152 = call i32 @json_equal(%struct.TYPE_13__* %150, %struct.TYPE_13__* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %149
  %155 = call i32 @fail(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %149
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 1
  br i1 %160, label %166, label %161

161:                                              ; preds = %156
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 1
  br i1 %165, label %166, label %168

166:                                              ; preds = %161, %156
  %167 = call i32 @fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %168

168:                                              ; preds = %166, %161
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %170 = call i32 @json_decref(%struct.TYPE_13__* %169)
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %172 = call i32 @json_decref(%struct.TYPE_13__* %171)
  ret void
}

declare dso_local %struct.TYPE_13__* @json_deep_copy(%struct.TYPE_13__*) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local %struct.TYPE_13__* @json_true(...) #1

declare dso_local i32 @json_decref(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @json_false(...) #1

declare dso_local %struct.TYPE_13__* @json_null(...) #1

declare dso_local %struct.TYPE_13__* @json_string(i8*) #1

declare dso_local i32 @json_equal(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @json_integer(i32) #1

declare dso_local %struct.TYPE_13__* @json_real(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
