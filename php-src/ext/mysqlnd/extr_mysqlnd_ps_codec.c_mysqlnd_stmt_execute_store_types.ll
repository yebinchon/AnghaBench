; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps_codec.c_mysqlnd_stmt_execute_store_types.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps_codec.c_mysqlnd_stmt_execute_store_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i16, i32 }

@MYSQL_TYPE_LONG = common dso_local global i16 0, align 2
@MYSQL_TYPE_LONGLONG = common dso_local global i16 0, align 2
@IS_LONG = common dso_local global i64 0, align 8
@IS_STRING = common dso_local global i64 0, align 8
@MYSQL_TYPE_VAR_STRING = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32**)* @mysqlnd_stmt_execute_store_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mysqlnd_stmt_execute_store_types(%struct.TYPE_5__* %0, i32* %1, i32** %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32** %2, i32*** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %91, %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %94

17:                                               ; preds = %11
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i16, i16* %24, align 4
  store i16 %25, i16* %8, align 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32* %32, i32** %9, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @ZVAL_DEREF(i32* %33)
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @Z_ISNULL_P(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %83, label %38

38:                                               ; preds = %17
  %39 = load i16, i16* %8, align 2
  %40 = sext i16 %39 to i32
  %41 = load i16, i16* @MYSQL_TYPE_LONG, align 2
  %42 = sext i16 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load i16, i16* %8, align 2
  %46 = sext i16 %45 to i32
  %47 = load i16, i16* @MYSQL_TYPE_LONGLONG, align 2
  %48 = sext i16 %47 to i32
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %83

50:                                               ; preds = %44, %38
  %51 = load i32*, i32** %9, align 8
  %52 = call i64 @Z_TYPE_P(i32* %51)
  %53 = load i64, i64* @IS_LONG, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %82

55:                                               ; preds = %50
  %56 = load i32*, i32** %5, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @Z_ISUNDEF(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %58
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  br label %73

71:                                               ; preds = %58, %55
  %72 = load i32*, i32** %9, align 8
  br label %73

73:                                               ; preds = %71, %66
  %74 = phi i32* [ %70, %66 ], [ %72, %71 ]
  store i32* %74, i32** %10, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = call i64 @Z_TYPE_P(i32* %75)
  %77 = load i64, i64* @IS_STRING, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i16, i16* @MYSQL_TYPE_VAR_STRING, align 2
  store i16 %80, i16* %8, align 2
  br label %81

81:                                               ; preds = %79, %73
  br label %82

82:                                               ; preds = %81, %50
  br label %83

83:                                               ; preds = %82, %44, %17
  %84 = load i32**, i32*** %6, align 8
  %85 = load i32*, i32** %84, align 8
  %86 = load i16, i16* %8, align 2
  %87 = call i32 @int2store(i32* %85, i16 signext %86)
  %88 = load i32**, i32*** %6, align 8
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  store i32* %90, i32** %88, align 8
  br label %91

91:                                               ; preds = %83
  %92 = load i32, i32* %7, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %11

94:                                               ; preds = %11
  ret void
}

declare dso_local i32 @ZVAL_DEREF(i32*) #1

declare dso_local i32 @Z_ISNULL_P(i32*) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @Z_ISUNDEF(i32) #1

declare dso_local i32 @int2store(i32*, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
