; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/libpqwalreceiver/extr_libpqwalreceiver.c_libpqrcv_receive.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/libpqwalreceiver/extr_libpqwalreceiver.c_libpqrcv_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"could not receive data from WAL stream: %s\00", align 1
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@CONNECTION_BAD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"unexpected result after CommandComplete: %s\00", align 1
@PGRES_COPY_IN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8**, i32*)* @libpqrcv_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libpqrcv_receive(%struct.TYPE_3__* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @PQfreemem(i8* %17)
  br label %19

19:                                               ; preds = %14, %3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i8* null, i8** %21, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i32 @PQgetCopyData(i32 %24, i8** %26, i32 1)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %19
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @PQconsumeInput(i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load i32, i32* @ERROR, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @PQerrorMessage(i32 %40)
  %42 = call i32 @pchomp(i32 %41)
  %43 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = call i32 @ereport(i32 %37, i32 %43)
  br label %45

45:                                               ; preds = %36, %30
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i32 @PQgetCopyData(i32 %48, i8** %50, i32 1)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @PQsocket(i32 %57)
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  store i32 0, i32* %4, align 4
  br label %140

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %60, %19
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %122

64:                                               ; preds = %61
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32* @libpqrcv_PQgetResult(i32 %67)
  store i32* %68, i32** %9, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = call i64 @PQresultStatus(i32* %69)
  %71 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %101

73:                                               ; preds = %64
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @PQclear(i32* %74)
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32* @libpqrcv_PQgetResult(i32 %78)
  store i32* %79, i32** %9, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %100

82:                                               ; preds = %73
  %83 = load i32*, i32** %9, align 8
  %84 = call i32 @PQclear(i32* %83)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @PQstatus(i32 %87)
  %89 = load i64, i64* @CONNECTION_BAD, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  store i32 -1, i32* %4, align 4
  br label %140

92:                                               ; preds = %82
  %93 = load i32, i32* @ERROR, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @PQerrorMessage(i32 %96)
  %98 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = call i32 @ereport(i32 %93, i32 %98)
  br label %100

100:                                              ; preds = %92, %73
  store i32 -1, i32* %4, align 4
  br label %140

101:                                              ; preds = %64
  %102 = load i32*, i32** %9, align 8
  %103 = call i64 @PQresultStatus(i32* %102)
  %104 = load i64, i64* @PGRES_COPY_IN, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32*, i32** %9, align 8
  %108 = call i32 @PQclear(i32* %107)
  store i32 -1, i32* %4, align 4
  br label %140

109:                                              ; preds = %101
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @PQclear(i32* %110)
  %112 = load i32, i32* @ERROR, align 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @PQerrorMessage(i32 %115)
  %117 = call i32 @pchomp(i32 %116)
  %118 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %117)
  %119 = call i32 @ereport(i32 %112, i32 %118)
  br label %120

120:                                              ; preds = %109
  br label %121

121:                                              ; preds = %120
  br label %122

122:                                              ; preds = %121, %61
  %123 = load i32, i32* %8, align 4
  %124 = icmp slt i32 %123, -1
  br i1 %124, label %125, label %134

125:                                              ; preds = %122
  %126 = load i32, i32* @ERROR, align 4
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @PQerrorMessage(i32 %129)
  %131 = call i32 @pchomp(i32 %130)
  %132 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %131)
  %133 = call i32 @ereport(i32 %126, i32 %132)
  br label %134

134:                                              ; preds = %125, %122
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load i8**, i8*** %6, align 8
  store i8* %137, i8** %138, align 8
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %134, %106, %100, %91, %54
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @PQfreemem(i8*) #1

declare dso_local i32 @PQgetCopyData(i32, i8**, i32) #1

declare dso_local i64 @PQconsumeInput(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @pchomp(i32) #1

declare dso_local i32 @PQerrorMessage(i32) #1

declare dso_local i32 @PQsocket(i32) #1

declare dso_local i32* @libpqrcv_PQgetResult(i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i64 @PQstatus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
