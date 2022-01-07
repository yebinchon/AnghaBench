; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_driver.c_oci_handle_get_attribute.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_driver.c_oci_handle_get_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@OCI_HTYPE_SVCCTX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"<<Unknown>>\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%d.%d.%d.%d.%d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Unsupported attribute type\00", align 1
@OCI_ATTR_CALL_TIMEOUT = common dso_local global i32 0, align 4
@PHP_PDO_OCI_CLIENT_VERSION = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32*)* @oci_handle_get_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oci_handle_get_attribute(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca [512 x i32], align 16
  %10 = alloca [15 x i8], align 1
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %8, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %82 [
    i32 129, label %17
    i32 130, label %17
    i32 132, label %63
    i32 133, label %65
    i32 131, label %72
    i32 128, label %79
  ]

17:                                               ; preds = %3, %3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds [512 x i32], [512 x i32]* %9, i64 0, i64 0
  %25 = load i32, i32* @OCI_HTYPE_SVCCTX, align 4
  %26 = call i32 @OCIServerRelease(i32 %20, i32 %23, i32* %24, i32 2048, i32 %25, i32* %11)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @ZVAL_STRING(i32* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %61

31:                                               ; preds = %17
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 130
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds [512 x i32], [512 x i32]* %9, i64 0, i64 0
  %37 = bitcast i32* %36 to i8*
  %38 = call i32 @ZVAL_STRING(i32* %35, i8* %37)
  br label %60

39:                                               ; preds = %31
  %40 = getelementptr inbounds [15 x i8], [15 x i8]* %10, i64 0, i64 0
  %41 = load i32, i32* %11, align 4
  %42 = ashr i32 %41, 24
  %43 = and i32 %42, 255
  %44 = load i32, i32* %11, align 4
  %45 = ashr i32 %44, 20
  %46 = and i32 %45, 15
  %47 = load i32, i32* %11, align 4
  %48 = ashr i32 %47, 12
  %49 = and i32 %48, 255
  %50 = load i32, i32* %11, align 4
  %51 = ashr i32 %50, 8
  %52 = and i32 %51, 15
  %53 = load i32, i32* %11, align 4
  %54 = ashr i32 %53, 0
  %55 = and i32 %54, 255
  %56 = call i32 @slprintf(i8* %40, i32 15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %46, i32 %49, i32 %52, i32 %55)
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds [15 x i8], [15 x i8]* %10, i64 0, i64 0
  %59 = call i32 @ZVAL_STRING(i32* %57, i8* %58)
  br label %60

60:                                               ; preds = %39, %34
  br label %61

61:                                               ; preds = %60, %28
  %62 = load i32, i32* @TRUE, align 4
  store i32 %62, i32* %4, align 4
  br label %84

63:                                               ; preds = %3
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %4, align 4
  br label %84

65:                                               ; preds = %3
  %66 = load i32*, i32** %7, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ZVAL_BOOL(i32* %66, i32 %69)
  %71 = load i32, i32* @TRUE, align 4
  store i32 %71, i32* %4, align 4
  br label %84

72:                                               ; preds = %3
  %73 = load i32*, i32** %7, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ZVAL_LONG(i32* %73, i32 %76)
  %78 = load i32, i32* @TRUE, align 4
  store i32 %78, i32* %4, align 4
  br label %84

79:                                               ; preds = %3
  %80 = call i32 @oci_drv_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %4, align 4
  br label %84

82:                                               ; preds = %3
  %83 = load i32, i32* @FALSE, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %79, %72, %65, %63, %61
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @OCIServerRelease(i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @ZVAL_STRING(i32*, i8*) #1

declare dso_local i32 @slprintf(i8*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ZVAL_BOOL(i32*, i32) #1

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i32 @oci_drv_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
