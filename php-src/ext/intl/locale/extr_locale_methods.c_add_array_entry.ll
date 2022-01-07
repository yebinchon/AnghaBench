; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/locale/extr_locale_methods.c_add_array_entry.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/locale/extr_locale_methods.c_add_array_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@LOC_PRIVATE_TAG = common dso_local global i32 0, align 4
@LOC_VARIANT_TAG = common dso_local global i32 0, align 4
@DELIMITER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i8*)* @add_array_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_array_entry(i8* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* @LOC_PRIVATE_TAG, align 4
  %16 = call i64 @strcmp(i8* %14, i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i8*, i8** %4, align 8
  %20 = call %struct.TYPE_6__* @get_private_subtags(i8* %19)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %7, align 8
  store i32 1, i32* %11, align 4
  br label %25

21:                                               ; preds = %3
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call %struct.TYPE_6__* @get_icu_value_internal(i8* %22, i8* %23, i32* %11, i32 1)
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %7, align 8
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @LOC_PRIVATE_TAG, align 4
  %28 = call i64 @strcmp(i8* %26, i32 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* @LOC_VARIANT_TAG, align 4
  %33 = call i64 @strcmp(i8* %31, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %92

35:                                               ; preds = %30, %25
  %36 = load i32, i32* %11, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %85

38:                                               ; preds = %35
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %40 = icmp ne %struct.TYPE_6__* %39, null
  br i1 %40, label %41, label %85

41:                                               ; preds = %38
  store i32 0, i32* %13, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @DELIMITER, align 4
  %46 = call i8* @php_strtok_r(i32* %44, i32 %45, i8** %10)
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @efree(i8* %50)
  br label %52

52:                                               ; preds = %49, %41
  %53 = call i64 @ecalloc(i32 25, i32 25)
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %8, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  %59 = call i32 @sprintf(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %56, i32 %57)
  %60 = load i32*, i32** %5, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @add_assoc_string(i32* %60, i8* %61, i8* %62)
  br label %64

64:                                               ; preds = %74, %52
  %65 = load i32, i32* @DELIMITER, align 4
  %66 = call i8* @php_strtok_r(i32* null, i32 %65, i8** %10)
  store i8* %66, i8** %9, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = icmp sgt i32 %70, 1
  br label %72

72:                                               ; preds = %68, %64
  %73 = phi i1 [ false, %64 ], [ %71, %68 ]
  br i1 %73, label %74, label %84

74:                                               ; preds = %72
  %75 = load i8*, i8** %8, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  %79 = call i32 @sprintf(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %76, i32 %77)
  %80 = load i32*, i32** %5, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @add_assoc_string(i32* %80, i8* %81, i8* %82)
  br label %64

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84, %38, %35
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %87 = icmp ne %struct.TYPE_6__* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %90 = call i32 @zend_string_release_ex(%struct.TYPE_6__* %89, i32 0)
  br label %91

91:                                               ; preds = %88, %85
  br label %108

92:                                               ; preds = %30
  %93 = load i32, i32* %11, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i32*, i32** %5, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %99 = call i32 @add_assoc_str(i32* %96, i8* %97, %struct.TYPE_6__* %98)
  store i32 1, i32* %12, align 4
  br label %107

100:                                              ; preds = %92
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %102 = icmp ne %struct.TYPE_6__* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %105 = call i32 @zend_string_release_ex(%struct.TYPE_6__* %104, i32 0)
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %95
  br label %108

108:                                              ; preds = %107, %91
  %109 = load i8*, i8** %8, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @efree(i8* %112)
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i32, i32* %12, align 4
  ret i32 %115
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local %struct.TYPE_6__* @get_private_subtags(i8*) #1

declare dso_local %struct.TYPE_6__* @get_icu_value_internal(i8*, i8*, i32*, i32) #1

declare dso_local i8* @php_strtok_r(i32*, i32, i8**) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i64 @ecalloc(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @add_assoc_string(i32*, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @zend_string_release_ex(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @add_assoc_str(i32*, i8*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
