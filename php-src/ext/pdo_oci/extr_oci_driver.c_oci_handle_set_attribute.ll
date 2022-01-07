; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_driver.c_oci_handle_set_attribute.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_driver.c_oci_handle_set_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"OCITransCommit\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Unsupported attribute type\00", align 1
@OCI_ATTR_ACTION = common dso_local global i32 0, align 4
@OCI_ATTR_CALL_TIMEOUT = common dso_local global i32 0, align 4
@OCI_ATTR_CLIENT_IDENTIFIER = common dso_local global i32 0, align 4
@OCI_ATTR_CLIENT_INFO = common dso_local global i32 0, align 4
@OCI_ATTR_MODULE = common dso_local global i32 0, align 4
@OCI_HTYPE_SESSION = common dso_local global i32 0, align 4
@OCI_HTYPE_SVCCTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32*)* @oci_handle_set_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oci_handle_set_attribute(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = call i32 @zval_get_long(i32* %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %9, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %65 [
    i32 134, label %17
    i32 133, label %50
    i32 132, label %55
    i32 129, label %57
    i32 130, label %59
    i32 128, label %61
    i32 131, label %63
  ]

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %17
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @OCITransCommit(i32 %25, i32 %28, i32 0)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %22
  %37 = call i8* @oci_drv_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  store i32 0, i32* %4, align 4
  br label %66

40:                                               ; preds = %22
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %17
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  store i32 1, i32* %4, align 4
  br label %66

50:                                               ; preds = %3
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @pdo_oci_sanitize_prefetch(i32 %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  store i32 1, i32* %4, align 4
  br label %66

55:                                               ; preds = %3
  %56 = call i8* @oci_drv_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %66

57:                                               ; preds = %3
  %58 = call i8* @oci_drv_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %66

59:                                               ; preds = %3
  %60 = call i8* @oci_drv_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %66

61:                                               ; preds = %3
  %62 = call i8* @oci_drv_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %66

63:                                               ; preds = %3
  %64 = call i8* @oci_drv_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %66

65:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %63, %61, %59, %57, %55, %50, %43, %36
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @zval_get_long(i32*) #1

declare dso_local i8* @OCITransCommit(i32, i32, i32) #1

declare dso_local i8* @oci_drv_error(i8*) #1

declare dso_local i32 @pdo_oci_sanitize_prefetch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
