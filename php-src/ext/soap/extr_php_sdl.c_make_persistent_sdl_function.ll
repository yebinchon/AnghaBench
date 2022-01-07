; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_sdl.c_make_persistent_sdl_function.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_sdl.c_make_persistent_sdl_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i8*, i8*, %struct.TYPE_10__*, i32, i32, i8*, %struct.TYPE_11__*, i8*, i8*, i8* }
%struct.TYPE_11__ = type { i64 }

@BINDING_SOAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_10__*, i32*)* @make_persistent_sdl_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @make_persistent_sdl_function(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  %8 = call %struct.TYPE_10__* @malloc(i32 4)
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %5, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %10 = call i32 @memset(%struct.TYPE_10__* %9, i32 0, i32 4)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = bitcast %struct.TYPE_10__* %11 to i8*
  %14 = bitcast %struct.TYPE_10__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 80, i1 false)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 10
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 10
  %22 = load i8*, i8** %21, align 8
  %23 = call i8* @strdup(i8* %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 10
  store i8* %23, i8** %25, align 8
  br label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 9
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 9
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @strdup(i8* %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 9
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %31, %26
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 8
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 8
  %46 = load i8*, i8** %45, align 8
  %47 = call i8* @strdup(i8* %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 8
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %43, %38
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 7
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = icmp ne %struct.TYPE_11__* %53, null
  br i1 %54, label %55, label %154

55:                                               ; preds = %50
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 7
  %59 = bitcast %struct.TYPE_11__** %58 to i8*
  %60 = call %struct.TYPE_11__* @zend_hash_str_find_ptr(i32* %56, i8* %59, i32 8)
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %6, align 8
  %61 = icmp eq %struct.TYPE_11__* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = call i32 @assert(i32 0)
  br label %64

64:                                               ; preds = %62, %55
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 7
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %67, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 7
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @BINDING_SOAP, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %113

75:                                               ; preds = %64
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = icmp ne %struct.TYPE_10__* %78, null
  br i1 %79, label %80, label %113

80:                                               ; preds = %75
  %81 = call %struct.TYPE_10__* @malloc(i32 4)
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %7, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %83 = call i32 @memset(%struct.TYPE_10__* %82, i32 0, i32 4)
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = bitcast %struct.TYPE_10__* %84 to i8*
  %89 = bitcast %struct.TYPE_10__* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 %89, i64 80, i1 false)
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 6
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %80
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 6
  %97 = load i8*, i8** %96, align 8
  %98 = call i8* @strdup(i8* %97)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 6
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %94, %80
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 5
  %104 = load i32*, i32** %4, align 8
  %105 = call i32 @make_persistent_sdl_soap_body(i32* %103, i32* %104)
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 4
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @make_persistent_sdl_soap_body(i32* %107, i32* %108)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 3
  store %struct.TYPE_10__* %110, %struct.TYPE_10__** %112, align 8
  br label %113

113:                                              ; preds = %101, %75, %64
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %126

118:                                              ; preds = %113
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = load i32*, i32** %4, align 8
  %123 = call i8* @make_persistent_sdl_parameters(i8* %121, i32* %122)
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  store i8* %123, i8** %125, align 8
  br label %126

126:                                              ; preds = %118, %113
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = load i32*, i32** %4, align 8
  %136 = call i8* @make_persistent_sdl_parameters(i8* %134, i32* %135)
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  br label %139

139:                                              ; preds = %131, %126
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %139
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i32*, i32** %4, align 8
  %150 = call i64 @make_persistent_sdl_function_faults(%struct.TYPE_10__* %145, i64 %148, i32* %149)
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  br label %153

153:                                              ; preds = %144, %139
  br label %154

154:                                              ; preds = %153, %50
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  ret %struct.TYPE_10__* %155
}

declare dso_local %struct.TYPE_10__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @strdup(i8*) #1

declare dso_local %struct.TYPE_11__* @zend_hash_str_find_ptr(i32*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @make_persistent_sdl_soap_body(i32*, i32*) #1

declare dso_local i8* @make_persistent_sdl_parameters(i8*, i32*) #1

declare dso_local i64 @make_persistent_sdl_function_faults(%struct.TYPE_10__*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
