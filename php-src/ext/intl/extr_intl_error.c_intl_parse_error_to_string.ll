; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/extr_intl_error.c_intl_parse_error_to_string.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/extr_intl_error.c_intl_parse_error_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64*, i64* }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"parse error \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"on line \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"at \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"offset \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"after \22\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"(could not convert parser error pre-context to UTF-8)\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"before or at \22\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"(could not convert parser error post-context to UTF-8)\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"no parse error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intl_parse_error_to_string(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_10__, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %7 = bitcast %struct.TYPE_10__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  store i32 0, i32* %6, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = icmp ne %struct.TYPE_11__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = call i32 @smart_str_appends(%struct.TYPE_10__* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = call i32 @smart_str_appends(%struct.TYPE_10__* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @smart_str_append_long(%struct.TYPE_10__* %2, i32 %22)
  store i32 1, i32* %6, align 4
  br label %24

24:                                               ; preds = %17, %1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @smart_str_appends(%struct.TYPE_10__* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %36

34:                                               ; preds = %29
  %35 = call i32 @smart_str_appends(%struct.TYPE_10__* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %32
  %37 = call i32 @smart_str_appends(%struct.TYPE_10__* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @smart_str_append_long(%struct.TYPE_10__* %2, i32 %41)
  store i32 1, i32* %6, align 4
  br label %43

43:                                               ; preds = %36, %24
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %43
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 @smart_str_appends(%struct.TYPE_10__* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %50
  %56 = call i32 @smart_str_appends(%struct.TYPE_10__* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i64*, i64** %58, align 8
  %60 = call i32* @intl_convert_utf16_to_utf8(i64* %59, i32 -1, i32* %5)
  store i32* %60, i32** %4, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %55
  %64 = call i32 @smart_str_appends(%struct.TYPE_10__* %2, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  br label %70

65:                                               ; preds = %55
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @smart_str_append(%struct.TYPE_10__* %2, i32* %66)
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @zend_string_release_ex(i32* %68, i32 0)
  br label %70

70:                                               ; preds = %65, %63
  %71 = call i32 @smart_str_appends(%struct.TYPE_10__* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %72

72:                                               ; preds = %70, %43
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 3
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %72
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 @smart_str_appends(%struct.TYPE_10__* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %79
  %85 = call i32 @smart_str_appends(%struct.TYPE_10__* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 3
  %88 = load i64*, i64** %87, align 8
  %89 = call i32* @intl_convert_utf16_to_utf8(i64* %88, i32 -1, i32* %5)
  store i32* %89, i32** %4, align 8
  %90 = load i32*, i32** %4, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %84
  %93 = call i32 @smart_str_appends(%struct.TYPE_10__* %2, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0))
  br label %99

94:                                               ; preds = %84
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @smart_str_append(%struct.TYPE_10__* %2, i32* %95)
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @zend_string_release_ex(i32* %97, i32 0)
  br label %99

99:                                               ; preds = %94, %92
  %100 = call i32 @smart_str_appends(%struct.TYPE_10__* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %101

101:                                              ; preds = %99, %72
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = call i32 @smart_str_free(%struct.TYPE_10__* %2)
  %106 = call i32 @smart_str_appends(%struct.TYPE_10__* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %101
  %108 = call i32 @smart_str_0(%struct.TYPE_10__* %2)
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  ret i32 %110
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @smart_str_appends(%struct.TYPE_10__*, i8*) #2

declare dso_local i32 @smart_str_append_long(%struct.TYPE_10__*, i32) #2

declare dso_local i32* @intl_convert_utf16_to_utf8(i64*, i32, i32*) #2

declare dso_local i32 @smart_str_append(%struct.TYPE_10__*, i32*) #2

declare dso_local i32 @zend_string_release_ex(i32*, i32) #2

declare dso_local i32 @smart_str_free(%struct.TYPE_10__*) #2

declare dso_local i32 @smart_str_0(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
