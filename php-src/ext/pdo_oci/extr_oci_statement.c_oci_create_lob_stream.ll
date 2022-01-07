; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_statement.c_oci_create_lob_stream.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_statement.c_oci_create_lob_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.oci_lob_self = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_7__*, %struct.TYPE_8__*, i32* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@oci_blob_stream_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"r+b\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_8__*, i32*)* @oci_create_lob_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @oci_create_lob_stream(i32* %0, %struct.TYPE_8__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.oci_lob_self*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = call i8* @ecalloc(i32 1, i32 40)
  %12 = bitcast i8* %11 to %struct.oci_lob_self*
  store %struct.oci_lob_self* %12, %struct.oci_lob_self** %9, align 8
  %13 = load %struct.oci_lob_self*, %struct.oci_lob_self** %9, align 8
  %14 = getelementptr inbounds %struct.oci_lob_self, %struct.oci_lob_self* %13, i32 0, i32 1
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @ZVAL_COPY_VALUE(i32* %14, i32* %15)
  %17 = load i32*, i32** %7, align 8
  %18 = load %struct.oci_lob_self*, %struct.oci_lob_self** %9, align 8
  %19 = getelementptr inbounds %struct.oci_lob_self, %struct.oci_lob_self* %18, i32 0, i32 5
  store i32* %17, i32** %19, align 8
  %20 = load %struct.oci_lob_self*, %struct.oci_lob_self** %9, align 8
  %21 = getelementptr inbounds %struct.oci_lob_self, %struct.oci_lob_self* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = load %struct.oci_lob_self*, %struct.oci_lob_self** %9, align 8
  %24 = getelementptr inbounds %struct.oci_lob_self, %struct.oci_lob_self* %23, i32 0, i32 4
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %24, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_9__*
  %29 = load %struct.oci_lob_self*, %struct.oci_lob_self** %9, align 8
  %30 = getelementptr inbounds %struct.oci_lob_self, %struct.oci_lob_self* %29, i32 0, i32 2
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %30, align 8
  %31 = call i8* @ecalloc(i32 1, i32 4)
  %32 = bitcast i8* %31 to %struct.TYPE_7__*
  %33 = load %struct.oci_lob_self*, %struct.oci_lob_self** %9, align 8
  %34 = getelementptr inbounds %struct.oci_lob_self, %struct.oci_lob_self* %33, i32 0, i32 3
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %34, align 8
  %35 = load %struct.oci_lob_self*, %struct.oci_lob_self** %9, align 8
  %36 = getelementptr inbounds %struct.oci_lob_self, %struct.oci_lob_self* %35, i32 0, i32 2
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.oci_lob_self*, %struct.oci_lob_self** %9, align 8
  %43 = getelementptr inbounds %struct.oci_lob_self, %struct.oci_lob_self* %42, i32 0, i32 3
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  store i32 %41, i32* %45, align 4
  %46 = load %struct.oci_lob_self*, %struct.oci_lob_self** %9, align 8
  %47 = getelementptr inbounds %struct.oci_lob_self, %struct.oci_lob_self* %46, i32 0, i32 2
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.oci_lob_self*, %struct.oci_lob_self** %9, align 8
  %52 = getelementptr inbounds %struct.oci_lob_self, %struct.oci_lob_self* %51, i32 0, i32 3
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  %55 = load %struct.oci_lob_self*, %struct.oci_lob_self** %9, align 8
  %56 = call i32* @php_stream_alloc(i32* @oci_blob_stream_ops, %struct.oci_lob_self* %55, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %56, i32** %8, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %3
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i32* %61, i32** %10, align 8
  %62 = load %struct.oci_lob_self*, %struct.oci_lob_self** %9, align 8
  %63 = getelementptr inbounds %struct.oci_lob_self, %struct.oci_lob_self* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @Z_ADDREF(i32 %64)
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @GC_ADDREF(i32* %66)
  %68 = load i32*, i32** %8, align 8
  store i32* %68, i32** %4, align 8
  br label %72

69:                                               ; preds = %3
  %70 = load %struct.oci_lob_self*, %struct.oci_lob_self** %9, align 8
  %71 = call i32 @efree(%struct.oci_lob_self* %70)
  store i32* null, i32** %4, align 8
  br label %72

72:                                               ; preds = %69, %59
  %73 = load i32*, i32** %4, align 8
  ret i32* %73
}

declare dso_local i8* @ecalloc(i32, i32) #1

declare dso_local i32 @ZVAL_COPY_VALUE(i32*, i32*) #1

declare dso_local i32* @php_stream_alloc(i32*, %struct.oci_lob_self*, i32, i8*) #1

declare dso_local i32 @Z_ADDREF(i32) #1

declare dso_local i32 @GC_ADDREF(i32*) #1

declare dso_local i32 @efree(%struct.oci_lob_self*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
