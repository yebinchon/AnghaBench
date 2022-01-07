; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_unixFileControl.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_unixFileControl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i32, i32, i32, i8*, i32, i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@UNIXFILE_PERSIST_WAL = common dso_local global i32 0, align 4
@UNIXFILE_PSOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@sqlite3GlobalConfig = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@SQLITE_NOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @unixFileControl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unixFileControl(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %8, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %124 [
    i32 137, label %15
    i32 129, label %22
    i32 139, label %29
    i32 133, label %36
    i32 135, label %45
    i32 134, label %52
    i32 131, label %59
    i32 132, label %69
    i32 136, label %91
  ]

15:                                               ; preds = %3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @SQLITE_OK, align 4
  store i32 %21, i32* %4, align 4
  br label %126

22:                                               ; preds = %3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @SQLITE_OK, align 4
  store i32 %28, i32* %4, align 4
  br label %126

29:                                               ; preds = %3
  %30 = load i8*, i8** %7, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @SQLITE_OK, align 4
  store i32 %35, i32* %4, align 4
  br label %126

36:                                               ; preds = %3
  %37 = call i32 @SimulateIOErrorBenign(i32 1)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = bitcast i8* %39 to i8**
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @fcntlSizeHint(%struct.TYPE_7__* %38, i8* %41)
  store i32 %42, i32* %9, align 4
  %43 = call i32 @SimulateIOErrorBenign(i32 0)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %126

45:                                               ; preds = %3
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = load i32, i32* @UNIXFILE_PERSIST_WAL, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = bitcast i8* %48 to i32*
  %50 = call i32 @unixModeBit(%struct.TYPE_7__* %46, i32 %47, i32* %49)
  %51 = load i32, i32* @SQLITE_OK, align 4
  store i32 %51, i32* %4, align 4
  br label %126

52:                                               ; preds = %3
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %54 = load i32, i32* @UNIXFILE_PSOW, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = call i32 @unixModeBit(%struct.TYPE_7__* %53, i32 %54, i32* %56)
  %58 = load i32, i32* @SQLITE_OK, align 4
  store i32 %58, i32* %4, align 4
  br label %126

59:                                               ; preds = %3
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 6
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i8*, i8** %7, align 8
  %67 = bitcast i8* %66 to i8**
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* @SQLITE_OK, align 4
  store i32 %68, i32* %4, align 4
  br label %126

69:                                               ; preds = %3
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 6
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @sqlite3_malloc(i32 %74)
  store i8* %75, i8** %10, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %69
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 6
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @unixGetTempname(i32 %83, i8* %84)
  %86 = load i8*, i8** %10, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = bitcast i8* %87 to i8**
  store i8* %86, i8** %88, align 8
  br label %89

89:                                               ; preds = %78, %69
  %90 = load i32, i32* @SQLITE_OK, align 4
  store i32 %90, i32* %4, align 4
  br label %126

91:                                               ; preds = %3
  %92 = load i8*, i8** %7, align 8
  %93 = bitcast i8* %92 to i8**
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %11, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sqlite3GlobalConfig, i32 0, i32 0), align 8
  %97 = icmp ugt i8* %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sqlite3GlobalConfig, i32 0, i32 0), align 8
  store i8* %99, i8** %11, align 8
  br label %100

100:                                              ; preds = %98, %91
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 5
  %103 = load i8*, i8** %102, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = bitcast i8* %104 to i8**
  store i8* %103, i8** %105, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = icmp uge i8* %106, null
  br i1 %107, label %108, label %122

108:                                              ; preds = %100
  %109 = load i8*, i8** %11, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 5
  store i8* %109, i8** %111, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 3
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ult i8* %112, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %108
  %118 = load i8*, i8** %11, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 3
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %117, %108
  br label %122

122:                                              ; preds = %121, %100
  %123 = load i32, i32* @SQLITE_OK, align 4
  store i32 %123, i32* %4, align 4
  br label %126

124:                                              ; preds = %3
  %125 = load i32, i32* @SQLITE_NOTFOUND, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %124, %122, %89, %59, %52, %45, %36, %29, %22, %15
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @SimulateIOErrorBenign(i32) #1

declare dso_local i32 @fcntlSizeHint(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @unixModeBit(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i32) #1

declare dso_local i8* @sqlite3_malloc(i32) #1

declare dso_local i32 @unixGetTempname(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
