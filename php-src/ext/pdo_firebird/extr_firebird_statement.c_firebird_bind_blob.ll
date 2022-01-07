; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_firebird/extr_firebird_statement.c_firebird_bind_blob.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_firebird/extr_firebird_statement.c_firebird_bind_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }

@PDO_FIREBIRD_HANDLE_INITIALIZER = common dso_local global i32 0, align 4
@IS_STRING = common dso_local global i64 0, align 8
@USHRT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32*)* @firebird_bind_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @firebird_bind_blob(%struct.TYPE_6__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %8, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %9, align 8
  %23 = load i32, i32* @PDO_FIREBIRD_HANDLE_INITIALIZER, align 4
  store i32 %23, i32* %10, align 4
  store i64 0, i64* %12, align 8
  store i32 1, i32* %15, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @isc_create_blob(i32 %26, i32* %28, i32* %30, i32* %10, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = call i32 @RECORD_ERROR(%struct.TYPE_6__* %35)
  store i32 0, i32* %4, align 4
  br label %109

37:                                               ; preds = %3
  %38 = load i32*, i32** %7, align 8
  %39 = call i64 @Z_TYPE_P(i32* %38)
  %40 = load i64, i64* @IS_STRING, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @zval_get_string_func(i32* %43)
  %45 = call i32 @ZVAL_STR(i32* %11, i32 %44)
  br label %49

46:                                               ; preds = %37
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @ZVAL_COPY_VALUE(i32* %11, i32* %47)
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i32, i32* %11, align 4
  %51 = call i64 @Z_STRLEN(i32 %50)
  store i64 %51, i64* %13, align 8
  br label %52

52:                                               ; preds = %86, %49
  %53 = load i64, i64* %13, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %91

55:                                               ; preds = %52
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* @USHRT_MAX, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i64, i64* @USHRT_MAX, align 8
  br label %65

61:                                               ; preds = %55
  %62 = load i64, i64* %13, align 8
  %63 = trunc i64 %62 to i16
  %64 = zext i16 %63 to i64
  br label %65

65:                                               ; preds = %61, %59
  %66 = phi i64 [ %60, %59 ], [ %64, %61 ]
  %67 = trunc i64 %66 to i16
  store i16 %67, i16* %14, align 2
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i16, i16* %14, align 2
  %72 = load i32, i32* %11, align 4
  %73 = call i32* @Z_STRVAL(i32 %72)
  %74 = load i64, i64* %12, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = call i64 @isc_put_segment(i32 %70, i32* %10, i16 zeroext %71, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %65
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = call i32 @RECORD_ERROR(%struct.TYPE_6__* %79)
  store i32 0, i32* %15, align 4
  br label %91

81:                                               ; preds = %65
  %82 = load i16, i16* %14, align 2
  %83 = zext i16 %82 to i64
  %84 = load i64, i64* %12, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* %12, align 8
  br label %86

86:                                               ; preds = %81
  %87 = load i16, i16* %14, align 2
  %88 = zext i16 %87 to i64
  %89 = load i64, i64* %13, align 8
  %90 = sub nsw i64 %89, %88
  store i64 %90, i64* %13, align 8
  br label %52

91:                                               ; preds = %78, %52
  %92 = load i32*, i32** %7, align 8
  %93 = call i64 @Z_TYPE_P(i32* %92)
  %94 = load i64, i64* @IS_STRING, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = call i32 @zval_ptr_dtor_str(i32* %11)
  br label %98

98:                                               ; preds = %96, %91
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @isc_close_blob(i32 %101, i32* %10)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %106 = call i32 @RECORD_ERROR(%struct.TYPE_6__* %105)
  store i32 0, i32* %4, align 4
  br label %109

107:                                              ; preds = %98
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %107, %104, %34
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i64 @isc_create_blob(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RECORD_ERROR(%struct.TYPE_6__*) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @ZVAL_STR(i32*, i32) #1

declare dso_local i32 @zval_get_string_func(i32*) #1

declare dso_local i32 @ZVAL_COPY_VALUE(i32*, i32*) #1

declare dso_local i64 @Z_STRLEN(i32) #1

declare dso_local i64 @isc_put_segment(i32, i32*, i16 zeroext, i32*) #1

declare dso_local i32* @Z_STRVAL(i32) #1

declare dso_local i32 @zval_ptr_dtor_str(i32*) #1

declare dso_local i64 @isc_close_blob(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
