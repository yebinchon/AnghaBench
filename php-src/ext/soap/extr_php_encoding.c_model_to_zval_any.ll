; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_model_to_zval_any.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_model_to_zval_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i64 }

@XSD_ANYXML = common dso_local global i32 0, align 4
@IS_ARRAY = common dso_local global i64 0, align 8
@IS_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"any\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*)* @model_to_zval_any to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @model_to_zval_any(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32* null, i32** %9, align 8
  store i8* null, i8** %10, align 8
  br label %13

13:                                               ; preds = %145, %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %149

16:                                               ; preds = %13
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32* @get_zval_property(i32* %17, i8* %21, i32* %5)
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %145

24:                                               ; preds = %16
  %25 = call i32 @ZVAL_NULL(i32* %7)
  %26 = load i32, i32* @XSD_ANYXML, align 4
  %27 = call i32 @get_conversion(i32 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = call i32 @master_to_zval(i32* %7, i32 %27, %struct.TYPE_4__* %28)
  %30 = load i32*, i32** %9, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %24
  %33 = load i32*, i32** %9, align 8
  %34 = call i64 @Z_TYPE_P(i32* %33)
  %35 = load i64, i64* @IS_ARRAY, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = call i32 @array_init(i32* %6)
  %39 = load i8*, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i8*, i8** %10, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @add_assoc_zval(i32* %6, i8* %42, i32* %43)
  br label %48

45:                                               ; preds = %37
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @add_next_index_zval(i32* %6, i32* %46)
  br label %48

48:                                               ; preds = %45, %41
  store i32* %6, i32** %9, align 8
  br label %49

49:                                               ; preds = %48, %32, %24
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @Z_TYPE(i32 %50)
  %52 = load i64, i64* @IS_STRING, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %94

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = call i8* @Z_STRVAL(i32 %55)
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 60
  br i1 %59, label %60, label %94

60:                                               ; preds = %54
  store i8* null, i8** %10, align 8
  br label %61

61:                                               ; preds = %87, %60
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = icmp ne %struct.TYPE_4__* %64, null
  br i1 %65, label %66, label %93

66:                                               ; preds = %61
  %67 = call i32 @ZVAL_NULL(i32* %11)
  %68 = load i32, i32* @XSD_ANYXML, align 4
  %69 = call i32 @get_conversion(i32 %68)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = call i32 @master_to_zval(i32* %11, i32 %69, %struct.TYPE_4__* %72)
  %74 = load i32, i32* %11, align 4
  %75 = call i64 @Z_TYPE(i32 %74)
  %76 = load i64, i64* @IS_STRING, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %66
  %79 = load i32, i32* %7, align 4
  %80 = call i8* @Z_STRVAL(i32 %79)
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 60
  br i1 %83, label %84, label %87

84:                                               ; preds = %78, %66
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @Z_TRY_DELREF(i32 %85)
  br label %93

87:                                               ; preds = %78
  %88 = call i32 @concat_function(i32* %7, i32* %7, i32* %11)
  %89 = call i32 @zval_ptr_dtor(i32* %11)
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  store %struct.TYPE_4__* %92, %struct.TYPE_4__** %4, align 8
  br label %61

93:                                               ; preds = %84, %61
  br label %99

94:                                               ; preds = %54, %49
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i8*
  store i8* %98, i8** %10, align 8
  br label %99

99:                                               ; preds = %94, %93
  %100 = load i32*, i32** %9, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load i8*, i8** %10, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = call i32 @array_init(i32* %6)
  %107 = load i8*, i8** %10, align 8
  %108 = call i32 @add_assoc_zval(i32* %6, i8* %107, i32* %7)
  store i32* %6, i32** %9, align 8
  store i8* null, i8** %10, align 8
  br label %111

109:                                              ; preds = %102
  %110 = call i32 @ZVAL_COPY_VALUE(i32* %8, i32* %7)
  store i32* %8, i32** %9, align 8
  br label %111

111:                                              ; preds = %109, %105
  br label %144

112:                                              ; preds = %99
  %113 = load i8*, i8** %10, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %140

115:                                              ; preds = %112
  %116 = load i32*, i32** %9, align 8
  %117 = call i32 @Z_ARRVAL_P(i32* %116)
  %118 = load i8*, i8** %10, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = call i32 @strlen(i8* %119)
  %121 = call i32* @zend_hash_str_find(i32 %117, i8* %118, i32 %120)
  store i32* %121, i32** %12, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %135

123:                                              ; preds = %115
  %124 = load i32*, i32** %12, align 8
  %125 = call i64 @Z_TYPE_P(i32* %124)
  %126 = load i64, i64* @IS_ARRAY, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = call i32 @array_init(i32* %6)
  %130 = load i32*, i32** %12, align 8
  %131 = call i32 @add_next_index_zval(i32* %6, i32* %130)
  store i32* %6, i32** %12, align 8
  br label %132

132:                                              ; preds = %128, %123
  %133 = load i32*, i32** %12, align 8
  %134 = call i32 @add_next_index_zval(i32* %133, i32* %7)
  br label %139

135:                                              ; preds = %115
  %136 = load i32*, i32** %9, align 8
  %137 = load i8*, i8** %10, align 8
  %138 = call i32 @add_assoc_zval(i32* %136, i8* %137, i32* %7)
  br label %139

139:                                              ; preds = %135, %132
  br label %143

140:                                              ; preds = %112
  %141 = load i32*, i32** %9, align 8
  %142 = call i32 @add_next_index_zval(i32* %141, i32* %7)
  br label %143

143:                                              ; preds = %140, %139
  store i8* null, i8** %10, align 8
  br label %144

144:                                              ; preds = %143, %111
  br label %145

145:                                              ; preds = %144, %16
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  store %struct.TYPE_4__* %148, %struct.TYPE_4__** %4, align 8
  br label %13

149:                                              ; preds = %13
  %150 = load i32*, i32** %9, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %163

152:                                              ; preds = %149
  %153 = load i32*, i32** %3, align 8
  %154 = load i8*, i8** %10, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load i8*, i8** %10, align 8
  br label %159

158:                                              ; preds = %152
  br label %159

159:                                              ; preds = %158, %156
  %160 = phi i8* [ %157, %156 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %158 ]
  %161 = load i32*, i32** %9, align 8
  %162 = call i32 @set_zval_property(i32* %153, i8* %160, i32* %161)
  br label %163

163:                                              ; preds = %159, %149
  ret void
}

declare dso_local i32* @get_zval_property(i32*, i8*, i32*) #1

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @master_to_zval(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @get_conversion(i32) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32 @add_assoc_zval(i32*, i8*, i32*) #1

declare dso_local i32 @add_next_index_zval(i32*, i32*) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i8* @Z_STRVAL(i32) #1

declare dso_local i32 @Z_TRY_DELREF(i32) #1

declare dso_local i32 @concat_function(i32*, i32*, i32*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @ZVAL_COPY_VALUE(i32*, i32*) #1

declare dso_local i32* @zend_hash_str_find(i32, i8*, i32) #1

declare dso_local i32 @Z_ARRVAL_P(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @set_zval_property(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
