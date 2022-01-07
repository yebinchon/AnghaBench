; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_stmt.c_row_prop_exists.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_stmt.c_row_prop_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@IS_LONG = common dso_local global i64 0, align 8
@IS_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i8**)* @row_prop_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @row_prop_exists(i32* %0, i32* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %10, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %11, align 8
  store i32 -1, i32* %12, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %103

23:                                               ; preds = %4
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @ZSTR_VAL(i32* %24)
  %26 = load i32*, i32** %7, align 8
  %27 = call i64 @ZSTR_LEN(i32* %26)
  %28 = call i64 @is_numeric_string_ex(i32 %25, i64 %27, i64* %13, i32* null, i32 0, i32* null)
  %29 = load i64, i64* @IS_LONG, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %23
  %32 = load i64, i64* %13, align 8
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i64, i64* %13, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br label %40

40:                                               ; preds = %34, %31
  %41 = phi i1 [ false, %31 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %5, align 4
  br label %104

43:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %99, %43
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %51, label %102

51:                                               ; preds = %44
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i64 @ZSTR_LEN(i32* %59)
  %61 = load i32*, i32** %7, align 8
  %62 = call i64 @ZSTR_LEN(i32* %61)
  %63 = icmp eq i64 %60, %62
  br i1 %63, label %64, label %98

64:                                               ; preds = %51
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @ZSTR_VAL(i32* %72)
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @ZSTR_VAL(i32* %74)
  %76 = load i32*, i32** %7, align 8
  %77 = call i64 @ZSTR_LEN(i32* %76)
  %78 = call i64 @strncmp(i32 %73, i32 %75, i64 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %64
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @fetch_value(%struct.TYPE_6__* %81, i32* %15, i32 %82, i32* null)
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = call i32 @i_zend_is_true(i32* %15)
  br label %94

88:                                               ; preds = %80
  %89 = load i32, i32* %15, align 4
  %90 = call i64 @Z_TYPE(i32 %89)
  %91 = load i64, i64* @IS_NULL, align 8
  %92 = icmp ne i64 %90, %91
  %93 = zext i1 %92 to i32
  br label %94

94:                                               ; preds = %88, %86
  %95 = phi i32 [ %87, %86 ], [ %93, %88 ]
  store i32 %95, i32* %14, align 4
  %96 = call i32 @zval_ptr_dtor_nogc(i32* %15)
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %5, align 4
  br label %104

98:                                               ; preds = %64, %51
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %44

102:                                              ; preds = %44
  br label %103

103:                                              ; preds = %102, %4
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %103, %94, %40
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i64 @is_numeric_string_ex(i32, i64, i64*, i32*, i32, i32*) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i64 @ZSTR_LEN(i32*) #1

declare dso_local i64 @strncmp(i32, i32, i64) #1

declare dso_local i32 @fetch_value(%struct.TYPE_6__*, i32*, i32, i32*) #1

declare dso_local i32 @i_zend_is_true(i32*) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32 @zval_ptr_dtor_nogc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
