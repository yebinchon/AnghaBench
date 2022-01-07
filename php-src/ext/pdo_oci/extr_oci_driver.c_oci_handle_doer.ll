; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_driver.c_oci_handle_doer.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_driver.c_oci_handle_doer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.TYPE_4__ = type { i32, i8*, i32, i32 }

@OCI_HTYPE_STMT = common dso_local global i32 0, align 4
@OCI_NTV_SYNTAX = common dso_local global i32 0, align 4
@OCI_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"OCIStmtPrepare\00", align 1
@OCI_ATTR_STMT_TYPE = common dso_local global i32 0, align 4
@OCI_STMT_SELECT = common dso_local global i64 0, align 8
@E_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"issuing a SELECT query here is invalid\00", align 1
@OCI_COMMIT_ON_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"OCIStmtExecute\00", align 1
@OCI_ATTR_ROW_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i64)* @oci_handle_doer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oci_handle_doer(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %8, align 8
  store i32 -1, i32* %12, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = bitcast i32** %9 to i32*
  %21 = load i32, i32* @OCI_HTYPE_STMT, align 4
  %22 = call i32 @OCIHandleAlloc(i32 %19, i32* %20, i32 %21, i32 0, i32* null)
  %23 = load i32*, i32** %9, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* @OCI_NTV_SYNTAX, align 4
  %31 = load i32, i32* @OCI_DEFAULT, align 4
  %32 = call i8* @OCIStmtPrepare(i32* %23, i32 %26, i32* %28, i64 %29, i32 %30, i32 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %3
  %40 = call i8* @oci_drv_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* @OCI_HTYPE_STMT, align 4
  %45 = call i32 @OCIHandleFree(i32* %43, i32 %44)
  store i32 -1, i32* %4, align 4
  br label %116

46:                                               ; preds = %3
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* @OCI_HTYPE_STMT, align 4
  %49 = load i32, i32* @OCI_ATTR_STMT_TYPE, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @OCIAttrGet(i32* %47, i32 %48, i64* %10, i32 0, i32 %49, i32 %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* @OCI_STMT_SELECT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %46
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* @OCI_HTYPE_STMT, align 4
  %62 = call i32 @OCIHandleFree(i32* %60, i32 %61)
  %63 = load i32, i32* @E_WARNING, align 4
  %64 = call i32 @php_error_docref(i32* null, i32 %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %116

65:                                               ; preds = %46
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %65
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @OCI_COMMIT_ON_SUCCESS, align 4
  br label %86

84:                                               ; preds = %77, %65
  %85 = load i32, i32* @OCI_DEFAULT, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = call i8* @OCIStmtExecute(i32 %68, i32* %69, i32 %72, i32 1, i32 0, i32* null, i32* null, i32 %87)
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %86
  %96 = call i8* @oci_drv_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  br label %111

99:                                               ; preds = %86
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* @OCI_HTYPE_STMT, align 4
  %102 = load i32, i32* @OCI_ATTR_ROW_COUNT, align 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i8* @OCIAttrGet(i32* %100, i32 %101, i64* %11, i32 0, i32 %102, i32 %105)
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load i64, i64* %11, align 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %12, align 4
  br label %111

111:                                              ; preds = %99, %95
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* @OCI_HTYPE_STMT, align 4
  %114 = call i32 @OCIHandleFree(i32* %112, i32 %113)
  %115 = load i32, i32* %12, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %111, %59, %39
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @OCIHandleAlloc(i32, i32*, i32, i32, i32*) #1

declare dso_local i8* @OCIStmtPrepare(i32*, i32, i32*, i64, i32, i32) #1

declare dso_local i8* @oci_drv_error(i8*) #1

declare dso_local i32 @OCIHandleFree(i32*, i32) #1

declare dso_local i8* @OCIAttrGet(i32*, i32, i64*, i32, i32, i32) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i8* @OCIStmtExecute(i32, i32*, i32, i32, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
