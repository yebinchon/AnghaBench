; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_util.c_phar_get_efp.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_util.c_phar_get_efp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32*, i32, i32, i64 }

@PHAR_FP = common dso_local global i64 0, align 8
@PHAR_UFP = common dso_local global i64 0, align 8
@PHAR_MOD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@STREAM_MUST_SEEK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @phar_get_efp(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = call %struct.TYPE_8__* @phar_get_link_source(%struct.TYPE_8__* %15)
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %6, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = icmp ne %struct.TYPE_8__* %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = call i32* @phar_get_efp(%struct.TYPE_8__* %24, i32 1)
  store i32* %25, i32** %3, align 8
  br label %79

26:                                               ; preds = %19, %14
  br label %27

27:                                               ; preds = %26, %9, %2
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = call i64 @phar_get_fp_type(%struct.TYPE_8__* %28)
  %30 = load i64, i64* @PHAR_FP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = call i32* @phar_get_entrypfp(%struct.TYPE_8__* %33)
  %35 = icmp ne i32* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @phar_open_archive_fp(i32 %39)
  br label %41

41:                                               ; preds = %36, %32
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = call i32* @phar_get_entrypfp(%struct.TYPE_8__* %42)
  store i32* %43, i32** %3, align 8
  br label %79

44:                                               ; preds = %27
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = call i64 @phar_get_fp_type(%struct.TYPE_8__* %45)
  %47 = load i64, i64* @PHAR_UFP, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = call i32* @phar_get_entrypufp(%struct.TYPE_8__* %50)
  store i32* %51, i32** %3, align 8
  br label %79

52:                                               ; preds = %44
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PHAR_MOD, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %3, align 8
  br label %79

62:                                               ; preds = %52
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @STREAM_MUST_SEEK, align 4
  %72 = call i32* @php_stream_open_wrapper(i32 %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %71, i32* null)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i32* %72, i32** %74, align 8
  br label %75

75:                                               ; preds = %67, %62
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %3, align 8
  br label %79

79:                                               ; preds = %75, %58, %49, %41, %23
  %80 = load i32*, i32** %3, align 8
  ret i32* %80
}

declare dso_local %struct.TYPE_8__* @phar_get_link_source(%struct.TYPE_8__*) #1

declare dso_local i64 @phar_get_fp_type(%struct.TYPE_8__*) #1

declare dso_local i32* @phar_get_entrypfp(%struct.TYPE_8__*) #1

declare dso_local i32 @phar_open_archive_fp(i32) #1

declare dso_local i32* @phar_get_entrypufp(%struct.TYPE_8__*) #1

declare dso_local i32* @php_stream_open_wrapper(i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
