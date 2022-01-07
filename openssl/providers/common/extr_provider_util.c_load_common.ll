; ModuleID = '/home/carl/AnghaBench/openssl/providers/common/extr_provider_util.c_load_common.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/common/extr_provider_util.c_load_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8* }

@OSSL_ALG_PARAM_PROPERTIES = common dso_local global i8* null, align 8
@OSSL_PARAM_UTF8_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8**, i32**)* @load_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_common(%struct.TYPE_5__* %0, i8** %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32** %2, i32*** %7, align 8
  %9 = load i8**, i8*** %6, align 8
  store i8* null, i8** %9, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = load i8*, i8** @OSSL_ALG_PARAM_PROPERTIES, align 8
  %12 = call %struct.TYPE_5__* @OSSL_PARAM_locate_const(%struct.TYPE_5__* %10, i8* %11)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %8, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @OSSL_PARAM_UTF8_STRING, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %55

22:                                               ; preds = %15
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load i8**, i8*** %6, align 8
  store i8* %25, i8** %26, align 8
  br label %27

27:                                               ; preds = %22, %3
  %28 = load i32**, i32*** %7, align 8
  store i32* null, i32** %28, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = call %struct.TYPE_5__* @OSSL_PARAM_locate_const(%struct.TYPE_5__* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %8, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %54

33:                                               ; preds = %27
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @OSSL_PARAM_UTF8_STRING, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %55

40:                                               ; preds = %33
  %41 = load i32**, i32*** %7, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @ENGINE_finish(i32* %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32* @ENGINE_by_id(i8* %46)
  %48 = load i32**, i32*** %7, align 8
  store i32* %47, i32** %48, align 8
  %49 = load i32**, i32*** %7, align 8
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %55

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53, %27
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %52, %39, %21
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_5__* @OSSL_PARAM_locate_const(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @ENGINE_finish(i32*) #1

declare dso_local i32* @ENGINE_by_id(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
