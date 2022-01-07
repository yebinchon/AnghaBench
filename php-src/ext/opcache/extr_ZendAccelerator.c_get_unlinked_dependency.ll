; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_ZendAccelerator.c_get_unlinked_dependency.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_ZendAccelerator.c_get_unlinked_dependency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i64, %struct.TYPE_8__*, %struct.TYPE_7__*, i64 }
%struct.TYPE_8__ = type { i64, i32* }
%struct.TYPE_7__ = type { i64, i32* }

@.str = private unnamed_addr constant [15 x i8] c"Unknown reason\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@class_table = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Unknown parent \00", align 1
@ZEND_ACC_CONSTANTS_UPDATED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Parent with unresolved initializers \00", align 1
@ZEND_ACC_PROPERTY_TYPES_RESOLVED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Parent with unresolved property types \00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Unknown interface \00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Unknown trait \00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Unknown type dependencies\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i8**, i8**)* @get_unlinked_dependency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_unlinked_dependency(%struct.TYPE_9__* %0, i8** %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %11 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %66

17:                                               ; preds = %3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = call i32* @zend_string_tolower(i64 %20)
  store i32* %21, i32** %8, align 8
  %22 = load i32, i32* @class_table, align 4
  %23 = call i32 @EG(i32 %22)
  %24 = load i32*, i32** %8, align 8
  %25 = call %struct.TYPE_9__* @zend_hash_find_ptr(i32 %23, i32* %24)
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @zend_string_release(i32* %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = icmp ne %struct.TYPE_9__* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %17
  %31 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %31, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = call i8* @ZSTR_VAL(i64 %34)
  %36 = load i8**, i8*** %6, align 8
  store i8* %35, i8** %36, align 8
  br label %154

37:                                               ; preds = %17
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ZEND_ACC_CONSTANTS_UPDATED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8** %45, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = call i8* @ZSTR_VAL(i64 %48)
  %50 = load i8**, i8*** %6, align 8
  store i8* %49, i8** %50, align 8
  br label %154

51:                                               ; preds = %37
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @ZEND_ACC_PROPERTY_TYPES_RESOLVED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8** %59, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = call i8* @ZSTR_VAL(i64 %62)
  %64 = load i8**, i8*** %6, align 8
  store i8* %63, i8** %64, align 8
  br label %154

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65, %3
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %107

71:                                               ; preds = %66
  store i64 0, i64* %9, align 8
  br label %72

72:                                               ; preds = %103, %71
  %73 = load i64, i64* %9, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ult i64 %73, %76
  br i1 %77, label %78, label %106

78:                                               ; preds = %72
  %79 = load i32, i32* @class_table, align 4
  %80 = call i32 @EG(i32 %79)
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call %struct.TYPE_9__* @zend_hash_find_ptr(i32 %80, i32* %87)
  store %struct.TYPE_9__* %88, %struct.TYPE_9__** %7, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %90 = icmp ne %struct.TYPE_9__* %89, null
  br i1 %90, label %102, label %91

91:                                               ; preds = %78
  %92 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8** %92, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load i64, i64* %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i8* @ZSTR_VAL(i64 %99)
  %101 = load i8**, i8*** %6, align 8
  store i8* %100, i8** %101, align 8
  br label %154

102:                                              ; preds = %78
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %9, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %9, align 8
  br label %72

106:                                              ; preds = %72
  br label %107

107:                                              ; preds = %106, %66
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %148

112:                                              ; preds = %107
  store i64 0, i64* %10, align 8
  br label %113

113:                                              ; preds = %144, %112
  %114 = load i64, i64* %10, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ult i64 %114, %117
  br i1 %118, label %119, label %147

119:                                              ; preds = %113
  %120 = load i32, i32* @class_table, align 4
  %121 = call i32 @EG(i32 %120)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = load i64, i64* %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = call %struct.TYPE_9__* @zend_hash_find_ptr(i32 %121, i32* %128)
  store %struct.TYPE_9__* %129, %struct.TYPE_9__** %7, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %131 = icmp ne %struct.TYPE_9__* %130, null
  br i1 %131, label %143, label %132

132:                                              ; preds = %119
  %133 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8** %133, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = load i64, i64* %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i8* @ZSTR_VAL(i64 %140)
  %142 = load i8**, i8*** %6, align 8
  store i8* %141, i8** %142, align 8
  br label %154

143:                                              ; preds = %119
  br label %144

144:                                              ; preds = %143
  %145 = load i64, i64* %10, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %10, align 8
  br label %113

147:                                              ; preds = %113
  br label %148

148:                                              ; preds = %147, %107
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %150 = call i32 @preload_needed_types_known(%struct.TYPE_9__* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %148
  %153 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8** %153, align 8
  br label %154

154:                                              ; preds = %30, %44, %58, %91, %132, %152, %148
  ret void
}

declare dso_local i32* @zend_string_tolower(i64) #1

declare dso_local %struct.TYPE_9__* @zend_hash_find_ptr(i32, i32*) #1

declare dso_local i32 @EG(i32) #1

declare dso_local i32 @zend_string_release(i32*) #1

declare dso_local i8* @ZSTR_VAL(i64) #1

declare dso_local i32 @preload_needed_types_known(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
