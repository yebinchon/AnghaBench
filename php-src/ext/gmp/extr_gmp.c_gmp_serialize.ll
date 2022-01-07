; ModuleID = '/home/carl/AnghaBench/php-src/ext/gmp/extr_gmp.c_gmp_serialize.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gmp/extr_gmp.c_gmp_serialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i64*, i32*)* @gmp_serialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmp_serialize(i32* %0, i8** %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @GET_GMP_FROM_ZVAL(i32* %13)
  store i32 %14, i32* %9, align 4
  %15 = bitcast %struct.TYPE_3__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = load i32, i32* %12, align 4
  %17 = call i32 @PHP_VAR_SERIALIZE_INIT(i32 %16)
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @gmp_strval(i32* %11, i32 %18, i32 10)
  %20 = call i32 @php_var_serialize(%struct.TYPE_3__* %10, i32* %11, i32* %12)
  %21 = call i32 @zval_ptr_dtor_str(i32* %11)
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @Z_OBJ_P(i32* %22)
  %24 = call i32 @zend_std_get_properties(i32 %23)
  %25 = call i32 @ZVAL_ARR(i32* %11, i32 %24)
  %26 = call i32 @php_var_serialize(%struct.TYPE_3__* %10, i32* %11, i32* %12)
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @PHP_VAR_SERIALIZE_DESTROY(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ZSTR_VAL(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @ZSTR_LEN(i32 %33)
  %35 = call i64 @estrndup(i32 %31, i64 %34)
  %36 = inttoptr i64 %35 to i8*
  %37 = load i8**, i8*** %6, align 8
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @ZSTR_LEN(i32 %39)
  %41 = load i64*, i64** %7, align 8
  store i64 %40, i64* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @zend_string_release_ex(i32 %43, i32 0)
  %45 = load i32, i32* @SUCCESS, align 4
  ret i32 %45
}

declare dso_local i32 @GET_GMP_FROM_ZVAL(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @PHP_VAR_SERIALIZE_INIT(i32) #1

declare dso_local i32 @gmp_strval(i32*, i32, i32) #1

declare dso_local i32 @php_var_serialize(%struct.TYPE_3__*, i32*, i32*) #1

declare dso_local i32 @zval_ptr_dtor_str(i32*) #1

declare dso_local i32 @ZVAL_ARR(i32*, i32) #1

declare dso_local i32 @zend_std_get_properties(i32) #1

declare dso_local i32 @Z_OBJ_P(i32*) #1

declare dso_local i32 @PHP_VAR_SERIALIZE_DESTROY(i32) #1

declare dso_local i64 @estrndup(i32, i64) #1

declare dso_local i32 @ZSTR_VAL(i32) #1

declare dso_local i64 @ZSTR_LEN(i32) #1

declare dso_local i32 @zend_string_release_ex(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
