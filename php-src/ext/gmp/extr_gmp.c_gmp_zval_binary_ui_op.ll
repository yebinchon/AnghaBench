; ModuleID = '/home/carl/AnghaBench/php-src/ext/gmp/extr_gmp.c_gmp_zval_binary_ui_op.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gmp/extr_gmp.c_gmp_zval_binary_ui_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@IS_LONG = common dso_local global i64 0, align 8
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Zero operand not allowed\00", align 1
@RETURN_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32 (i32*, i32*, i32*)*, i32 (i32*, i32*, i32)*, i32)* @gmp_zval_binary_ui_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmp_zval_binary_ui_op(i32* %0, i32* %1, i32* %2, i32 (i32*, i32*, i32*)* %3, i32 (i32*, i32*, i32)* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32 (i32*, i32*, i32*)*, align 8
  %11 = alloca i32 (i32*, i32*, i32)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_6__, align 8
  %17 = alloca %struct.TYPE_6__, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 (i32*, i32*, i32*)* %3, i32 (i32*, i32*, i32*)** %10, align 8
  store i32 (i32*, i32*, i32)* %4, i32 (i32*, i32*, i32)** %11, align 8
  store i32 %5, i32* %12, align 4
  %19 = load i32*, i32** %13, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @FETCH_GMP_ZVAL(i32* %19, i32* %20, i64 %22)
  %24 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %11, align 8
  %25 = icmp ne i32 (i32*, i32*, i32)* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %6
  %27 = load i32*, i32** %9, align 8
  %28 = call i64 @Z_TYPE_P(i32* %27)
  %29 = load i64, i64* @IS_LONG, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32*, i32** %9, align 8
  %33 = call i64 @Z_LVAL_P(i32* %32)
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  store i32* null, i32** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %45

37:                                               ; preds = %31, %26, %6
  %38 = load i32*, i32** %14, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @FETCH_GMP_ZVAL_DEP(i32* %38, i32* %39, i64 %41, i64 %43)
  br label %45

45:                                               ; preds = %37, %35
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %45
  store i32 0, i32* %18, align 4
  %49 = load i32*, i32** %14, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = load i32*, i32** %9, align 8
  %53 = call i64 @Z_LVAL_P(i32* %52)
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %18, align 4
  br label %62

56:                                               ; preds = %48
  %57 = load i32*, i32** %14, align 8
  %58 = call i32 @mpz_cmp_ui(i32* %57, i32 0)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %18, align 4
  br label %62

62:                                               ; preds = %56, %51
  %63 = load i32, i32* %18, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load i32, i32* @E_WARNING, align 4
  %67 = call i32 @php_error_docref(i32* null, i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @FREE_GMP_TEMP(i64 %69)
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @FREE_GMP_TEMP(i64 %72)
  %74 = load i32, i32* @RETURN_FALSE, align 4
  br label %75

75:                                               ; preds = %65, %62
  br label %76

76:                                               ; preds = %75, %45
  %77 = load i32*, i32** %15, align 8
  %78 = call i32 @INIT_GMP_RETVAL(i32* %77)
  %79 = load i32*, i32** %14, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %89, label %81

81:                                               ; preds = %76
  %82 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %11, align 8
  %83 = load i32*, i32** %15, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = call i64 @Z_LVAL_P(i32* %85)
  %87 = trunc i64 %86 to i32
  %88 = call i32 %82(i32* %83, i32* %84, i32 %87)
  br label %95

89:                                               ; preds = %76
  %90 = load i32 (i32*, i32*, i32*)*, i32 (i32*, i32*, i32*)** %10, align 8
  %91 = load i32*, i32** %15, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = load i32*, i32** %14, align 8
  %94 = call i32 %90(i32* %91, i32* %92, i32* %93)
  br label %95

95:                                               ; preds = %89, %81
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @FREE_GMP_TEMP(i64 %97)
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @FREE_GMP_TEMP(i64 %100)
  ret void
}

declare dso_local i32 @FETCH_GMP_ZVAL(i32*, i32*, i64) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i64 @Z_LVAL_P(i32*) #1

declare dso_local i32 @FETCH_GMP_ZVAL_DEP(i32*, i32*, i64, i64) #1

declare dso_local i32 @mpz_cmp_ui(i32*, i32) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i32 @FREE_GMP_TEMP(i64) #1

declare dso_local i32 @INIT_GMP_RETVAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
