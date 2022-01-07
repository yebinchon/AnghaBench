; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_sdl.c_sdl_deserialize_model.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_sdl.c_sdl_deserialize_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32, i8*, i8* }

@sdlContentKind = common dso_local global i32 0, align 4
@delete_model = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i8**, i8**, i8**)* @sdl_deserialize_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @sdl_deserialize_model(i8** %0, i8** %1, i8** %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %10 = call i8* @emalloc(i32 4)
  %11 = bitcast i8* %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %8, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @sdlContentKind, align 4
  %16 = load i8**, i8*** %6, align 8
  %17 = call i32 @WSDL_CACHE_GET_1(i32 %14, i32 %15, i8** %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i8**, i8*** %6, align 8
  %22 = call i32 @WSDL_CACHE_GET_INT(i32 %20, i8** %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i8**, i8*** %6, align 8
  %27 = call i32 @WSDL_CACHE_GET_INT(i32 %25, i8** %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %93 [
    i32 131, label %31
    i32 128, label %43
    i32 133, label %43
    i32 132, label %43
    i32 129, label %75
    i32 130, label %81
  ]

31:                                               ; preds = %3
  %32 = load i32, i32* %7, align 4
  %33 = load i8**, i8*** %6, align 8
  %34 = call i32 @WSDL_CACHE_GET_INT(i32 %32, i8** %33)
  %35 = load i8**, i8*** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  store i8* %39, i8** %42, align 8
  br label %94

43:                                               ; preds = %3, %3, %3
  %44 = load i32, i32* %7, align 4
  %45 = load i8**, i8*** %6, align 8
  %46 = call i32 @WSDL_CACHE_GET_INT(i32 %44, i8** %45)
  %47 = call i8* @emalloc(i32 4)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store i8* %47, i8** %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @delete_model, align 4
  %57 = call i32 @zend_hash_init(i8* %54, i32 %55, i32* null, i32 %56, i32 0)
  br label %58

58:                                               ; preds = %61, %43
  %59 = load i32, i32* %7, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %58
  %62 = load i8**, i8*** %4, align 8
  %63 = load i8**, i8*** %5, align 8
  %64 = load i8**, i8*** %6, align 8
  %65 = call %struct.TYPE_6__* @sdl_deserialize_model(i8** %62, i8** %63, i8** %64)
  store %struct.TYPE_6__* %65, %struct.TYPE_6__** %9, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %71 = call i32 @zend_hash_next_index_insert_ptr(i8* %69, %struct.TYPE_6__* %70)
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %7, align 4
  br label %58

74:                                               ; preds = %58
  br label %94

75:                                               ; preds = %3
  %76 = load i8**, i8*** %6, align 8
  %77 = call i32 @sdl_deserialize_string(i8** %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 8
  br label %94

81:                                               ; preds = %3
  %82 = load i32, i32* %7, align 4
  %83 = load i8**, i8*** %6, align 8
  %84 = call i32 @WSDL_CACHE_GET_INT(i32 %82, i8** %83)
  %85 = load i8**, i8*** %4, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i8* %89, i8** %92, align 8
  br label %94

93:                                               ; preds = %3
  br label %94

94:                                               ; preds = %93, %81, %75, %74, %31
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  ret %struct.TYPE_6__* %95
}

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @WSDL_CACHE_GET_1(i32, i32, i8**) #1

declare dso_local i32 @WSDL_CACHE_GET_INT(i32, i8**) #1

declare dso_local i32 @zend_hash_init(i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @zend_hash_next_index_insert_ptr(i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @sdl_deserialize_string(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
