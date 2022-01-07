; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_accelerator_util_funcs.c_zend_accel_class_hash_copy.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_accelerator_util_funcs.c_zend_accel_class_hash_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }

@IS_UNDEF = common dso_local global i64 0, align 8
@accel_directives = common dso_local global i32 0, align 4
@ZEND_ACC_ANON_CLASS = common dso_local global i32 0, align 4
@E_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Cannot declare %s %s, because the name is already in use\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_19__*)* @zend_accel_class_hash_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_accel_class_hash_copy(%struct.TYPE_19__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %15, %18
  %20 = call i32 @zend_hash_extend(%struct.TYPE_19__* %12, i32 %19, i32 0)
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %5, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i64 %28
  store %struct.TYPE_20__* %29, %struct.TYPE_20__** %6, align 8
  br label %30

30:                                               ; preds = %137, %2
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %33 = icmp ne %struct.TYPE_20__* %31, %32
  br i1 %33, label %34, label %140

34:                                               ; preds = %30
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @Z_TYPE(i32 %37)
  %39 = load i64, i64* @IS_UNDEF, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @UNEXPECTED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %137

45:                                               ; preds = %34
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ZEND_ASSERT(i32 %48)
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32* @zend_hash_find_ex(%struct.TYPE_19__* %50, i32 %53, i32 1)
  store i32* %54, i32** %7, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = icmp ne i32* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i64 @UNEXPECTED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %126

60:                                               ; preds = %45
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @ZSTR_LEN(i32 %63)
  %65 = icmp sgt i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i64 @EXPECTED(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %60
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64* @ZSTR_VAL(i32 %72)
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i64 @EXPECTED(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  br label %137

81:                                               ; preds = %69, %60
  %82 = load i32, i32* @accel_directives, align 4
  %83 = call i32 @ZCG(i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i64 @UNEXPECTED(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %124

92:                                               ; preds = %81
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call %struct.TYPE_18__* @Z_PTR(i32 %95)
  store %struct.TYPE_18__* %96, %struct.TYPE_18__** %9, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ZEND_ACC_ANON_CLASS, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %123, label %103

103:                                              ; preds = %92
  store i32 1, i32* %10, align 4
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @zend_set_compiled_filename(i32 %108)
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* @E_ERROR, align 4
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %117 = call i32 @zend_get_object_type(%struct.TYPE_18__* %116)
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i64* @ZSTR_VAL(i32 %120)
  %122 = call i32 @zend_error(i32 %115, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %117, i64* %121)
  br label %143

123:                                              ; preds = %92
  br label %137

124:                                              ; preds = %81
  br label %125

125:                                              ; preds = %124
  br label %136

126:                                              ; preds = %45
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call %struct.TYPE_18__* @Z_PTR(i32 %133)
  %135 = call i32* @_zend_hash_append_ptr(%struct.TYPE_19__* %127, i32 %130, %struct.TYPE_18__* %134)
  store i32* %135, i32** %7, align 8
  br label %136

136:                                              ; preds = %126, %125
  br label %137

137:                                              ; preds = %136, %123, %80, %44
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 1
  store %struct.TYPE_20__* %139, %struct.TYPE_20__** %5, align 8
  br label %30

140:                                              ; preds = %30
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 1
  store i64 0, i64* %142, align 8
  br label %143

143:                                              ; preds = %140, %103
  ret void
}

declare dso_local i32 @zend_hash_extend(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i64 @UNEXPECTED(i32) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local i32* @zend_hash_find_ex(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i64 @EXPECTED(i32) #1

declare dso_local i64 @ZSTR_LEN(i32) #1

declare dso_local i64* @ZSTR_VAL(i32) #1

declare dso_local i32 @ZCG(i32) #1

declare dso_local %struct.TYPE_18__* @Z_PTR(i32) #1

declare dso_local i32 @zend_set_compiled_filename(i32) #1

declare dso_local i32 @zend_error(i32, i8*, i32, i64*) #1

declare dso_local i32 @zend_get_object_type(%struct.TYPE_18__*) #1

declare dso_local i32* @_zend_hash_append_ptr(%struct.TYPE_19__*, i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
