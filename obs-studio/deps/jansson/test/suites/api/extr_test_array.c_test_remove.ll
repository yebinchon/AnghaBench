; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_array.c_test_remove.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_array.c_test_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"unable to create array\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"unable to create integer\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"able to remove an unexisting index\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"unable to append\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"unable to remove\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"array size is invalid after removing\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"remove works incorrectly\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"unable to append 8 items to array\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_remove() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = call i32* (...) @json_array()
  store i32* %5, i32** %1, align 8
  %6 = call i32* @json_integer(i32 5)
  store i32* %6, i32** %2, align 8
  %7 = call i32* @json_integer(i32 7)
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = call i32 @fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32*, i32** %2, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = call i32 @fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i32*, i32** %3, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = call i32 @fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i32*, i32** %1, align 8
  %24 = call i64 @json_array_remove(i32* %23, i32 0)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = call i32 @fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i32*, i32** %1, align 8
  %30 = load i32*, i32** %2, align 8
  %31 = call i64 @json_array_append(i32* %29, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i32*, i32** %1, align 8
  %37 = call i64 @json_array_remove(i32* %36, i32 1)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = call i32 @fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i32*, i32** %1, align 8
  %43 = call i64 @json_array_remove(i32* %42, i32 0)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @json_array_size(i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 @fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %47
  %54 = load i32*, i32** %1, align 8
  %55 = load i32*, i32** %2, align 8
  %56 = call i64 @json_array_append(i32* %54, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %53
  %59 = load i32*, i32** %1, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = call i64 @json_array_append(i32* %59, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %58
  %64 = load i32*, i32** %1, align 8
  %65 = load i32*, i32** %2, align 8
  %66 = call i64 @json_array_append(i32* %64, i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load i32*, i32** %1, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = call i64 @json_array_append(i32* %69, i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68, %63, %58, %53
  %74 = call i32 @fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %68
  %76 = load i32*, i32** %1, align 8
  %77 = call i64 @json_array_remove(i32* %76, i32 2)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = call i32 @fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %75
  %82 = load i32*, i32** %1, align 8
  %83 = call i32 @json_array_size(i32* %82)
  %84 = icmp ne i32 %83, 3
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = call i32 @fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %81
  %88 = load i32*, i32** %1, align 8
  %89 = call i32* @json_array_get(i32* %88, i32 0)
  %90 = load i32*, i32** %2, align 8
  %91 = icmp ne i32* %89, %90
  br i1 %91, label %102, label %92

92:                                               ; preds = %87
  %93 = load i32*, i32** %1, align 8
  %94 = call i32* @json_array_get(i32* %93, i32 1)
  %95 = load i32*, i32** %3, align 8
  %96 = icmp ne i32* %94, %95
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load i32*, i32** %1, align 8
  %99 = call i32* @json_array_get(i32* %98, i32 2)
  %100 = load i32*, i32** %3, align 8
  %101 = icmp ne i32* %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %97, %92, %87
  %103 = call i32 @fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %97
  %105 = load i32*, i32** %1, align 8
  %106 = call i32 @json_decref(i32* %105)
  %107 = call i32* (...) @json_array()
  store i32* %107, i32** %1, align 8
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %118, %104
  %109 = load i32, i32* %4, align 4
  %110 = icmp slt i32 %109, 4
  br i1 %110, label %111, label %121

111:                                              ; preds = %108
  %112 = load i32*, i32** %1, align 8
  %113 = load i32*, i32** %2, align 8
  %114 = call i64 @json_array_append(i32* %112, i32* %113)
  %115 = load i32*, i32** %1, align 8
  %116 = load i32*, i32** %3, align 8
  %117 = call i64 @json_array_append(i32* %115, i32* %116)
  br label %118

118:                                              ; preds = %111
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %108

121:                                              ; preds = %108
  %122 = load i32*, i32** %1, align 8
  %123 = call i32 @json_array_size(i32* %122)
  %124 = icmp ne i32 %123, 8
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = call i32 @fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %121
  %128 = load i32*, i32** %1, align 8
  %129 = call i64 @json_array_remove(i32* %128, i32 5)
  %130 = load i32*, i32** %2, align 8
  %131 = call i32 @json_decref(i32* %130)
  %132 = load i32*, i32** %3, align 8
  %133 = call i32 @json_decref(i32* %132)
  %134 = load i32*, i32** %1, align 8
  %135 = call i32 @json_decref(i32* %134)
  ret void
}

declare dso_local i32* @json_array(...) #1

declare dso_local i32* @json_integer(i32) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i64 @json_array_remove(i32*, i32) #1

declare dso_local i64 @json_array_append(i32*, i32*) #1

declare dso_local i32 @json_array_size(i32*) #1

declare dso_local i32* @json_array_get(i32*, i32) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
