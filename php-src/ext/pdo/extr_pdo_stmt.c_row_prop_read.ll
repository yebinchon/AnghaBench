; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_stmt.c_row_prop_read.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_stmt.c_row_prop_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@IS_LONG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"queryString\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32, i8**, i32*)* @row_prop_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @row_prop_read(i32* %0, i32* %1, i32 %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %12, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %13, align 8
  store i32 -1, i32* %14, align 4
  %21 = load i32*, i32** %11, align 8
  %22 = call i32 @ZVAL_NULL(i32* %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %111

25:                                               ; preds = %5
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @ZSTR_VAL(i32* %26)
  %28 = load i32*, i32** %8, align 8
  %29 = call i64 @ZSTR_LEN(i32* %28)
  %30 = call i64 @is_numeric_string_ex(i32 %27, i64 %29, i64* %15, i32* null, i32 0, i32* null)
  %31 = load i64, i64* @IS_LONG, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %25
  %34 = load i64, i64* %15, align 8
  %35 = icmp sge i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load i64, i64* %15, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i64, i64* %15, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @fetch_value(%struct.TYPE_6__* %43, i32* %44, i32 %46, i32* null)
  br label %48

48:                                               ; preds = %42, %36, %33
  br label %110

49:                                               ; preds = %25
  store i32 0, i32* %14, align 4
  br label %50

50:                                               ; preds = %93, %49
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %96

57:                                               ; preds = %50
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i64 @ZSTR_LEN(i32* %65)
  %67 = load i32*, i32** %8, align 8
  %68 = call i64 @ZSTR_LEN(i32* %67)
  %69 = icmp eq i64 %66, %68
  br i1 %69, label %70, label %92

70:                                               ; preds = %57
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @ZSTR_VAL(i32* %78)
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @ZSTR_VAL(i32* %80)
  %82 = load i32*, i32** %8, align 8
  %83 = call i64 @ZSTR_LEN(i32* %82)
  %84 = call i64 @strncmp(i32 %79, i32 %81, i64 %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %70
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @fetch_value(%struct.TYPE_6__* %87, i32* %88, i32 %89, i32* null)
  %91 = load i32*, i32** %11, align 8
  store i32* %91, i32** %6, align 8
  br label %113

92:                                               ; preds = %70, %57
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %14, align 4
  br label %50

96:                                               ; preds = %50
  %97 = load i32*, i32** %8, align 8
  %98 = call i32 @ZSTR_VAL(i32* %97)
  %99 = call i64 @strcmp(i32 %98, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i8**, i8*** %10, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = call i32* @zend_std_read_property(i32* %103, i32* %104, i32 %105, i8** %106, i32* %107)
  store i32* %108, i32** %6, align 8
  br label %113

109:                                              ; preds = %96
  br label %110

110:                                              ; preds = %109, %48
  br label %111

111:                                              ; preds = %110, %5
  %112 = load i32*, i32** %11, align 8
  store i32* %112, i32** %6, align 8
  br label %113

113:                                              ; preds = %111, %101, %86
  %114 = load i32*, i32** %6, align 8
  ret i32* %114
}

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i64 @is_numeric_string_ex(i32, i64, i64*, i32*, i32, i32*) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i64 @ZSTR_LEN(i32*) #1

declare dso_local i32 @fetch_value(%struct.TYPE_6__*, i32*, i32, i32*) #1

declare dso_local i64 @strncmp(i32, i32, i64) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32* @zend_std_read_property(i32*, i32*, i32, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
