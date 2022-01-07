; ModuleID = '/home/carl/AnghaBench/php-src/ext/com_dotnet/extr_com_wrapper.c_generate_dispids.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/com_dotnet/extr_com_wrapper.c_generate_dispids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32 }
%struct.TYPE_5__ = type { i32 }

@ZVAL_PTR_DTOR = common dso_local global i32 0, align 4
@HASH_KEY_NON_EXISTENT = common dso_local global i32 0, align 4
@HASH_KEY_IS_LONG = common dso_local global i32 0, align 4
@ZEND_ULONG_FMT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @generate_dispids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_dispids(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [32 x i8], align 16
  %10 = alloca [32 x i8], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32* null, i32** %4, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @ALLOC_HASHTABLE(i32* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @ALLOC_HASHTABLE(i32* %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @ZVAL_PTR_DTOR, align 4
  %28 = call i32 @zend_hash_init(i32* %26, i32 0, i32* null, i32 %27, i32 0)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @ZVAL_PTR_DTOR, align 4
  %33 = call i32 @zend_hash_init(i32* %31, i32 0, i32* null, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %15, %1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32* @Z_OBJPROP(i32 %37)
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %107

40:                                               ; preds = %34
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32* @Z_OBJPROP(i32 %43)
  %45 = call i32 @zend_hash_internal_pointer_reset_ex(i32* %44, i32* %3)
  br label %46

46:                                               ; preds = %85, %82, %40
  %47 = load i32, i32* @HASH_KEY_NON_EXISTENT, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32* @Z_OBJPROP(i32 %50)
  %52 = call i32 @zend_hash_get_current_key_ex(i32* %51, i32** %4, i32* %8, i32* %3)
  store i32 %52, i32* %7, align 4
  %53 = icmp ne i32 %47, %52
  br i1 %53, label %54, label %106

54:                                               ; preds = %46
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @HASH_KEY_IS_LONG, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %60 = load i8*, i8** @ZEND_ULONG_FMT, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @snprintf(i8* %59, i32 32, i8* %60, i32 %61)
  %63 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %64 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %65 = call i32 @strlen(i8* %64)
  %66 = call i32* @zend_string_init(i8* %63, i32 %65, i32 0)
  store i32* %66, i32** %4, align 8
  br label %70

67:                                               ; preds = %54
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @zend_string_addref(i32* %68)
  br label %70

70:                                               ; preds = %67, %58
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32* @Z_OBJPROP(i32 %73)
  %75 = call i32 @zend_hash_move_forward_ex(i32* %74, i32* %3)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = call i32* @zend_hash_find(i32* %78, i32* %79)
  store i32* %80, i32** %5, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %70
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @zend_string_release_ex(i32* %83, i32 0)
  br label %46

85:                                               ; preds = %70
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @ZVAL_STR_COPY(i32* %6, i32* %86)
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @zend_hash_next_free_element(i32* %90)
  store i32 %91, i32* %8, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @zend_hash_index_update(i32* %94, i32 %95, i32* %6)
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @ZVAL_LONG(i32* %6, i32 %97)
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 @zend_hash_update(i32* %101, i32* %102, i32* %6)
  %104 = load i32*, i32** %4, align 8
  %105 = call i32 @zend_string_release_ex(i32* %104, i32 0)
  br label %46

106:                                              ; preds = %46
  br label %107

107:                                              ; preds = %106, %34
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call %struct.TYPE_5__* @Z_OBJCE(i32 %110)
  %112 = icmp ne %struct.TYPE_5__* %111, null
  br i1 %112, label %113, label %182

113:                                              ; preds = %107
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call %struct.TYPE_5__* @Z_OBJCE(i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = call i32 @zend_hash_internal_pointer_reset_ex(i32* %118, i32* %3)
  br label %120

120:                                              ; preds = %160, %157, %113
  %121 = load i32, i32* @HASH_KEY_NON_EXISTENT, align 4
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call %struct.TYPE_5__* @Z_OBJCE(i32 %124)
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = call i32 @zend_hash_get_current_key_ex(i32* %126, i32** %4, i32* %8, i32* %3)
  store i32 %127, i32* %7, align 4
  %128 = icmp ne i32 %121, %127
  br i1 %128, label %129, label %181

129:                                              ; preds = %120
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @HASH_KEY_IS_LONG, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %129
  %134 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @snprintf(i8* %134, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %135)
  %137 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %138 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %139 = call i32 @strlen(i8* %138)
  %140 = call i32* @zend_string_init(i8* %137, i32 %139, i32 0)
  store i32* %140, i32** %4, align 8
  br label %144

141:                                              ; preds = %129
  %142 = load i32*, i32** %4, align 8
  %143 = call i32 @zend_string_addref(i32* %142)
  br label %144

144:                                              ; preds = %141, %133
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call %struct.TYPE_5__* @Z_OBJCE(i32 %147)
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = call i32 @zend_hash_move_forward_ex(i32* %149, i32* %3)
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32*, i32** %4, align 8
  %155 = call i32* @zend_hash_find(i32* %153, i32* %154)
  store i32* %155, i32** %5, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %144
  %158 = load i32*, i32** %4, align 8
  %159 = call i32 @zend_string_release_ex(i32* %158, i32 0)
  br label %120

160:                                              ; preds = %144
  %161 = load i32*, i32** %4, align 8
  %162 = call i32 @ZVAL_STR_COPY(i32* %6, i32* %161)
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = call i32 @zend_hash_next_free_element(i32* %165)
  store i32 %166, i32* %8, align 4
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = call i32 @zend_hash_index_update(i32* %169, i32 %170, i32* %6)
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @ZVAL_LONG(i32* %6, i32 %172)
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load i32*, i32** %4, align 8
  %178 = call i32 @zend_hash_update(i32* %176, i32* %177, i32* %6)
  %179 = load i32*, i32** %4, align 8
  %180 = call i32 @zend_string_release_ex(i32* %179, i32 0)
  br label %120

181:                                              ; preds = %120
  br label %182

182:                                              ; preds = %181, %107
  ret void
}

declare dso_local i32 @ALLOC_HASHTABLE(i32*) #1

declare dso_local i32 @zend_hash_init(i32*, i32, i32*, i32, i32) #1

declare dso_local i32* @Z_OBJPROP(i32) #1

declare dso_local i32 @zend_hash_internal_pointer_reset_ex(i32*, i32*) #1

declare dso_local i32 @zend_hash_get_current_key_ex(i32*, i32**, i32*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32* @zend_string_init(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @zend_string_addref(i32*) #1

declare dso_local i32 @zend_hash_move_forward_ex(i32*, i32*) #1

declare dso_local i32* @zend_hash_find(i32*, i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

declare dso_local i32 @ZVAL_STR_COPY(i32*, i32*) #1

declare dso_local i32 @zend_hash_next_free_element(i32*) #1

declare dso_local i32 @zend_hash_index_update(i32*, i32, i32*) #1

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i32 @zend_hash_update(i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_5__* @Z_OBJCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
