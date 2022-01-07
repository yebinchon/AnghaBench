; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_user_filters.c_user_filter_factory_create.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_user_filters.c_user_filter_factory_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.php_user_filter_data = type { i32*, i32 }

@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"cannot use a user-space filter with a persistent stream\00", align 1
@user_filter_map = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [105 x i8] c"Err, filter \22%s\22 is not in the user-filter map, but somehow the user-filter-factory was invoked for it!?\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"user-filter \22%s\22 requires class \22%s\22, but that class is not defined\00", align 1
@FAILURE = common dso_local global i64 0, align 8
@userfilter_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"filtername\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"params\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"oncreate\00", align 1
@IS_UNDEF = common dso_local global i64 0, align 8
@IS_FALSE = common dso_local global i64 0, align 8
@le_userfilters = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i8*, i32*, i64)* @user_filter_factory_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @user_filter_factory_create(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.php_user_filter_data*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.php_user_filter_data* null, %struct.php_user_filter_data** %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @E_WARNING, align 4
  %21 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %20, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %171

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strlen(i8* %23)
  store i64 %24, i64* %14, align 8
  %25 = load i32, i32* @user_filter_map, align 4
  %26 = call i32 @BG(i32 %25)
  %27 = load i8*, i8** %5, align 8
  %28 = load i64, i64* %14, align 8
  %29 = call %struct.php_user_filter_data* @zend_hash_str_find_ptr(i32 %26, i8* %27, i64 %28)
  store %struct.php_user_filter_data* %29, %struct.php_user_filter_data** %8, align 8
  %30 = icmp eq %struct.php_user_filter_data* null, %29
  br i1 %30, label %31, label %89

31:                                               ; preds = %22
  %32 = load i8*, i8** %5, align 8
  %33 = call i8* @strrchr(i8* %32, i8 signext 46)
  store i8* %33, i8** %15, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %81

35:                                               ; preds = %31
  %36 = load i64, i64* %14, align 8
  %37 = call i8* @safe_emalloc(i64 %36, i32 1, i32 3)
  store i8* %37, i8** %16, align 8
  %38 = load i8*, i8** %16, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i64, i64* %14, align 8
  %41 = add i64 %40, 1
  %42 = call i32 @memcpy(i8* %38, i8* %39, i64 %41)
  %43 = load i8*, i8** %16, align 8
  %44 = load i8*, i8** %15, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = getelementptr inbounds i8, i8* %43, i64 %48
  store i8* %49, i8** %15, align 8
  br label %50

50:                                               ; preds = %77, %35
  %51 = load i8*, i8** %15, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %78

53:                                               ; preds = %50
  %54 = load i8*, i8** %15, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 46
  %59 = zext i1 %58 to i32
  %60 = call i32 @ZEND_ASSERT(i32 %59)
  %61 = load i8*, i8** %15, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  store i8 42, i8* %62, align 1
  %63 = load i8*, i8** %15, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  store i8 0, i8* %64, align 1
  %65 = load i32, i32* @user_filter_map, align 4
  %66 = call i32 @BG(i32 %65)
  %67 = load i8*, i8** %16, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = call i64 @strlen(i8* %68)
  %70 = call %struct.php_user_filter_data* @zend_hash_str_find_ptr(i32 %66, i8* %67, i64 %69)
  store %struct.php_user_filter_data* %70, %struct.php_user_filter_data** %8, align 8
  %71 = icmp ne %struct.php_user_filter_data* null, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %53
  store i8* null, i8** %15, align 8
  br label %77

73:                                               ; preds = %53
  %74 = load i8*, i8** %15, align 8
  store i8 0, i8* %74, align 1
  %75 = load i8*, i8** %16, align 8
  %76 = call i8* @strrchr(i8* %75, i8 signext 46)
  store i8* %76, i8** %15, align 8
  br label %77

77:                                               ; preds = %73, %72
  br label %50

78:                                               ; preds = %50
  %79 = load i8*, i8** %16, align 8
  %80 = call i32 @efree(i8* %79)
  br label %81

81:                                               ; preds = %78, %31
  %82 = load %struct.php_user_filter_data*, %struct.php_user_filter_data** %8, align 8
  %83 = icmp eq %struct.php_user_filter_data* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32, i32* @E_WARNING, align 4
  %86 = load i8*, i8** %5, align 8
  %87 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %85, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.1, i64 0, i64 0), i8* %86)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %171

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88, %22
  %90 = load %struct.php_user_filter_data*, %struct.php_user_filter_data** %8, align 8
  %91 = getelementptr inbounds %struct.php_user_filter_data, %struct.php_user_filter_data* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %111

94:                                               ; preds = %89
  %95 = load %struct.php_user_filter_data*, %struct.php_user_filter_data** %8, align 8
  %96 = getelementptr inbounds %struct.php_user_filter_data, %struct.php_user_filter_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32* @zend_lookup_class(i32 %97)
  %99 = load %struct.php_user_filter_data*, %struct.php_user_filter_data** %8, align 8
  %100 = getelementptr inbounds %struct.php_user_filter_data, %struct.php_user_filter_data* %99, i32 0, i32 0
  store i32* %98, i32** %100, align 8
  %101 = icmp eq i32* null, %98
  br i1 %101, label %102, label %110

