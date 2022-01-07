; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqli/extr_mysqli.c_php_mysqli_fetch_into_hash_aux.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqli/extr_mysqli.c_php_mysqli_fetch_into_hash_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@MYSQLI_ASSOC = common dso_local global i32 0, align 4
@MYSQLI_NUM = common dso_local global i32 0, align 4
@MYSQLI_LLU_SPEC = common dso_local global i8* null, align 8
@MYSQLI_LL_SPEC = common dso_local global i8* null, align 8
@MYSQLND_FETCH_ASSOC = common dso_local global i32 0, align 4
@MYSQLND_FETCH_NUM = common dso_local global i32 0, align 4
@MYSQLND_MYSQLI = common dso_local global i32 0, align 4
@MYSQL_TYPE_BIT = common dso_local global i64 0, align 8
@UNSIGNED_FLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @php_mysqli_fetch_into_hash_aux(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i64* @mysql_fetch_row(i32* %13)
  store i64* %14, i64** %7, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = call i32 (...) @RETURN_NULL()
  br label %18

18:                                               ; preds = %16, %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MYSQLI_ASSOC, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32*, i32** %5, align 8
  %25 = call %struct.TYPE_4__* @mysql_fetch_fields(i32* %24)
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %10, align 8
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @array_init(i32* %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32* @mysql_fetch_lengths(i32* %29)
  store i32* %30, i32** %11, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @mysql_num_fields(i32* %31)
  store i32 %32, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %116, %26
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %119

37:                                               ; preds = %33
  %38 = load i64*, i64** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %91

44:                                               ; preds = %37
  %45 = load i64*, i64** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ZVAL_STRINGL(i32* %12, i64 %49, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @MYSQLI_NUM, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %44
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @add_index_zval(i32* %61, i32 %62, i32* %12)
  br label %64

64:                                               ; preds = %60, %44
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @MYSQLI_ASSOC, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %64
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @MYSQLI_NUM, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load i32, i32* %12, align 4
  %76 = call i64 @Z_REFCOUNTED(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @Z_ADDREF(i32 %79)
  br label %81

81:                                               ; preds = %78, %74, %69
  %82 = load i32*, i32** %4, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @add_assoc_zval(i32* %82, i32 %88, i32* %12)
  br label %90

90:                                               ; preds = %81, %64
  br label %115

91:                                               ; preds = %37
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @MYSQLI_NUM, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i32*, i32** %4, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @add_index_null(i32* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %91
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @MYSQLI_ASSOC, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = load i32*, i32** %4, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %108 = load i32, i32* %8, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @add_assoc_null(i32* %106, i32 %112)
  br label %114

114:                                              ; preds = %105, %100
  br label %115

115:                                              ; preds = %114, %90
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %8, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %33

119:                                              ; preds = %33
  ret void
}

declare dso_local i64* @mysql_fetch_row(i32*) #1

declare dso_local i32 @RETURN_NULL(...) #1

declare dso_local %struct.TYPE_4__* @mysql_fetch_fields(i32*) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32* @mysql_fetch_lengths(i32*) #1

declare dso_local i32 @mysql_num_fields(i32*) #1

declare dso_local i32 @ZVAL_STRINGL(i32*, i64, i32) #1

declare dso_local i32 @add_index_zval(i32*, i32, i32*) #1

declare dso_local i64 @Z_REFCOUNTED(i32) #1

declare dso_local i32 @Z_ADDREF(i32) #1

declare dso_local i32 @add_assoc_zval(i32*, i32, i32*) #1

declare dso_local i32 @add_index_null(i32*, i32) #1

declare dso_local i32 @add_assoc_null(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
