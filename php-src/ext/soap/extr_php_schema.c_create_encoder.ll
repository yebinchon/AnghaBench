; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_create_encoder.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_schema.c_create_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i8*, i8* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32, i32 }

@delete_encoder = common dso_local global i32 0, align 4
@sdl_guess_convert_xml = common dso_local global i32 0, align 4
@sdl_guess_convert_zval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.TYPE_16__*, i32, i32*, i32*)* @create_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @create_encoder(%struct.TYPE_16__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = bitcast %struct.TYPE_15__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = call i8* @emalloc(i32 4)
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @delete_encoder, align 4
  %26 = call i32 @zend_hash_init(i32* %24, i32 0, i32* null, i32 %25, i32 0)
  br label %27

27:                                               ; preds = %17, %4
  %28 = load i32*, i32** %7, align 8
  %29 = bitcast i32* %28 to i8*
  %30 = call i32 @smart_str_appends(%struct.TYPE_15__* %9, i8* %29)
  %31 = call i32 @smart_str_appendc(%struct.TYPE_15__* %9, i8 signext 58)
  %32 = load i32*, i32** %8, align 8
  %33 = bitcast i32* %32 to i8*
  %34 = call i32 @smart_str_appends(%struct.TYPE_15__* %9, i8* %33)
  %35 = call i32 @smart_str_0(%struct.TYPE_15__* %9)
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.TYPE_17__* @zend_hash_find_ptr(i32* %38, i32 %40)
  store %struct.TYPE_17__* %41, %struct.TYPE_17__** %11, align 8
  %42 = icmp ne %struct.TYPE_17__* %41, null
  br i1 %42, label %43, label %69

43:                                               ; preds = %27
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_17__* %44, %struct.TYPE_17__** %10, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @efree(i8* %54)
  br label %56

56:                                               ; preds = %50, %43
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @efree(i8* %66)
  br label %68

68:                                               ; preds = %62, %56
  br label %72

69:                                               ; preds = %27
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %11, align 8
  %70 = call i8* @emalloc(i32 4)
  %71 = bitcast i8* %70 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %71, %struct.TYPE_17__** %10, align 8
  br label %72

72:                                               ; preds = %69, %68
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %74 = call i32 @memset(%struct.TYPE_17__* %73, i32 0, i32 4)
  %75 = load i32*, i32** %7, align 8
  %76 = bitcast i32* %75 to i8*
  %77 = call i8* @estrdup(i8* %76)
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 2
  store i8* %77, i8** %80, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = bitcast i32* %81 to i8*
  %83 = call i8* @estrdup(i8* %82)
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  store i8* %83, i8** %86, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load i32, i32* @sdl_guess_convert_xml, align 4
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @sdl_guess_convert_zval, align 4
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %98 = icmp eq %struct.TYPE_17__* %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %72
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %106 = call i32 @zend_hash_update_ptr(i32* %102, i32 %104, %struct.TYPE_17__* %105)
  br label %107

107:                                              ; preds = %99, %72
  %108 = call i32 @smart_str_free(%struct.TYPE_15__* %9)
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  ret %struct.TYPE_17__* %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @emalloc(i32) #2

declare dso_local i32 @zend_hash_init(i32*, i32, i32*, i32, i32) #2

declare dso_local i32 @smart_str_appends(%struct.TYPE_15__*, i8*) #2

declare dso_local i32 @smart_str_appendc(%struct.TYPE_15__*, i8 signext) #2

declare dso_local i32 @smart_str_0(%struct.TYPE_15__*) #2

declare dso_local %struct.TYPE_17__* @zend_hash_find_ptr(i32*, i32) #2

declare dso_local i32 @efree(i8*) #2

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #2

declare dso_local i8* @estrdup(i8*) #2

declare dso_local i32 @zend_hash_update_ptr(i32*, i32, %struct.TYPE_17__*) #2

declare dso_local i32 @smart_str_free(%struct.TYPE_15__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