102:                                              ; preds = %94
  %103 = load i32, i32* @E_WARNING, align 4
  %104 = load i8*, i8** %5, align 8
  %105 = load %struct.php_user_filter_data*, %struct.php_user_filter_data** %8, align 8
  %106 = getelementptr inbounds %struct.php_user_filter_data, %struct.php_user_filter_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @ZSTR_VAL(i32 %107)
  %109 = call i32 (i32*, i32, i8*, ...) @php_error_docref(i32* null, i32 %103, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i8* %104, i32 %108)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %171

110:                                              ; preds = %94
  br label %111

111:                                              ; preds = %110, %89
  %112 = load %struct.php_user_filter_data*, %struct.php_user_filter_data** %8, align 8
  %113 = getelementptr inbounds %struct.php_user_filter_data, %struct.php_user_filter_data* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = call i64 @object_init_ex(i32* %10, i32* %114)
  %116 = load i64, i64* @FAILURE, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %171

119:                                              ; preds = %111
  %120 = call %struct.TYPE_6__* @php_stream_filter_alloc(i32* @userfilter_ops, i32* null, i32 0)
  store %struct.TYPE_6__* %120, %struct.TYPE_6__** %9, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %122 = icmp eq %struct.TYPE_6__* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = call i32 @zval_ptr_dtor(i32* %10)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %171

125:                                              ; preds = %119
  %126 = load i8*, i8** %5, align 8
  %127 = call i32 @add_property_string(i32* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %126)
  %128 = load i32*, i32** %6, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load i32*, i32** %6, align 8
  %132 = call i32 @add_property_zval(i32* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %131)
  br label %135

133:                                              ; preds = %125
  %134 = call i32 @add_property_null(i32* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %130
  %136 = call i32 @ZVAL_STRINGL(i32* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %137 = call i32 @call_user_function(i32* null, i32* %10, i32* %12, i32* %13, i32 0, i32* null)
  %138 = load i32, i32* %13, align 4
  %139 = call i64 @Z_TYPE(i32 %138)
  %140 = load i64, i64* @IS_UNDEF, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %157

142:                                              ; preds = %135
  %143 = load i32, i32* %13, align 4
  %144 = call i64 @Z_TYPE(i32 %143)
  %145 = load i64, i64* @IS_FALSE, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %142
  %148 = call i32 @zval_ptr_dtor(i32* %13)
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = call i32 @ZVAL_UNDEF(i32* %150)
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %153 = call i32 @php_stream_filter_free(%struct.TYPE_6__* %152)
  %154 = call i32 @zval_ptr_dtor(i32* %10)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %171

155:                                              ; preds = %142
  %156 = call i32 @zval_ptr_dtor(i32* %13)
  br label %157

157:                                              ; preds = %155, %135
  %158 = call i32 @zval_ptr_dtor(i32* %12)
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %160 = load i32, i32* @le_userfilters, align 4
  %161 = call i32 @zend_register_resource(%struct.TYPE_6__* %159, i32 %160)
  %162 = call i32 @ZVAL_RES(i32* %11, i32 %161)
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i32, i32* %10, align 4
  %166 = call i32 @Z_OBJ(i32 %165)
  %167 = call i32 @ZVAL_OBJ(i32* %164, i32 %166)
  %168 = call i32 @add_property_zval(i32* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* %11)
  %169 = call i32 @zval_ptr_dtor(i32* %11)
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %170, %struct.TYPE_6__** %4, align 8
  br label %171

171:                                              ; preds = %157, %147, %123, %118, %102, %84, %19
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %172
}

declare dso_local i32 @php_error_docref(i32*, i32, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.php_user_filter_data* @zend_hash_str_find_ptr(i32, i8*, i64) #1

declare dso_local i32 @BG(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @safe_emalloc(i64, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32* @zend_lookup_class(i32) #1

declare dso_local i32 @ZSTR_VAL(i32) #1

declare dso_local i64 @object_init_ex(i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @php_stream_filter_alloc(i32*, i32*, i32) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @add_property_string(i32*, i8*, i8*) #1

declare dso_local i32 @add_property_zval(i32*, i8*, i32*) #1

declare dso_local i32 @add_property_null(i32*, i8*) #1

declare dso_local i32 @ZVAL_STRINGL(i32*, i8*, i32) #1

declare dso_local i32 @call_user_function(i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32 @ZVAL_UNDEF(i32*) #1

declare dso_local i32 @php_stream_filter_free(%struct.TYPE_6__*) #1

declare dso_local i32 @ZVAL_RES(i32*, i32) #1

declare dso_local i32 @zend_register_resource(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ZVAL_OBJ(i32*, i32) #1

declare dso_local i32 @Z_OBJ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
