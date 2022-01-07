; ModuleID = '/home/carl/AnghaBench/phpredis/extr_redis_array_impl.c_ra_make_array.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_redis_array_impl.c_ra_make_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, double, double, %struct.TYPE_10__*, i32*, i32*, i32, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, i8*, i64, i8*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @ra_make_array(i32* %0, i32* %1, i32* %2, i32* %3, i8* %4, i8* %5, i64 %6, i8* %7, double %8, double %9, i8* %10, i32* %11, i32* %12) #0 {
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %15, align 8
  store i32* %1, i32** %16, align 8
  store i32* %2, i32** %17, align 8
  store i32* %3, i32** %18, align 8
  store i8* %4, i8** %19, align 8
  store i8* %5, i8** %20, align 8
  store i64 %6, i64* %21, align 8
  store i8* %7, i8** %22, align 8
  store double %8, double* %23, align 8
  store double %9, double* %24, align 8
  store i8* %10, i8** %25, align 8
  store i32* %11, i32** %26, align 8
  store i32* %12, i32** %27, align 8
  %31 = load i32*, i32** %15, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %13
  %34 = load i32*, i32** %15, align 8
  %35 = call i32 @zend_hash_num_elements(i32* %34)
  store i32 %35, i32* %29, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %13
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %14, align 8
  br label %174

38:                                               ; preds = %33
  %39 = call %struct.TYPE_10__* @emalloc(i32 104)
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %30, align 8
  %40 = load i32, i32* %29, align 4
  %41 = call i8* @ecalloc(i32 %40, i32 104)
  %42 = bitcast i8* %41 to %struct.TYPE_10__*
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 3
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %44, align 8
  %45 = load i32, i32* %29, align 4
  %46 = call i8* @ecalloc(i32 %45, i32 104)
  %47 = bitcast i8* %46 to %struct.TYPE_10__*
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 9
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %49, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 13
  store i32* null, i32** %53, align 8
  %54 = load i8*, i8** %19, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 12
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 11
  store i64 0, i64* %58, align 8
  %59 = load i8*, i8** %20, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 10
  store i8* %59, i8** %61, align 8
  %62 = load double, double* %23, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  store double %62, double* %64, align 8
  %65 = load double, double* %24, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  store double %65, double* %67, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 4
  store i32* null, i32** %69, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 5
  store i32* null, i32** %71, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %73 = load i32*, i32** %15, align 8
  %74 = load i32*, i32** %27, align 8
  %75 = load i64, i64* %21, align 8
  %76 = load i8*, i8** %22, align 8
  %77 = call i32* @ra_load_hosts(%struct.TYPE_10__* %72, i32* %73, i32* %74, i64 %75, i8* %76)
  %78 = icmp eq i32* %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %38
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %120, label %84

84:                                               ; preds = %79, %38
  store i32 0, i32* %28, align 4
  br label %85

85:                                               ; preds = %106, %84
  %86 = load i32, i32* %28, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %85
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 9
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = load i32, i32* %28, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i64 %96
  %98 = call i32 @zval_dtor(%struct.TYPE_10__* %97)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = load i32, i32* %28, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i64 %103
  %105 = call i32 @zend_string_release(%struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %104)
  br label %106

106:                                              ; preds = %91
  %107 = load i32, i32* %28, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %28, align 4
  br label %85

109:                                              ; preds = %85
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 9
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = call i32 @efree(%struct.TYPE_10__* %112)
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = call i32 @efree(%struct.TYPE_10__* %116)
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %119 = call i32 @efree(%struct.TYPE_10__* %118)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %14, align 8
  br label %174

120:                                              ; preds = %79
  %121 = load i32*, i32** %18, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %137

123:                                              ; preds = %120
  %124 = load i32*, i32** %18, align 8
  %125 = load i32*, i32** %16, align 8
  %126 = load i32*, i32** %17, align 8
  %127 = load i8*, i8** %19, align 8
  %128 = load i8*, i8** %20, align 8
  %129 = load i64, i64* %21, align 8
  %130 = load i8*, i8** %22, align 8
  %131 = load double, double* %23, align 8
  %132 = load double, double* %24, align 8
  %133 = load i8*, i8** %25, align 8
  %134 = load i32*, i32** %26, align 8
  %135 = load i32*, i32** %27, align 8
  %136 = call %struct.TYPE_10__* @ra_make_array(i32* %124, i32* %125, i32* %126, i32* null, i8* %127, i8* %128, i64 %129, i8* %130, double %131, double %132, i8* %133, i32* %134, i32* %135)
  br label %138

137:                                              ; preds = %120
  br label %138

138:                                              ; preds = %137, %123
  %139 = phi %struct.TYPE_10__* [ %136, %123 ], [ null, %137 ]
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 8
  store %struct.TYPE_10__* %139, %struct.TYPE_10__** %141, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %143 = call i32 @ra_init_function_table(%struct.TYPE_10__* %142)
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 7
  %146 = load i32*, i32** %16, align 8
  %147 = call i32 @ZVAL_ZVAL(i32* %145, i32* %146, i32 1, i32 0)
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 6
  %150 = load i32*, i32** %17, align 8
  %151 = call i32 @ZVAL_ZVAL(i32* %149, i32* %150, i32 1, i32 0)
  %152 = load i32*, i32** %26, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %159

154:                                              ; preds = %138
  %155 = load i32*, i32** %26, align 8
  %156 = call i32* @zend_string_copy(i32* %155)
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 5
  store i32* %156, i32** %158, align 8
  br label %159

159:                                              ; preds = %154, %138
  %160 = load i8*, i8** %25, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %172

162:                                              ; preds = %159
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32* @ra_make_continuum(%struct.TYPE_10__* %165, i32 %168)
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 4
  store i32* %169, i32** %171, align 8
  br label %172

172:                                              ; preds = %162, %159
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  store %struct.TYPE_10__* %173, %struct.TYPE_10__** %14, align 8
  br label %174

174:                                              ; preds = %172, %109, %37
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  ret %struct.TYPE_10__* %175
}

declare dso_local i32 @zend_hash_num_elements(i32*) #1

declare dso_local %struct.TYPE_10__* @emalloc(i32) #1

declare dso_local i8* @ecalloc(i32, i32) #1

declare dso_local i32* @ra_load_hosts(%struct.TYPE_10__*, i32*, i32*, i64, i8*) #1

declare dso_local i32 @zval_dtor(%struct.TYPE_10__*) #1

declare dso_local i32 @zend_string_release(%struct.TYPE_10__* byval(%struct.TYPE_10__) align 8) #1

declare dso_local i32 @efree(%struct.TYPE_10__*) #1

declare dso_local i32 @ra_init_function_table(%struct.TYPE_10__*) #1

declare dso_local i32 @ZVAL_ZVAL(i32*, i32*, i32, i32) #1

declare dso_local i32* @zend_string_copy(i32*) #1

declare dso_local i32* @ra_make_continuum(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
