; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_sdl.c_sdl_deserialize_attribute.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_sdl.c_sdl_deserialize_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8* }

@sdlForm = common dso_local global i32 0, align 4
@sdlUse = common dso_local global i32 0, align 4
@delete_extra_attribute = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i8**)* @sdl_deserialize_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdl_deserialize_attribute(%struct.TYPE_6__* %0, i32* %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8** %2, i8*** %6, align 8
  %9 = load i8**, i8*** %6, align 8
  %10 = call i8* @sdl_deserialize_string(i8** %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 8
  store i8* %10, i8** %12, align 8
  %13 = load i8**, i8*** %6, align 8
  %14 = call i8* @sdl_deserialize_string(i8** %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 7
  store i8* %14, i8** %16, align 8
  %17 = load i8**, i8*** %6, align 8
  %18 = call i8* @sdl_deserialize_string(i8** %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 6
  store i8* %18, i8** %20, align 8
  %21 = load i8**, i8*** %6, align 8
  %22 = call i8* @sdl_deserialize_string(i8** %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 5
  store i8* %22, i8** %24, align 8
  %25 = load i8**, i8*** %6, align 8
  %26 = call i8* @sdl_deserialize_string(i8** %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @sdlForm, align 4
  %33 = load i8**, i8*** %6, align 8
  %34 = call i32 @WSDL_CACHE_GET_1(i32 %31, i32 %32, i8** %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @sdlUse, align 4
  %39 = load i8**, i8*** %6, align 8
  %40 = call i32 @WSDL_CACHE_GET_1(i32 %37, i32 %38, i8** %39)
  %41 = load i32, i32* %7, align 4
  %42 = load i8**, i8*** %6, align 8
  %43 = call i32 @WSDL_CACHE_GET_INT(i32 %41, i8** %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i8**, i8*** %6, align 8
  %53 = call i32 @WSDL_CACHE_GET_INT(i32 %51, i8** %52)
  %54 = load i32, i32* %7, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %89

56:                                               ; preds = %3
  %57 = call i8* @emalloc(i32 4)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @delete_extra_attribute, align 4
  %65 = call i32 @zend_hash_init(i8* %62, i32 %63, i32* null, i32 %64, i32 0)
  br label %66

66:                                               ; preds = %69, %56
  %67 = load i32, i32* %7, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %66
  %70 = call i8* @emalloc(i32 4)
  %71 = bitcast i8* %70 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %71, %struct.TYPE_5__** %8, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = load i8**, i8*** %6, align 8
  %77 = call i32 @sdl_deserialize_key(i8* %74, %struct.TYPE_5__* %75, i8** %76)
  %78 = load i8**, i8*** %6, align 8
  %79 = call i8* @sdl_deserialize_string(i8** %78)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load i8**, i8*** %6, align 8
  %83 = call i8* @sdl_deserialize_string(i8** %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %7, align 4
  br label %66

88:                                               ; preds = %66
  br label %89

89:                                               ; preds = %88, %3
  ret void
}

declare dso_local i8* @sdl_deserialize_string(i8**) #1

declare dso_local i32 @WSDL_CACHE_GET_1(i32, i32, i8**) #1

declare dso_local i32 @WSDL_CACHE_GET_INT(i32, i8**) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @zend_hash_init(i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @sdl_deserialize_key(i8*, %struct.TYPE_5__*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
