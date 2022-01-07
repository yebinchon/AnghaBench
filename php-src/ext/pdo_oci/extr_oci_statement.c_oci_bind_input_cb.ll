; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_statement.c_oci_bind_input_cb.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_statement.c_oci_bind_input_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdo_bound_param_data = type { i32, i64 }
%struct.TYPE_2__ = type { i32, i32* }

@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"param is NULL in oci_bind_input_cb; this should not happen\00", align 1
@OCI_ERROR = common dso_local global i32 0, align 4
@OCI_ONE_PIECE = common dso_local global i32 0, align 4
@OCI_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32**, i32*, i32*, i32**)* @oci_bind_input_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oci_bind_input_cb(i32* %0, i32* %1, i32 %2, i32 %3, i32** %4, i32* %5, i32* %6, i32** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca %struct.pdo_bound_param_data*, align 8
  %19 = alloca %struct.TYPE_2__*, align 8
  %20 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32** %4, i32*** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32** %7, i32*** %17, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = bitcast i32* %21 to %struct.pdo_bound_param_data*
  store %struct.pdo_bound_param_data* %22, %struct.pdo_bound_param_data** %18, align 8
  %23 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %18, align 8
  %24 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %19, align 8
  %27 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %18, align 8
  %28 = icmp ne %struct.pdo_bound_param_data* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %8
  %30 = load i32, i32* @E_WARNING, align 4
  %31 = call i32 @php_error_docref(i32* null, i32 %30, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @OCI_ERROR, align 4
  store i32 %32, i32* %9, align 4
  br label %95

33:                                               ; preds = %8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32**, i32*** %17, align 8
  store i32* %35, i32** %36, align 8
  %37 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %18, align 8
  %38 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @Z_ISREF(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %18, align 8
  %44 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32* @Z_REFVAL(i32 %45)
  store i32* %46, i32** %20, align 8
  br label %50

47:                                               ; preds = %33
  %48 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %18, align 8
  %49 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %48, i32 0, i32 0
  store i32* %49, i32** %20, align 8
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32**, i32*** %14, align 8
  store i32* %58, i32** %59, align 8
  %60 = load i32*, i32** %15, align 8
  store i32 8, i32* %60, align 4
  br label %91

61:                                               ; preds = %50
  %62 = load i32*, i32** %20, align 8
  %63 = call i64 @ZVAL_IS_NULL(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 -1, i32* %67, align 8
  %68 = load i32**, i32*** %14, align 8
  store i32* null, i32** %68, align 8
  %69 = load i32*, i32** %15, align 8
  store i32 -1, i32* %69, align 4
  br label %90

70:                                               ; preds = %61
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %89, label %75

75:                                               ; preds = %70
  %76 = load i32*, i32** %20, align 8
  %77 = call i32 @try_convert_to_string(i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* @OCI_ERROR, align 4
  store i32 %80, i32* %9, align 4
  br label %95

81:                                               ; preds = %75
  %82 = load i32*, i32** %20, align 8
  %83 = call i32* @Z_STRVAL_P(i32* %82)
  %84 = load i32**, i32*** %14, align 8
  store i32* %83, i32** %84, align 8
  %85 = load i32*, i32** %20, align 8
  %86 = call i64 @Z_STRLEN_P(i32* %85)
  %87 = trunc i64 %86 to i32
  %88 = load i32*, i32** %15, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %81, %70
  br label %90

90:                                               ; preds = %89, %65
  br label %91

91:                                               ; preds = %90, %55
  %92 = load i32, i32* @OCI_ONE_PIECE, align 4
  %93 = load i32*, i32** %16, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* @OCI_CONTINUE, align 4
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %91, %79, %29
  %96 = load i32, i32* %9, align 4
  ret i32 %96
}

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i64 @Z_ISREF(i32) #1

declare dso_local i32* @Z_REFVAL(i32) #1

declare dso_local i64 @ZVAL_IS_NULL(i32*) #1

declare dso_local i32 @try_convert_to_string(i32*) #1

declare dso_local i32* @Z_STRVAL_P(i32*) #1

declare dso_local i64 @Z_STRLEN_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
