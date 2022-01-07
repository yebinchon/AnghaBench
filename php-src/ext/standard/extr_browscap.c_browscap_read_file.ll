; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_browscap.c_browscap_read_file.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_browscap.c_browscap_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i8*, i64, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32*, i32*, %struct.TYPE_11__*, i32 }

@FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@E_CORE_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Cannot open '%s' for reading\00", align 1
@browscap_entry_dtor_persistent = common dso_local global i32 0, align 4
@browscap_entry_dtor = common dso_local global i32 0, align 4
@str_interned_dtor = common dso_local global i32 0, align 4
@ZEND_INI_SCANNER_RAW = common dso_local global i32 0, align 4
@php_browscap_parser_cb = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_11__*, i32)* @browscap_read_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @browscap_read_file(i8* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__, align 4
  %9 = alloca %struct.TYPE_12__, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = bitcast %struct.TYPE_12__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 40, i1 false)
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13, %3
  %20 = load i32, i32* @FAILURE, align 4
  store i32 %20, i32* %4, align 4
  br label %90

21:                                               ; preds = %13
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @VCWD_FOPEN(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @zend_stream_init_fp(%struct.TYPE_10__* %8, i32 %23, i8* %24)
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @E_CORE_WARNING, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @zend_error(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* @FAILURE, align 4
  store i32 %34, i32* %4, align 4
  br label %90

35:                                               ; preds = %21
  %36 = load i32, i32* %7, align 4
  %37 = call i8* @pemalloc(i32 1, i32 %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 3
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* @browscap_entry_dtor_persistent, align 4
  br label %49

47:                                               ; preds = %35
  %48 = load i32, i32* @browscap_entry_dtor, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @zend_hash_init_ex(i8* %42, i32 0, i32* null, i32 %50, i32 %51, i32 0)
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  store i32 16384, i32* %54, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = mul i64 4, %60
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* %7, align 4
  %64 = call i8* @pemalloc(i32 %62, i32 %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  store %struct.TYPE_11__* %67, %struct.TYPE_11__** %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  store i32* null, i32** %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  store i32* null, i32** %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %72 = load i32, i32* @str_interned_dtor, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @zend_hash_init(i32* %71, i32 8, i32* null, i32 %72, i32 %73)
  %75 = load i32, i32* @ZEND_INI_SCANNER_RAW, align 4
  %76 = load i64, i64* @php_browscap_parser_cb, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @zend_parse_ini_file(%struct.TYPE_10__* %8, i32 1, i32 %75, i32 %77, %struct.TYPE_12__* %9)
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %49
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @zend_string_release(i32* %84)
  br label %86

86:                                               ; preds = %82, %49
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %88 = call i32 @zend_hash_destroy(i32* %87)
  %89 = load i32, i32* @SUCCESS, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %86, %30, %19
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @zend_stream_init_fp(%struct.TYPE_10__*, i32, i8*) #2

declare dso_local i32 @VCWD_FOPEN(i8*, i8*) #2

declare dso_local i32 @zend_error(i32, i8*, i8*) #2

declare dso_local i8* @pemalloc(i32, i32) #2

declare dso_local i32 @zend_hash_init_ex(i8*, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @zend_hash_init(i32*, i32, i32*, i32, i32) #2

declare dso_local i32 @zend_parse_ini_file(%struct.TYPE_10__*, i32, i32, i32, %struct.TYPE_12__*) #2

declare dso_local i32 @zend_string_release(i32*) #2

declare dso_local i32 @zend_hash_destroy(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
