; ModuleID = '/home/carl/AnghaBench/php-src/ext/gmp/extr_gmp.c_gmp_zval_binary_ui_op2.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gmp/extr_gmp.c_gmp_zval_binary_ui_op2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@IS_LONG = common dso_local global i64 0, align 8
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Zero operand not allowed\00", align 1
@RETURN_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32 (i32*, i32*, i32*, i32*)*, i32 (i32*, i32*, i32*, i32)*, i32)* @gmp_zval_binary_ui_op2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmp_zval_binary_ui_op2(i32* %0, i32* %1, i32* %2, i32 (i32*, i32*, i32*, i32*)* %3, i32 (i32*, i32*, i32*, i32)* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32 (i32*, i32*, i32*, i32*)*, align 8
  %11 = alloca i32 (i32*, i32*, i32*, i32)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_6__, align 8
  %18 = alloca %struct.TYPE_6__, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 (i32*, i32*, i32*, i32*)* %3, i32 (i32*, i32*, i32*, i32*)** %10, align 8
  store i32 (i32*, i32*, i32*, i32)* %4, i32 (i32*, i32*, i32*, i32)** %11, align 8
  store i32 %5, i32* %12, align 4
  %22 = load i32*, i32** %13, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @FETCH_GMP_ZVAL(i32* %22, i32* %23, i64 %25)
  %27 = load i32 (i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32)** %11, align 8
  %28 = icmp ne i32 (i32*, i32*, i32*, i32)* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %6
  %30 = load i32*, i32** %9, align 8
  %31 = call i64 @Z_TYPE_P(i32* %30)
  %32 = load i64, i64* @IS_LONG, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32*, i32** %9, align 8
  %36 = call i64 @Z_LVAL_P(i32* %35)
  %37 = icmp sge i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  store i32* null, i32** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i64 0, i64* %39, align 8
  br label %48

40:                                               ; preds = %34, %29, %6
  %41 = load i32*, i32** %14, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @FETCH_GMP_ZVAL_DEP(i32* %41, i32* %42, i64 %44, i64 %46)
  br label %48

48:                                               ; preds = %40, %38
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %79

51:                                               ; preds = %48
  store i32 0, i32* %21, align 4
  %52 = load i32*, i32** %14, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load i32*, i32** %9, align 8
  %56 = call i64 @Z_LVAL_P(i32* %55)
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %21, align 4
  br label %65

59:                                               ; preds = %51
  %60 = load i32*, i32** %14, align 8
  %61 = call i32 @mpz_cmp_ui(i32* %60, i32 0)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %21, align 4
  br label %65

65:                                               ; preds = %59, %54
  %66 = load i32, i32* %21, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load i32, i32* @E_WARNING, align 4
  %70 = call i32 @php_error_docref(i32* null, i32 %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @FREE_GMP_TEMP(i64 %72)
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @FREE_GMP_TEMP(i64 %75)
  %77 = load i32, i32* @RETURN_FALSE, align 4
  br label %78

78:                                               ; preds = %68, %65
  br label %79

79:                                               ; preds = %78, %48
  %80 = call i32 @gmp_create(i32* %19, i32** %15)
  %81 = call i32 @gmp_create(i32* %20, i32** %16)
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @array_init(i32* %82)
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @add_next_index_zval(i32* %84, i32* %19)
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @add_next_index_zval(i32* %86, i32* %20)
  %88 = load i32*, i32** %14, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %99, label %90

90:                                               ; preds = %79
  %91 = load i32 (i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32)** %11, align 8
  %92 = load i32*, i32** %15, align 8
  %93 = load i32*, i32** %16, align 8
  %94 = load i32*, i32** %13, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = call i64 @Z_LVAL_P(i32* %95)
  %97 = trunc i64 %96 to i32
  %98 = call i32 %91(i32* %92, i32* %93, i32* %94, i32 %97)
  br label %106

99:                                               ; preds = %79
  %100 = load i32 (i32*, i32*, i32*, i32*)*, i32 (i32*, i32*, i32*, i32*)** %10, align 8
  %101 = load i32*, i32** %15, align 8
  %102 = load i32*, i32** %16, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = load i32*, i32** %14, align 8
  %105 = call i32 %100(i32* %101, i32* %102, i32* %103, i32* %104)
  br label %106

106:                                              ; preds = %99, %90
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @FREE_GMP_TEMP(i64 %108)
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @FREE_GMP_TEMP(i64 %111)
  ret void
}

declare dso_local i32 @FETCH_GMP_ZVAL(i32*, i32*, i64) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i64 @Z_LVAL_P(i32*) #1

declare dso_local i32 @FETCH_GMP_ZVAL_DEP(i32*, i32*, i64, i64) #1

declare dso_local i32 @mpz_cmp_ui(i32*, i32) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i32 @FREE_GMP_TEMP(i64) #1

declare dso_local i32 @gmp_create(i32*, i32**) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32 @add_next_index_zval(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
