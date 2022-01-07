; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_type_qualifier.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_type_qualifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@YY_CONST = common dso_local global i32 0, align 4
@YY___CONST = common dso_local global i32 0, align 4
@YY___CONST__ = common dso_local global i32 0, align 4
@ZEND_FFI_DCL_CONST = common dso_local global i32 0, align 4
@ZEND_FFI_ATTR_CONST = common dso_local global i32 0, align 4
@YY_RESTRICT = common dso_local global i32 0, align 4
@YY___RESTRICT = common dso_local global i32 0, align 4
@YY___RESTRICT__ = common dso_local global i32 0, align 4
@ZEND_FFI_DCL_RESTRICT = common dso_local global i32 0, align 4
@YY_VOLATILE = common dso_local global i32 0, align 4
@YY___VOLATILE = common dso_local global i32 0, align 4
@YY___VOLATILE__ = common dso_local global i32 0, align 4
@ZEND_FFI_DCL_VOLATILE = common dso_local global i32 0, align 4
@YY__ATOMIC = common dso_local global i32 0, align 4
@ZEND_FFI_DCL_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"unexpected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @parse_type_qualifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_type_qualifier(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @YY_CONST, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @YY___CONST, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @YY___CONST__, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %12, %8, %2
  %17 = call i32 (...) @get_sym()
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @ZEND_FFI_DCL_CONST, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @ZEND_FFI_ATTR_CONST, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %83

28:                                               ; preds = %12
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @YY_RESTRICT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @YY___RESTRICT, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @YY___RESTRICT__, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36, %32, %28
  %41 = call i32 (...) @get_sym()
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* @ZEND_FFI_DCL_RESTRICT, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %82

47:                                               ; preds = %36
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @YY_VOLATILE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @YY___VOLATILE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @YY___VOLATILE__, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55, %51, %47
  %60 = call i32 (...) @get_sym()
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* @ZEND_FFI_DCL_VOLATILE, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %81

66:                                               ; preds = %55
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @YY__ATOMIC, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = call i32 (...) @get_sym()
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* @ZEND_FFI_DCL_ATOMIC, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %80

77:                                               ; preds = %66
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %77, %70
  br label %81

81:                                               ; preds = %80, %59
  br label %82

82:                                               ; preds = %81, %40
  br label %83

83:                                               ; preds = %82, %16
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @get_sym(...) #1

declare dso_local i32 @yy_error_sym(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
