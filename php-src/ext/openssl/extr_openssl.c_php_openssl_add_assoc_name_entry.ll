; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_add_assoc_name_entry.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_add_assoc_name_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V_ASN1_UTF8STRING = common dso_local global i64 0, align 8
@IS_ARRAY = common dso_local global i64 0, align 8
@IS_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32*, i32)* @php_openssl_add_assoc_name_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_openssl_add_assoc_name_entry(i32* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %16, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = call i32 @array_init(i32* %10)
  br label %28

25:                                               ; preds = %4
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @ZVAL_COPY_VALUE(i32* %10, i32* %26)
  br label %28

28:                                               ; preds = %25, %23
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %126, %28
  %30 = load i32, i32* %12, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @X509_NAME_entry_count(i32* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %129

34:                                               ; preds = %29
  store i8* null, i8** %18, align 8
  store i32 0, i32* %19, align 4
  store i8* null, i8** %20, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32* @X509_NAME_get_entry(i32* %35, i32 %36)
  store i32* %37, i32** %15, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = call i32* @X509_NAME_ENTRY_get_object(i32* %38)
  store i32* %39, i32** %17, align 8
  %40 = load i32*, i32** %17, align 8
  %41 = call i32 @OBJ_obj2nid(i32* %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load i32, i32* %14, align 4
  %46 = call i64 @OBJ_nid2sn(i32 %45)
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %13, align 8
  br label %52

48:                                               ; preds = %34
  %49 = load i32, i32* %14, align 4
  %50 = call i64 @OBJ_nid2ln(i32 %49)
  %51 = inttoptr i64 %50 to i8*
  store i8* %51, i8** %13, align 8
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i32*, i32** %15, align 8
  %54 = call i32* @X509_NAME_ENTRY_get_data(i32* %53)
  store i32* %54, i32** %16, align 8
  %55 = load i32*, i32** %16, align 8
  %56 = call i64 @ASN1_STRING_type(i32* %55)
  %57 = load i64, i64* @V_ASN1_UTF8STRING, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32*, i32** %16, align 8
  %61 = call i32 @ASN1_STRING_to_UTF8(i8** %20, i32* %60)
  store i32 %61, i32* %19, align 4
  %62 = load i8*, i8** %20, align 8
  store i8* %62, i8** %18, align 8
  br label %68

63:                                               ; preds = %52
  %64 = load i32*, i32** %16, align 8
  %65 = call i8* @ASN1_STRING_get0_data(i32* %64)
  store i8* %65, i8** %18, align 8
  %66 = load i32*, i32** %16, align 8
  %67 = call i32 @ASN1_STRING_length(i32* %66)
  store i32 %67, i32* %19, align 4
  br label %68

68:                                               ; preds = %63, %59
  %69 = load i32, i32* %19, align 4
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %117

71:                                               ; preds = %68
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @Z_ARRVAL(i32 %72)
  %74 = load i8*, i8** %13, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = call i32 @strlen(i8* %75)
  %77 = call i32* @zend_hash_str_find(i32 %73, i8* %74, i32 %76)
  store i32* %77, i32** %9, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %111

79:                                               ; preds = %71
  %80 = load i32*, i32** %9, align 8
  %81 = call i64 @Z_TYPE_P(i32* %80)
  %82 = load i64, i64* @IS_ARRAY, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i32*, i32** %9, align 8
  %86 = load i8*, i8** %18, align 8
  %87 = load i32, i32* %19, align 4
  %88 = call i32 @add_next_index_stringl(i32* %85, i8* %86, i32 %87)
  br label %110

89:                                               ; preds = %79
  %90 = load i32*, i32** %9, align 8
  %91 = call i64 @Z_TYPE_P(i32* %90)
  %92 = load i64, i64* @IS_STRING, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %89
  %95 = call i32 @array_init(i32* %11)
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @Z_STR_P(i32* %96)
  %98 = call i32 @zend_string_copy(i32 %97)
  %99 = call i32 @add_next_index_str(i32* %11, i32 %98)
  %100 = load i8*, i8** %18, align 8
  %101 = load i32, i32* %19, align 4
  %102 = call i32 @add_next_index_stringl(i32* %11, i8* %100, i32 %101)
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @Z_ARRVAL(i32 %103)
  %105 = load i8*, i8** %13, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = call i32 @strlen(i8* %106)
  %108 = call i32 @zend_hash_str_update(i32 %104, i8* %105, i32 %107, i32* %11)
  br label %109

109:                                              ; preds = %94, %89
  br label %110

110:                                              ; preds = %109, %84
  br label %116

111:                                              ; preds = %71
  %112 = load i8*, i8** %13, align 8
  %113 = load i8*, i8** %18, align 8
  %114 = load i32, i32* %19, align 4
  %115 = call i32 @add_assoc_stringl(i32* %10, i8* %112, i8* %113, i32 %114)
  br label %116

116:                                              ; preds = %111, %110
  br label %119

117:                                              ; preds = %68
  %118 = call i32 (...) @php_openssl_store_errors()
  br label %119

119:                                              ; preds = %117, %116
  %120 = load i8*, i8** %20, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i8*, i8** %20, align 8
  %124 = call i32 @OPENSSL_free(i8* %123)
  br label %125

125:                                              ; preds = %122, %119
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %12, align 4
  br label %29

129:                                              ; preds = %29
  %130 = load i8*, i8** %6, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load i32*, i32** %5, align 8
  %134 = call i32 @Z_ARRVAL_P(i32* %133)
  %135 = load i8*, i8** %6, align 8
  %136 = load i8*, i8** %6, align 8
  %137 = call i32 @strlen(i8* %136)
  %138 = call i32 @zend_hash_str_update(i32 %134, i8* %135, i32 %137, i32* %10)
  br label %139

139:                                              ; preds = %132, %129
  ret void
}

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32 @ZVAL_COPY_VALUE(i32*, i32*) #1

declare dso_local i32 @X509_NAME_entry_count(i32*) #1

declare dso_local i32* @X509_NAME_get_entry(i32*, i32) #1

declare dso_local i32* @X509_NAME_ENTRY_get_object(i32*) #1

declare dso_local i32 @OBJ_obj2nid(i32*) #1

declare dso_local i64 @OBJ_nid2sn(i32) #1

declare dso_local i64 @OBJ_nid2ln(i32) #1

declare dso_local i32* @X509_NAME_ENTRY_get_data(i32*) #1

declare dso_local i64 @ASN1_STRING_type(i32*) #1

declare dso_local i32 @ASN1_STRING_to_UTF8(i8**, i32*) #1

declare dso_local i8* @ASN1_STRING_get0_data(i32*) #1

declare dso_local i32 @ASN1_STRING_length(i32*) #1

declare dso_local i32* @zend_hash_str_find(i32, i8*, i32) #1

declare dso_local i32 @Z_ARRVAL(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @add_next_index_stringl(i32*, i8*, i32) #1

declare dso_local i32 @add_next_index_str(i32*, i32) #1

declare dso_local i32 @zend_string_copy(i32) #1

declare dso_local i32 @Z_STR_P(i32*) #1

declare dso_local i32 @zend_hash_str_update(i32, i8*, i32, i32*) #1

declare dso_local i32 @add_assoc_stringl(i32*, i8*, i8*, i32) #1

declare dso_local i32 @php_openssl_store_errors(...) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @Z_ARRVAL_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
