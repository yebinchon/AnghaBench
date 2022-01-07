; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_accelerator_util_funcs.c_zend_accel_function_hash_copy.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_accelerator_util_funcs.c_zend_accel_function_hash_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }

@IS_UNDEF = common dso_local global i64 0, align 8
@ZEND_USER_FUNCTION = common dso_local global i64 0, align 8
@E_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Cannot redeclare %s() (previously declared in %s:%d)\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Cannot redeclare %s()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_20__*)* @zend_accel_function_hash_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_accel_function_hash_copy(%struct.TYPE_20__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %15, %18
  %20 = call i32 @zend_hash_extend(%struct.TYPE_20__* %12, i32 %19, i32 0)
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  store %struct.TYPE_21__* %23, %struct.TYPE_21__** %7, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i64 %28
  store %struct.TYPE_21__* %29, %struct.TYPE_21__** %8, align 8
  br label %30

30:                                               ; preds = %98, %2
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %33 = icmp ne %struct.TYPE_21__* %31, %32
  br i1 %33, label %34, label %101

34:                                               ; preds = %30
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @Z_TYPE(i32 %37)
  %39 = load i64, i64* @IS_UNDEF, align 8
  %40 = icmp ne i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @ZEND_ASSERT(i32 %41)
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ZEND_ASSERT(i32 %45)
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32* @zend_hash_find_ex(%struct.TYPE_20__* %47, i32 %50, i32 1)
  store i32* %51, i32** %9, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = icmp ne i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i64 @UNEXPECTED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %87

57:                                               ; preds = %34
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @ZSTR_LEN(i32 %60)
  %62 = icmp sgt i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i64 @EXPECTED(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %57
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64* @ZSTR_VAL(i32 %69)
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i64 @EXPECTED(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %66
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 1
  %84 = call i32* @zend_hash_update(%struct.TYPE_20__* %78, i32 %81, i32* %83)
  store i32* %84, i32** %9, align 8
  br label %86

85:                                               ; preds = %66, %57
  br label %104

86:                                               ; preds = %77
  br label %97

87:                                               ; preds = %34
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call %struct.TYPE_19__* @Z_PTR(i32 %94)
  %96 = call i32 @_zend_hash_append_ptr(%struct.TYPE_20__* %88, i32 %91, %struct.TYPE_19__* %95)
  br label %97

97:                                               ; preds = %87, %86
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 1
  store %struct.TYPE_21__* %100, %struct.TYPE_21__** %7, align 8
  br label %30

101:                                              ; preds = %30
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 1
  store i64 0, i64* %103, align 8
  br label %162

104:                                              ; preds = %85
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call %struct.TYPE_19__* @Z_PTR(i32 %107)
  store %struct.TYPE_19__* %108, %struct.TYPE_19__** %5, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = call %struct.TYPE_19__* @Z_PTR_P(i32* %109)
  store %struct.TYPE_19__* %110, %struct.TYPE_19__** %6, align 8
  store i32 1, i32* %10, align 4
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @zend_set_compiled_filename(i32 %114)
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %11, align 4
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @ZEND_USER_FUNCTION, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %154

128:                                              ; preds = %104
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp sgt i64 %132, 0
  br i1 %133, label %134, label %154

134:                                              ; preds = %128
  %135 = load i32, i32* @E_ERROR, align 4
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i64* @ZSTR_VAL(i32 %139)
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i64* @ZSTR_VAL(i32 %144)
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i32, i8*, i64*, ...) @zend_error(i32 %135, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64* %140, i64* %145, i32 %152)
  br label %162

154:                                              ; preds = %128, %104
  %155 = load i32, i32* @E_ERROR, align 4
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i64* @ZSTR_VAL(i32 %159)
  %161 = call i32 (i32, i8*, i64*, ...) @zend_error(i32 %155, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64* %160)
  br label %162

162:                                              ; preds = %101, %154, %134
  ret void
}

declare dso_local i32 @zend_hash_extend(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32* @zend_hash_find_ex(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i64 @UNEXPECTED(i32) #1

declare dso_local i64 @EXPECTED(i32) #1

declare dso_local i64 @ZSTR_LEN(i32) #1

declare dso_local i64* @ZSTR_VAL(i32) #1

declare dso_local i32* @zend_hash_update(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @_zend_hash_append_ptr(%struct.TYPE_20__*, i32, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @Z_PTR(i32) #1

declare dso_local %struct.TYPE_19__* @Z_PTR_P(i32*) #1

declare dso_local i32 @zend_set_compiled_filename(i32) #1

declare dso_local i32 @zend_error(i32, i8*, i64*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
