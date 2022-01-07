; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_streamsfuncs.c_user_space_stream_notifier.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_streamsfuncs.c_user_space_stream_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@FAILURE = common dso_local global i64 0, align 8
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to call user notifier\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32, i8*, i32, i64, i64, i8*)* @user_space_stream_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @user_space_stream_notifier(%struct.TYPE_5__* %0, i32 %1, i32 %2, i8* %3, i32 %4, i64 %5, i64 %6, i8* %7) #0 {
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca [6 x i32], align 16
  %20 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i8* %7, i8** %16, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32* %24, i32** %17, align 8
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* %19, i64 0, i64 0
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = call i32 @ZVAL_LONG(i32* %25, i64 %27)
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %19, i64 0, i64 1
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = call i32 @ZVAL_LONG(i32* %29, i64 %31)
  %33 = load i8*, i8** %12, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %8
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %19, i64 0, i64 2
  %37 = load i8*, i8** %12, align 8
  %38 = call i32 @ZVAL_STRING(i32* %36, i8* %37)
  br label %42

39:                                               ; preds = %8
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* %19, i64 0, i64 2
  %41 = call i32 @ZVAL_NULL(i32* %40)
  br label %42

42:                                               ; preds = %39, %35
  %43 = getelementptr inbounds [6 x i32], [6 x i32]* %19, i64 0, i64 3
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = call i32 @ZVAL_LONG(i32* %43, i64 %45)
  %47 = getelementptr inbounds [6 x i32], [6 x i32]* %19, i64 0, i64 4
  %48 = load i64, i64* %14, align 8
  %49 = call i32 @ZVAL_LONG(i32* %47, i64 %48)
  %50 = getelementptr inbounds [6 x i32], [6 x i32]* %19, i64 0, i64 5
  %51 = load i64, i64* %15, align 8
  %52 = call i32 @ZVAL_LONG(i32* %50, i64 %51)
  %53 = load i64, i64* @FAILURE, align 8
  %54 = load i32*, i32** %17, align 8
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* %19, i64 0, i64 0
  %56 = call i64 @call_user_function_ex(i32* null, i32* null, i32* %54, i32* %18, i32 6, i32* %55, i32 0, i32* null)
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %42
  %59 = load i32, i32* @E_WARNING, align 4
  %60 = call i32 @php_error_docref(i32* null, i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %42
  store i32 0, i32* %20, align 4
  br label %62

62:                                               ; preds = %70, %61
  %63 = load i32, i32* %20, align 4
  %64 = icmp slt i32 %63, 6
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i32, i32* %20, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [6 x i32], [6 x i32]* %19, i64 0, i64 %67
  %69 = call i32 @zval_ptr_dtor(i32* %68)
  br label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %20, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %20, align 4
  br label %62

73:                                               ; preds = %62
  %74 = call i32 @zval_ptr_dtor(i32* %18)
  ret void
}

declare dso_local i32 @ZVAL_LONG(i32*, i64) #1

declare dso_local i32 @ZVAL_STRING(i32*, i8*) #1

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i64 @call_user_function_ex(i32*, i32*, i32*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
