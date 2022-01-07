; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_stmt.c_row_dim_exists.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_stmt.c_row_dim_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@IS_LONG = common dso_local global i64 0, align 8
@IS_STRING = common dso_local global i64 0, align 8
@IS_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @row_dim_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @row_dim_exists(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %8, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %9, align 8
  store i32 -1, i32* %10, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %133

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  %23 = call i64 @Z_TYPE_P(i32* %22)
  %24 = load i64, i64* @IS_LONG, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @Z_LVAL_P(i32* %27)
  %29 = icmp sge i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @Z_LVAL_P(i32* %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br label %37

37:                                               ; preds = %30, %26
  %38 = phi i1 [ false, %26 ], [ %36, %30 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %4, align 4
  br label %134

40:                                               ; preds = %21
  %41 = load i32*, i32** %6, align 8
  %42 = call i64 @Z_TYPE_P(i32* %41)
  %43 = load i64, i64* @IS_STRING, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %40
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @Z_STRVAL_P(i32* %46)
  %48 = load i32*, i32** %6, align 8
  %49 = call i64 @Z_STRLEN_P(i32* %48)
  %50 = call i64 @is_numeric_string_ex(i32 %47, i64 %49, i64* %11, i32* null, i32 0, i32* null)
  %51 = load i64, i64* @IS_LONG, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %45
  %54 = load i64, i64* %11, align 8
  %55 = icmp sge i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %57, %60
  br label %62

62:                                               ; preds = %56, %53
  %63 = phi i1 [ false, %53 ], [ %61, %56 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %4, align 4
  br label %134

65:                                               ; preds = %45
  br label %72

66:                                               ; preds = %40
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @try_convert_to_string(i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %134

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %65
  br label %73

73:                                               ; preds = %72
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %129, %73
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp slt i64 %76, %79
  br i1 %80, label %81, label %132

81:                                               ; preds = %74
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @ZSTR_LEN(i32 %89)
  %91 = load i32*, i32** %6, align 8
  %92 = call i64 @Z_STRLEN_P(i32* %91)
  %93 = icmp eq i64 %90, %92
  br i1 %93, label %94, label %128

94:                                               ; preds = %81
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ZSTR_VAL(i32 %102)
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @Z_STRVAL_P(i32* %104)
  %106 = load i32*, i32** %6, align 8
  %107 = call i64 @Z_STRLEN_P(i32* %106)
  %108 = call i64 @strncmp(i32 %103, i32 %105, i64 %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %94
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @fetch_value(%struct.TYPE_6__* %111, i32* %13, i32 %112, i32* null)
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = call i32 @i_zend_is_true(i32* %13)
  br label %124

118:                                              ; preds = %110
  %119 = load i32, i32* %13, align 4
  %120 = call i64 @Z_TYPE(i32 %119)
  %121 = load i64, i64* @IS_NULL, align 8
  %122 = icmp ne i64 %120, %121
  %123 = zext i1 %122 to i32
  br label %124

124:                                              ; preds = %118, %116
  %125 = phi i32 [ %117, %116 ], [ %123, %118 ]
  store i32 %125, i32* %12, align 4
  %126 = call i32 @zval_ptr_dtor_nogc(i32* %13)
  %127 = load i32, i32* %12, align 4
  store i32 %127, i32* %4, align 4
  br label %134

128:                                              ; preds = %94, %81
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %74

132:                                              ; preds = %74
  br label %133

133:                                              ; preds = %132, %3
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %133, %124, %70, %62, %37
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i64 @Z_LVAL_P(i32*) #1

declare dso_local i64 @is_numeric_string_ex(i32, i64, i64*, i32*, i32, i32*) #1

declare dso_local i32 @Z_STRVAL_P(i32*) #1

declare dso_local i64 @Z_STRLEN_P(i32*) #1

declare dso_local i32 @try_convert_to_string(i32*) #1

declare dso_local i64 @ZSTR_LEN(i32) #1

declare dso_local i64 @strncmp(i32, i32, i64) #1

declare dso_local i32 @ZSTR_VAL(i32) #1

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
