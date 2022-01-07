; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_sdl.c_sdl_deserialize_parameters.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_sdl.c_sdl_deserialize_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@delete_parameter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8**)* @sdl_deserialize_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @sdl_deserialize_parameters(i32* %0, i32* %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i8**, i8*** %7, align 8
  %14 = call i32 @WSDL_CACHE_GET_INT(i32 %12, i8** %13)
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %68

18:                                               ; preds = %3
  %19 = call i8* @emalloc(i32 4)
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @delete_parameter, align 4
  %24 = call i32 @zend_hash_init(i32* %21, i32 %22, i32* null, i32 %23, i32 0)
  br label %25

25:                                               ; preds = %28, %18
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %66

28:                                               ; preds = %25
  %29 = call i8* @emalloc(i32 4)
  %30 = bitcast i8* %29 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %11, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %33 = load i8**, i8*** %7, align 8
  %34 = call i32 @sdl_deserialize_key(i32* %31, %struct.TYPE_3__* %32, i8** %33)
  %35 = load i8**, i8*** %7, align 8
  %36 = call i32 @sdl_deserialize_string(i8** %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8**, i8*** %7, align 8
  %43 = call i32 @WSDL_CACHE_GET_INT(i32 %41, i8** %42)
  %44 = load i32, i32* %9, align 4
  %45 = load i8**, i8*** %7, align 8
  %46 = call i32 @WSDL_CACHE_GET_INT(i32 %44, i8** %45)
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i8**, i8*** %7, align 8
  %56 = call i32 @WSDL_CACHE_GET_INT(i32 %54, i8** %55)
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %8, align 4
  br label %25

66:                                               ; preds = %25
  %67 = load i32*, i32** %10, align 8
  store i32* %67, i32** %4, align 8
  br label %68

68:                                               ; preds = %66, %17
  %69 = load i32*, i32** %4, align 8
  ret i32* %69
}

declare dso_local i32 @WSDL_CACHE_GET_INT(i32, i8**) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @zend_hash_init(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @sdl_deserialize_key(i32*, %struct.TYPE_3__*, i8**) #1

declare dso_local i32 @sdl_deserialize_string(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
