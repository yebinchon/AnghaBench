; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/libpqwalreceiver/extr_libpqwalreceiver.c_libpqrcv_startstreaming.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/libpqwalreceiver/extr_libpqwalreceiver.c_libpqrcv_startstreaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_17__ = type { i64, i8*, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { i8*, i32* }
%struct.TYPE_18__ = type { i8* }

@.str = private unnamed_addr constant [18 x i8] c"START_REPLICATION\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" SLOT \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" LOGICAL\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" %X/%X\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"proto_version '%u'\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"could not start WAL streaming: %s\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c", publication_names %s\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c" TIMELINE %u\00", align 1
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@PGRES_COPY_BOTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)* @libpqrcv_startstreaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libpqrcv_startstreaming(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @Assert(i32 %18)
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %24, %2
  %31 = phi i1 [ true, %2 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @Assert(i32 %32)
  %34 = call i32 @initStringInfo(%struct.TYPE_18__* %6)
  %35 = call i32 @appendStringInfoString(%struct.TYPE_18__* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %30
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (%struct.TYPE_18__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_18__* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %40, %30
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 @appendStringInfoString(%struct.TYPE_18__* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %45
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = ashr i32 %55, 32
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (%struct.TYPE_18__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_18__* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %58, i32 %61)
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %123

67:                                               ; preds = %52
  %68 = call i32 @appendStringInfoString(%struct.TYPE_18__* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (%struct.TYPE_18__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_18__* %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %73)
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** %9, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = call i8* @stringlist_to_identifierstr(i32 %82, i32* %83)
  store i8* %84, i8** %8, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %96, label %87

87:                                               ; preds = %67
  %88 = load i32, i32* @ERROR, align 4
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @PQerrorMessage(i32 %91)
  %93 = call i32 @pchomp(i32 %92)
  %94 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %93)
  %95 = call i32 @ereport(i32 %88, i32 %94)
  br label %96

96:                                               ; preds = %87, %67
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 @strlen(i8* %101)
  %103 = call i8* @PQescapeLiteral(i32 %99, i8* %100, i32 %102)
  store i8* %103, i8** %10, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %115, label %106

106:                                              ; preds = %96
  %107 = load i32, i32* @ERROR, align 4
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @PQerrorMessage(i32 %110)
  %112 = call i32 @pchomp(i32 %111)
  %113 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %112)
  %114 = call i32 @ereport(i32 %107, i32 %113)
  br label %115

115:                                              ; preds = %106, %96
  %116 = load i8*, i8** %10, align 8
  %117 = call i32 (%struct.TYPE_18__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_18__* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %116)
  %118 = load i8*, i8** %10, align 8
  %119 = call i32 @PQfreemem(i8* %118)
  %120 = load i8*, i8** %8, align 8
  %121 = call i32 @pfree(i8* %120)
  %122 = call i32 @appendStringInfoChar(%struct.TYPE_18__* %6, i8 signext 41)
  br label %130

123:                                              ; preds = %52
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 (%struct.TYPE_18__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_18__* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %128)
  br label %130

130:                                              ; preds = %123, %115
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i32* @libpqrcv_PQexec(i32 %133, i8* %135)
  store i32* %136, i32** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @pfree(i8* %138)
  %140 = load i32*, i32** %7, align 8
  %141 = call i64 @PQresultStatus(i32* %140)
  %142 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %130
  %145 = load i32*, i32** %7, align 8
  %146 = call i32 @PQclear(i32* %145)
  store i32 0, i32* %3, align 4
  br label %167

147:                                              ; preds = %130
  %148 = load i32*, i32** %7, align 8
  %149 = call i64 @PQresultStatus(i32* %148)
  %150 = load i64, i64* @PGRES_COPY_BOTH, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %163

152:                                              ; preds = %147
  %153 = load i32*, i32** %7, align 8
  %154 = call i32 @PQclear(i32* %153)
  %155 = load i32, i32* @ERROR, align 4
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @PQerrorMessage(i32 %158)
  %160 = call i32 @pchomp(i32 %159)
  %161 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %160)
  %162 = call i32 @ereport(i32 %155, i32 %161)
  br label %163

163:                                              ; preds = %152, %147
  br label %164

164:                                              ; preds = %163
  %165 = load i32*, i32** %7, align 8
  %166 = call i32 @PQclear(i32* %165)
  store i32 1, i32* %3, align 4
  br label %167

167:                                              ; preds = %164, %144
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_18__*) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_18__*, i8*, i8*, ...) #1

declare dso_local i8* @stringlist_to_identifierstr(i32, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @pchomp(i32) #1

declare dso_local i32 @PQerrorMessage(i32) #1

declare dso_local i8* @PQescapeLiteral(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @PQfreemem(i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @appendStringInfoChar(%struct.TYPE_18__*, i8 signext) #1

declare dso_local i32* @libpqrcv_PQexec(i32, i8*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
