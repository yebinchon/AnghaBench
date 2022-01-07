; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_accelerator_util_funcs.c_zend_accel_function_hash_copy_from_shm.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_accelerator_util_funcs.c_zend_accel_function_hash_copy_from_shm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

@IS_UNDEF = common dso_local global i64 0, align 8
@ZEND_USER_FUNCTION = common dso_local global i64 0, align 8
@E_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Cannot redeclare %s() (previously declared in %s:%d)\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Cannot redeclare %s()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_21__*)* @zend_accel_function_hash_copy_from_shm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_accel_function_hash_copy_from_shm(%struct.TYPE_21__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %15, %18
  %20 = call i32 @zend_hash_extend(%struct.TYPE_21__* %12, i32 %19, i32 0)
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  store %struct.TYPE_22__* %23, %struct.TYPE_22__** %7, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i64 %28
  store %struct.TYPE_22__* %29, %struct.TYPE_22__** %8, align 8
  br label %30

30:                                               ; preds = %100, %2
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %33 = icmp ne %struct.TYPE_22__* %31, %32
  br i1 %33, label %34, label %103

34:                                               ; preds = %30
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @Z_TYPE(i32 %37)
  %39 = load i64, i64* @IS_UNDEF, align 8
  %40 = icmp ne i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @ZEND_ASSERT(i32 %41)
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ZEND_ASSERT(i32 %45)
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32* @zend_hash_find_ex(%struct.TYPE_21__* %47, i32 %50, i32 1)
  store i32* %51, i32** %9, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = icmp ne i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i64 @UNEXPECTED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %34
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @ZSTR_LEN(i32 %60)
  %62 = icmp sgt i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i64 @EXPECTED(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %57
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64* @ZSTR_VAL(i32 %69)
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i64 @EXPECTED(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %66
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call %struct.TYPE_20__* @Z_PTR(i32 %84)
  %86 = call i32 @zend_hash_update_ptr(%struct.TYPE_21__* %78, i32 %81, %struct.TYPE_20__* %85)
  br label %88

87:                                               ; preds = %66, %57
  br label %106

88:                                               ; preds = %77
  br label %99

89:                                               ; preds = %34
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call %struct.TYPE_20__* @Z_PTR(i32 %96)
  %98 = call i32 @_zend_hash_append_ptr_ex(%struct.TYPE_21__* %90, i32 %93, %struct.TYPE_20__* %97, i32 1)
  br label %99

99:                                               ; preds = %89, %88
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 1
  store %struct.TYPE_22__* %102, %struct.TYPE_22__** %7, align 8
  br label %30

103:                                              ; preds = %30
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  br label %164

106:                                              ; preds = %87
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call %struct.TYPE_20__* @Z_PTR(i32 %109)
  store %struct.TYPE_20__* %110, %struct.TYPE_20__** %5, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = call %struct.TYPE_20__* @Z_PTR_P(i32* %111)
  store %struct.TYPE_20__* %112, %struct.TYPE_20__** %6, align 8
  store i32 1, i32* %10, align 4
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @zend_set_compiled_filename(i32 %116)
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %11, align 4
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @ZEND_USER_FUNCTION, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %156

130:                                              ; preds = %106
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %136, label %156

136:                                              ; preds = %130
  %137 = load i32, i32* @E_ERROR, align 4
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i64* @ZSTR_VAL(i32 %141)
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i64* @ZSTR_VAL(i32 %146)
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i64 0
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (i32, i8*, i64*, ...) @zend_error(i32 %137, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64* %142, i64* %147, i32 %154)
  br label %164

156:                                              ; preds = %130, %106
  %157 = load i32, i32* @E_ERROR, align 4
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i64* @ZSTR_VAL(i32 %161)
  %163 = call i32 (i32, i8*, i64*, ...) @zend_error(i32 %157, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64* %162)
  br label %164

164:                                              ; preds = %103, %156, %136
  ret void
}

declare dso_local i32 @zend_hash_extend(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32* @zend_hash_find_ex(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i64 @UNEXPECTED(i32) #1

declare dso_local i64 @EXPECTED(i32) #1

declare dso_local i64 @ZSTR_LEN(i32) #1

declare dso_local i64* @ZSTR_VAL(i32) #1

declare dso_local i32 @zend_hash_update_ptr(%struct.TYPE_21__*, i32, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @Z_PTR(i32) #1

declare dso_local i32 @_zend_hash_append_ptr_ex(%struct.TYPE_21__*, i32, %struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_20__* @Z_PTR_P(i32*) #1

declare dso_local i32 @zend_set_compiled_filename(i32) #1

declare dso_local i32 @zend_error(i32, i8*, i64*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
