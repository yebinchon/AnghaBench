; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_firebird/extr_firebird_driver.c_firebird_handle_get_attribute.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_firebird/extr_firebird_driver.c_firebird_handle_get_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@firebird_info_cb = common dso_local global i32 0, align 4
@RTLD_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"isc_get_client_version\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32*)* @firebird_handle_get_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @firebird_handle_get_attribute(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca [512 x i8], align 16
  %10 = alloca i32 (i8*)*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %8, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %66 [
    i32 133, label %16
    i32 131, label %22
    i32 132, label %32
    i32 128, label %47
    i32 129, label %47
    i32 130, label %60
  ]

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ZVAL_LONG(i32* %17, i32 %20)
  store i32 1, i32* %4, align 4
  br label %67

22:                                               ; preds = %3
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* @firebird_info_cb, align 4
  %27 = call i32 @isc_version(i32* %25, i32 %26, i8* null)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @ZVAL_BOOL(i32* %23, i32 %30)
  store i32 1, i32* %4, align 4
  br label %67

32:                                               ; preds = %3
  store i32 (i8*)* null, i32 (i8*)** %10, align 8
  %33 = load i32, i32* @RTLD_DEFAULT, align 4
  %34 = call i32 @dlsym(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i32 (i8*)*
  store i32 (i8*)* %36, i32 (i8*)** %10, align 8
  %37 = load i32 (i8*)*, i32 (i8*)** %10, align 8
  %38 = icmp ne i32 (i8*)* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load i32 (i8*)*, i32 (i8*)** %10, align 8
  %41 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %42 = call i32 %40(i8* %41)
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %45 = call i32 @ZVAL_STRING(i32* %43, i8* %44)
  br label %46

46:                                               ; preds = %39, %32
  store i32 1, i32* %4, align 4
  br label %67

47:                                               ; preds = %3, %3
  %48 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %48, align 16
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* @firebird_info_cb, align 4
  %52 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %53 = call i32 @isc_version(i32* %50, i32 %51, i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %47
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %58 = call i32 @ZVAL_STRING(i32* %56, i8* %57)
  store i32 1, i32* %4, align 4
  br label %67

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %3, %59
  %61 = load i32*, i32** %7, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ZVAL_BOOL(i32* %61, i32 %64)
  store i32 1, i32* %4, align 4
  br label %67

66:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %60, %55, %46, %22, %16
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i32 @ZVAL_BOOL(i32*, i32) #1

declare dso_local i32 @isc_version(i32*, i32, i8*) #1

declare dso_local i32 @dlsym(i32, i8*) #1

declare dso_local i32 @ZVAL_STRING(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
