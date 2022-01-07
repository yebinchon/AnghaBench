; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_statement.c_oci_blob_read.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_statement.c_oci_blob_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.oci_lob_self = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@SQLCS_IMPLICIT = common dso_local global i32 0, align 4
@OCI_SUCCESS = common dso_local global i64 0, align 8
@OCI_NEED_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i8*, i64)* @oci_blob_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @oci_blob_read(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.oci_lob_self*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.oci_lob_self*
  store %struct.oci_lob_self* %14, %struct.oci_lob_self** %8, align 8
  %15 = load i64, i64* %7, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.oci_lob_self*, %struct.oci_lob_self** %8, align 8
  %17 = getelementptr inbounds %struct.oci_lob_self, %struct.oci_lob_self* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.oci_lob_self*, %struct.oci_lob_self** %8, align 8
  %22 = getelementptr inbounds %struct.oci_lob_self, %struct.oci_lob_self* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.oci_lob_self*, %struct.oci_lob_self** %8, align 8
  %27 = getelementptr inbounds %struct.oci_lob_self, %struct.oci_lob_self* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.oci_lob_self*, %struct.oci_lob_self** %8, align 8
  %30 = getelementptr inbounds %struct.oci_lob_self, %struct.oci_lob_self* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* @SQLCS_IMPLICIT, align 4
  %35 = call i64 @OCILobRead(i32 %20, i32 %25, i32 %28, i64* %9, i64 %31, i8* %32, i64 %33, i32* null, i32* null, i32 0, i32 %34)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* @OCI_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %3
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @OCI_NEED_DATA, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i64 -1, i64* %4, align 8
  br label %58

44:                                               ; preds = %39, %3
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.oci_lob_self*, %struct.oci_lob_self** %8, align 8
  %47 = getelementptr inbounds %struct.oci_lob_self, %struct.oci_lob_self* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, %45
  store i64 %49, i64* %47, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %44
  %57 = load i64, i64* %9, align 8
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %56, %43
  %59 = load i64, i64* %4, align 8
  ret i64 %59
}

declare dso_local i64 @OCILobRead(i32, i32, i32, i64*, i64, i8*, i64, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
