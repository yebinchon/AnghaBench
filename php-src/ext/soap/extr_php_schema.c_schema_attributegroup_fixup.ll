; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_attributegroup_fixup.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_schema_attributegroup_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32* }
%struct.TYPE_14__ = type { i32*, i32*, i8*, i8*, i8*, i8* }
%struct.TYPE_12__ = type { i64 }

@HASH_KEY_IS_STRING = common dso_local global i64 0, align 8
@delete_extra_attribute = common dso_local global i32 0, align 4
@copy_extra_attribute = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_14__*, i32*)* @schema_attributegroup_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schema_attributegroup_fixup(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %173

17:                                               ; preds = %3
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %166

22:                                               ; preds = %17
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @schema_find_by_ref(i32* %25, i32* %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %7, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %32 = icmp ne %struct.TYPE_12__* %31, null
  br i1 %32, label %33, label %165

33:                                               ; preds = %22
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %164

38:                                               ; preds = %33
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @zend_hash_internal_pointer_reset(i64 %41)
  br label %43

43:                                               ; preds = %162, %38
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call %struct.TYPE_14__* @zend_hash_get_current_data_ptr(i64 %46)
  store %struct.TYPE_14__* %47, %struct.TYPE_14__** %8, align 8
  %48 = icmp ne %struct.TYPE_14__* %47, null
  br i1 %48, label %49, label %163

49:                                               ; preds = %43
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @zend_hash_get_current_key_type(i64 %52)
  %54 = load i64, i64* @HASH_KEY_IS_STRING, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %149

56:                                               ; preds = %49
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %59 = call i32 @schema_attribute_fixup(%struct.TYPE_13__* %57, %struct.TYPE_14__* %58)
  %60 = call i8* @emalloc(i32 4)
  %61 = bitcast i8* %60 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %10, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %64 = call i32 @memcpy(%struct.TYPE_14__* %62, %struct.TYPE_14__* %63, i32 4)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 5
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %56
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 5
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @estrdup(i8* %72)
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 5
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %69, %56
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 4
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 4
  %84 = load i8*, i8** %83, align 8
  %85 = call i8* @estrdup(i8* %84)
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 4
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %81, %76
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 3
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = call i8* @estrdup(i8* %96)
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 3
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %93, %88
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = call i8* @estrdup(i8* %108)
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %105, %100
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %136

117:                                              ; preds = %112
  %118 = call i8* @emalloc(i32 4)
  %119 = bitcast i8* %118 to i32*
  store i32* %119, i32** %11, align 8
  %120 = load i32*, i32** %11, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @zend_hash_num_elements(i32* %123)
  %125 = load i32, i32* @delete_extra_attribute, align 4
  %126 = call i32 @zend_hash_init(i32* %120, i32 %124, i32* null, i32 %125, i32 0)
  %127 = load i32*, i32** %11, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* @copy_extra_attribute, align 4
  %132 = call i32 @zend_hash_copy(i32* %127, i32* %130, i32 %131)
  %133 = load i32*, i32** %11, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  store i32* %133, i32** %135, align 8
  br label %136

136:                                              ; preds = %117, %112
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @zend_hash_get_current_key(i64 %139, i32** %9, i32* null)
  %141 = load i32*, i32** %6, align 8
  %142 = load i32*, i32** %9, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %144 = call i32 @zend_hash_add_ptr(i32* %141, i32* %142, %struct.TYPE_14__* %143)
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @zend_hash_move_forward(i64 %147)
  br label %162

149:                                              ; preds = %49
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %152 = load i32*, i32** %6, align 8
  call void @schema_attributegroup_fixup(%struct.TYPE_13__* %150, %struct.TYPE_14__* %151, i32* %152)
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @zend_hash_get_current_key(i64 %155, i32** null, i32* %12)
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @zend_hash_index_del(i64 %159, i32 %160)
  br label %162

162:                                              ; preds = %149, %136
  br label %43

163:                                              ; preds = %43
  br label %164

164:                                              ; preds = %163, %33
  br label %165

165:                                              ; preds = %164, %22
  br label %166

166:                                              ; preds = %165, %17
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @efree(i32* %169)
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  store i32* null, i32** %172, align 8
  br label %173

173:                                              ; preds = %166, %3
  ret void
}

declare dso_local i64 @schema_find_by_ref(i32*, i32*) #1

declare dso_local i32 @zend_hash_internal_pointer_reset(i64) #1

declare dso_local %struct.TYPE_14__* @zend_hash_get_current_data_ptr(i64) #1

declare dso_local i64 @zend_hash_get_current_key_type(i64) #1

declare dso_local i32 @schema_attribute_fixup(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i32 @zend_hash_init(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @zend_hash_num_elements(i32*) #1

declare dso_local i32 @zend_hash_copy(i32*, i32*, i32) #1

declare dso_local i32 @zend_hash_get_current_key(i64, i32**, i32*) #1

declare dso_local i32 @zend_hash_add_ptr(i32*, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @zend_hash_move_forward(i64) #1

declare dso_local i32 @zend_hash_index_del(i64, i32) #1

declare dso_local i32 @efree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
