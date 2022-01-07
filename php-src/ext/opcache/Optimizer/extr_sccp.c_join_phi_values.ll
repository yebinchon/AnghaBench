; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_join_phi_values.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_join_phi_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64)* @join_phi_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @join_phi_values(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i64 @IS_BOT(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @IS_TOP(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %3
  br label %96

15:                                               ; preds = %10
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @IS_TOP(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @zval_ptr_dtor_nogc(i32* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @ZVAL_COPY(i32* %22, i32* %23)
  br label %96

25:                                               ; preds = %15
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @IS_BOT(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @zval_ptr_dtor_nogc(i32* %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @MAKE_BOT(i32* %32)
  br label %96

34:                                               ; preds = %25
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @IS_PARTIAL_ARRAY(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32*, i32** %5, align 8
  %40 = call i64 @IS_PARTIAL_ARRAY(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %38, %34
  %43 = load i32*, i32** %4, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i64 @join_partial_arrays(i32* %43, i32* %44)
  %46 = load i64, i64* @SUCCESS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @zval_ptr_dtor_nogc(i32* %49)
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @MAKE_BOT(i32* %51)
  br label %53

53:                                               ; preds = %48, %42
  br label %96

54:                                               ; preds = %38
  %55 = load i32*, i32** %4, align 8
  %56 = call i64 @IS_PARTIAL_OBJECT(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32*, i32** %5, align 8
  %60 = call i64 @IS_PARTIAL_OBJECT(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %58, %54
  %63 = load i64, i64* %6, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = load i32*, i32** %4, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i64 @join_partial_objects(i32* %66, i32* %67)
  %69 = load i64, i64* @SUCCESS, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %65, %62
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @zval_ptr_dtor_nogc(i32* %72)
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @MAKE_BOT(i32* %74)
  br label %76

76:                                               ; preds = %71, %65
  br label %95

77:                                               ; preds = %58
  %78 = load i32*, i32** %4, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @zend_is_identical(i32* %78, i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %77
  %83 = load i32*, i32** %4, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = call i64 @join_partial_arrays(i32* %83, i32* %84)
  %86 = load i64, i64* @SUCCESS, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @zval_ptr_dtor_nogc(i32* %89)
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @MAKE_BOT(i32* %91)
  br label %93

93:                                               ; preds = %88, %82
  br label %94

94:                                               ; preds = %93, %77
  br label %95

95:                                               ; preds = %94, %76
  br label %96

96:                                               ; preds = %14, %19, %29, %95, %53
  ret void
}

declare dso_local i64 @IS_BOT(i32*) #1

declare dso_local i64 @IS_TOP(i32*) #1

declare dso_local i32 @zval_ptr_dtor_nogc(i32*) #1

declare dso_local i32 @ZVAL_COPY(i32*, i32*) #1

declare dso_local i32 @MAKE_BOT(i32*) #1

declare dso_local i64 @IS_PARTIAL_ARRAY(i32*) #1

declare dso_local i64 @join_partial_arrays(i32*, i32*) #1

declare dso_local i64 @IS_PARTIAL_OBJECT(i32*) #1

declare dso_local i64 @join_partial_objects(i32*, i32*) #1

declare dso_local i32 @zend_is_identical(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
