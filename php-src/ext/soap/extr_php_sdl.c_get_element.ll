; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_sdl.c_get_element.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_sdl.c_get_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*, %struct.TYPE_9__*, i8*)* @get_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_element(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32* null, i32** %7, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %112

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @parse_namespace(i8* %21, i8** %10, i8** %9)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @BAD_CAST(i8* %27)
  %29 = call %struct.TYPE_8__* @xmlSearchNs(i32 %25, %struct.TYPE_9__* %26, i32 %28)
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %8, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = icmp ne %struct.TYPE_8__* %30, null
  br i1 %31, label %32, label %91

32:                                               ; preds = %20
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @xmlStrlen(i8* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @strlen(i8* %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %39, %40
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %43, 1
  %45 = call i8* @emalloc(i32 %44)
  store i8* %45, i8** %15, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @memcpy(i8* %46, i8* %49, i32 %50)
  %52 = load i8*, i8** %15, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8 58, i8* %55, align 1
  %56 = load i8*, i8** %15, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @memcpy(i8* %60, i8* %61, i32 %62)
  %64 = load i8*, i8** %15, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  store i8 0, i8* %67, align 1
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i8*, i8** %15, align 8
  %72 = load i32, i32* %14, align 4
  %73 = call i32* @zend_hash_str_find_ptr(i64 %70, i8* %71, i32 %72)
  store i32* %73, i32** %11, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %32
  %76 = load i32*, i32** %11, align 8
  store i32* %76, i32** %7, align 8
  br label %88

77:                                               ; preds = %32
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* %13, align 4
  %83 = call i32* @zend_hash_str_find_ptr(i64 %80, i8* %81, i32 %82)
  store i32* %83, i32** %11, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32*, i32** %11, align 8
  store i32* %86, i32** %7, align 8
  br label %87

87:                                               ; preds = %85, %77
  br label %88

88:                                               ; preds = %87, %75
  %89 = load i8*, i8** %15, align 8
  %90 = call i32 @efree(i8* %89)
  br label %103

91:                                               ; preds = %20
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @xmlStrlen(i8* %96)
  %98 = call i32* @zend_hash_str_find_ptr(i64 %94, i8* %95, i32 %97)
  store i32* %98, i32** %11, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = load i32*, i32** %11, align 8
  store i32* %101, i32** %7, align 8
  br label %102

102:                                              ; preds = %100, %91
  br label %103

103:                                              ; preds = %102, %88
  %104 = load i8*, i8** %10, align 8
  %105 = call i32 @efree(i8* %104)
  %106 = load i8*, i8** %9, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i8*, i8** %9, align 8
  %110 = call i32 @efree(i8* %109)
  br label %111

111:                                              ; preds = %108, %103
  br label %112

112:                                              ; preds = %111, %3
  %113 = load i32*, i32** %7, align 8
  ret i32* %113
}

declare dso_local i32 @parse_namespace(i8*, i8**, i8**) #1

declare dso_local %struct.TYPE_8__* @xmlSearchNs(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @BAD_CAST(i8*) #1

declare dso_local i32 @xmlStrlen(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32* @zend_hash_str_find_ptr(i64, i8*, i32) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
