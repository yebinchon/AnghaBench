; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_statement.c_oci_stmt_get_col.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_oci/extr_oci_statement.c_oci_stmt_get_col.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64, i8*, i64 }

@SQLT_BLOB = common dso_local global i64 0, align 8
@SQLT_CLOB = common dso_local global i64 0, align 8
@OCI_LOB_READONLY = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"column %d data was too large for buffer and was truncated to fit it\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i8**, i64*, i32*)* @oci_stmt_get_col to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oci_stmt_get_col(%struct.TYPE_8__* %0, i32 %1, i8** %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %12, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %22
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %13, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i8**, i8*** %9, align 8
  store i8* null, i8** %29, align 8
  %30 = load i64*, i64** %10, align 8
  store i64 0, i64* %30, align 8
  store i32 1, i32* %6, align 4
  br label %106

31:                                               ; preds = %5
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %94

36:                                               ; preds = %31
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SQLT_BLOB, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SQLT_CLOB, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %85

48:                                               ; preds = %42, %36
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %78

53:                                               ; preds = %48
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = call i64 @oci_create_lob_stream(i32* %55, %struct.TYPE_8__* %56, i32* %60)
  %62 = inttoptr i64 %61 to i8*
  %63 = load i8**, i8*** %9, align 8
  store i8* %62, i8** %63, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = bitcast i8* %74 to i32*
  %76 = load i32, i32* @OCI_LOB_READONLY, align 4
  %77 = call i32 @OCILobOpen(i32 %68, i32 %71, i32* %75, i32 %76)
  br label %78

78:                                               ; preds = %53, %48
  %79 = load i64*, i64** %10, align 8
  store i64 0, i64* %79, align 8
  %80 = load i8**, i8*** %9, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 1, i32 0
  store i32 %84, i32* %6, align 4
  br label %106

85:                                               ; preds = %42
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = load i8**, i8*** %9, align 8
  store i8* %88, i8** %89, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load i64*, i64** %10, align 8
  store i64 %92, i64* %93, align 8
  store i32 1, i32* %6, align 4
  br label %106

94:                                               ; preds = %31
  %95 = load i32, i32* @E_WARNING, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @php_error_docref(i32* null, i32 %95, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = load i8**, i8*** %9, align 8
  store i8* %100, i8** %101, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %10, align 8
  store i64 %104, i64* %105, align 8
  store i32 1, i32* %6, align 4
  br label %106

106:                                              ; preds = %94, %85, %78, %28
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i64 @oci_create_lob_stream(i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @OCILobOpen(i32, i32, i32*, i32) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
