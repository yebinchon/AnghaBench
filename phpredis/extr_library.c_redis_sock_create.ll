; ModuleID = '/home/carl/AnghaBench/phpredis/extr_library.c_redis_sock_create.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_library.c_redis_sock_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, double, double, i64, i64, i64, i32, i32*, i32*, i32*, i32*, i32, i64, i32, i32, i32*, i64, i64, i32, i32*, i8* }

@REDIS_SOCK_STATUS_DISCONNECTED = common dso_local global i32 0, align 4
@REDIS_SERIALIZER_NONE = common dso_local global i32 0, align 4
@REDIS_COMPRESSION_NONE = common dso_local global i32 0, align 4
@ATOMIC = common dso_local global i32 0, align 4
@REDIS_SCAN_NORETRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @redis_sock_create(i8* %0, i32 %1, i32 %2, double %3, double %4, i32 %5, i8* %6, i64 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store double %3, double* %12, align 8
  store double %4, double* %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i64 %7, i64* %16, align 8
  %18 = call %struct.TYPE_4__* @ecalloc(i32 1, i32 168)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %17, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i8* @zend_string_init(i8* %19, i32 %20, i32 0)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 22
  store i8* %21, i8** %23, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 21
  store i32* null, i32** %25, align 8
  %26 = load i32, i32* @REDIS_SOCK_STATUS_DISCONNECTED, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 20
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 19
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 18
  store i64 0, i64* %32, align 8
  %33 = load i64, i64* %16, align 8
  %34 = mul nsw i64 %33, 1000
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 17
  store i32* null, i32** %41, align 8
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %8
  %45 = load i8*, i8** %15, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i8*, i8** %15, align 8
  %49 = load i8*, i8** %15, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = call i8* @zend_string_init(i8* %48, i32 %50, i32 0)
  %52 = bitcast i8* %51 to i32*
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 17
  store i32* %52, i32** %54, align 8
  br label %55

55:                                               ; preds = %47, %44, %8
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load double, double* %12, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  store double %59, double* %61, align 8
  %62 = load double, double* %13, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 4
  store double %62, double* %64, align 8
  %65 = load i32, i32* @REDIS_SERIALIZER_NONE, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 16
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @REDIS_COMPRESSION_NONE, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 15
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 14
  store i64 0, i64* %72, align 8
  %73 = load i32, i32* @ATOMIC, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 13
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 12
  store i32* null, i32** %77, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 11
  store i32* null, i32** %79, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 10
  store i32* null, i32** %81, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 9
  store i32* null, i32** %83, align 8
  %84 = load i32, i32* @REDIS_SCAN_NORETRY, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 8
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 7
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 6
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 5
  store i64 0, i64* %92, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  ret %struct.TYPE_4__* %93
}

declare dso_local %struct.TYPE_4__* @ecalloc(i32, i32) #1

declare dso_local i8* @zend_string_init(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
