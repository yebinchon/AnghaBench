; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_statement.c_oci_blob_close.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_statement.c_oci_blob_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.oci_lob_self = type { %struct.oci_lob_self*, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @oci_blob_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oci_blob_close(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.oci_lob_self*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.oci_lob_self*
  store %struct.oci_lob_self* %11, %struct.oci_lob_self** %5, align 8
  %12 = load %struct.oci_lob_self*, %struct.oci_lob_self** %5, align 8
  %13 = getelementptr inbounds %struct.oci_lob_self, %struct.oci_lob_self* %12, i32 0, i32 5
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32* %19, i32** %7, align 8
  %20 = load %struct.oci_lob_self*, %struct.oci_lob_self** %5, align 8
  %21 = getelementptr inbounds %struct.oci_lob_self, %struct.oci_lob_self* %20, i32 0, i32 0
  %22 = load %struct.oci_lob_self*, %struct.oci_lob_self** %21, align 8
  %23 = getelementptr inbounds %struct.oci_lob_self, %struct.oci_lob_self* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.oci_lob_self*, %struct.oci_lob_self** %5, align 8
  %26 = getelementptr inbounds %struct.oci_lob_self, %struct.oci_lob_self* %25, i32 0, i32 0
  %27 = load %struct.oci_lob_self*, %struct.oci_lob_self** %26, align 8
  %28 = getelementptr inbounds %struct.oci_lob_self, %struct.oci_lob_self* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.oci_lob_self*, %struct.oci_lob_self** %5, align 8
  %31 = getelementptr inbounds %struct.oci_lob_self, %struct.oci_lob_self* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @OCILobClose(i32 %24, i32 %29, i32 %32)
  %34 = load %struct.oci_lob_self*, %struct.oci_lob_self** %5, align 8
  %35 = getelementptr inbounds %struct.oci_lob_self, %struct.oci_lob_self* %34, i32 0, i32 1
  %36 = call i32 @zval_ptr_dtor(i32* %35)
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @GC_DELREF(i32* %37)
  %39 = load %struct.oci_lob_self*, %struct.oci_lob_self** %5, align 8
  %40 = getelementptr inbounds %struct.oci_lob_self, %struct.oci_lob_self* %39, i32 0, i32 0
  %41 = load %struct.oci_lob_self*, %struct.oci_lob_self** %40, align 8
  %42 = call i32 @efree(%struct.oci_lob_self* %41)
  %43 = load %struct.oci_lob_self*, %struct.oci_lob_self** %5, align 8
  %44 = call i32 @efree(%struct.oci_lob_self* %43)
  br label %45

45:                                               ; preds = %17, %2
  ret i32 0
}

declare dso_local i32 @OCILobClose(i32, i32, i32) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @GC_DELREF(i32*) #1

declare dso_local i32 @efree(%struct.oci_lob_self*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
