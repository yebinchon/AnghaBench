; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_load_index.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_load_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.stat, i32, %struct.TYPE_6__, i32* }
%struct.stat = type { i32 }
%struct.TYPE_6__ = type { i32 }

@BSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@bio_err = common dso_local global i32 0, align 4
@ERR_LIB_SYS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"calling fstat(%s)\00", align 1
@DB_NUMBER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"%s.attr\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"new DB\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"unique_subject\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @load_index(i8* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.stat, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %8, align 8
  %14 = load i32, i32* @BSIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i32* @BIO_new_file(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @bio_err, align 4
  %24 = call i32 @ERR_print_errors(i32 %23)
  br label %90

25:                                               ; preds = %2
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @BIO_get_fp(i32* %26, i32** %11)
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @fileno(i32* %28)
  %30 = call i32 @fstat(i32 %29, %struct.stat* %12)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load i32, i32* @ERR_LIB_SYS, align 4
  %34 = load i32, i32* @errno, align 4
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @ERR_raise_data(i32 %33, i32 %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @bio_err, align 4
  %38 = call i32 @ERR_print_errors(i32 %37)
  br label %90

39:                                               ; preds = %25
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* @DB_NUMBER, align 4
  %42 = call i32* @TXT_DB_read(i32* %40, i32 %41)
  store i32* %42, i32** %6, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %90

45:                                               ; preds = %39
  %46 = trunc i64 %15 to i32
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @BIO_snprintf(i8* %17, i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  %49 = call i32* @app_load_config_quiet(i8* %17)
  store i32* %49, i32** %8, align 8
  %50 = call %struct.TYPE_7__* @app_malloc(i32 24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  store i32* %51, i32** %53, align 8
  store i32* null, i32** %6, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = icmp ne %struct.TYPE_6__* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %45
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = bitcast %struct.TYPE_6__* %58 to i8*
  %61 = bitcast %struct.TYPE_6__* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 4 %61, i64 4, i1 false)
  br label %66

62:                                               ; preds = %45
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %62, %56
  %67 = load i32*, i32** %8, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load i32*, i32** %8, align 8
  %71 = call i8* @NCONF_get_string(i32* %70, i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i8* %71, i8** %13, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i8*, i8** %13, align 8
  %76 = call i32 @parse_yesno(i8* %75, i32 1)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  br label %80

80:                                               ; preds = %74, %69
  br label %81

81:                                               ; preds = %80, %66
  %82 = load i8*, i8** %3, align 8
  %83 = call i32 @OPENSSL_strdup(i8* %82)
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = bitcast %struct.stat* %87 to i8*
  %89 = bitcast %struct.stat* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 4 %89, i64 4, i1 false)
  br label %90

90:                                               ; preds = %81, %44, %32, %22
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @NCONF_free(i32* %91)
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @TXT_DB_free(i32* %93)
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @BIO_free_all(i32* %95)
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %98 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %98)
  ret %struct.TYPE_7__* %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @BIO_new_file(i8*, i8*) #2

declare dso_local i32 @ERR_print_errors(i32) #2

declare dso_local i32 @BIO_get_fp(i32*, i32**) #2

declare dso_local i32 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @fileno(i32*) #2

declare dso_local i32 @ERR_raise_data(i32, i32, i8*, i8*) #2

declare dso_local i32* @TXT_DB_read(i32*, i32) #2

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32* @app_load_config_quiet(i8*) #2

declare dso_local %struct.TYPE_7__* @app_malloc(i32, i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i8* @NCONF_get_string(i32*, i32*, i8*) #2

declare dso_local i32 @parse_yesno(i8*, i32) #2

declare dso_local i32 @OPENSSL_strdup(i8*) #2

declare dso_local i32 @NCONF_free(i32*) #2

declare dso_local i32 @TXT_DB_free(i32*) #2

declare dso_local i32 @BIO_free_all(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
