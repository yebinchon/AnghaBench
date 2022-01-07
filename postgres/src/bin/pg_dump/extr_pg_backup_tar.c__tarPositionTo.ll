; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_tar.c__tarPositionTo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_tar.c__tarPositionTo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i32, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i64, i64, i32 }

@INT64_FORMAT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [59 x i8] c"moving from position %s to next member at file position %s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"now at file position %s\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"could not find header for file \22%s\22 in tar archive\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"skipping tar member %s\00", align 1
@REQ_DATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [130 x i8] c"restoring data out of order is not supported in this archive format: \22%s\22 is required, but comes before \22%s\22 in the archive file.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_14__*, i8*)* @_tarPositionTo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @_tarPositionTo(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8, align 1
  %9 = alloca [512 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca [100 x i8], align 16
  %15 = alloca [100 x i8], align 16
  %16 = alloca [100 x i8], align 16
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i8* %1, i8** %5, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %6, align 8
  %21 = call %struct.TYPE_13__* @pg_malloc0(i32 32)
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %7, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 3
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %24, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %2
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %31 = load i8*, i8** @INT64_FORMAT, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @snprintf(i8* %30, i32 100, i8* %31, i32 %35)
  %37 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %38 = load i8*, i8** @INT64_FORMAT, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @snprintf(i8* %37, i32 100, i8* %38, i32 %42)
  %44 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %45 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %46 = call i32 (i8*, i8*, ...) @pg_log_debug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %45)
  br label %47

47:                                               ; preds = %55, %29
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %50, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @_tarReadRaw(%struct.TYPE_14__* %56, i8* %8, i32 1, i32* null, i32 %59)
  br label %47

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61, %2
  %63 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %64 = load i8*, i8** @INT64_FORMAT, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @snprintf(i8* %63, i32 100, i8* %64, i32 %68)
  %70 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %71 = call i32 (i8*, i8*, ...) @pg_log_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %74 = call i32 @_tarGetHeader(%struct.TYPE_14__* %72, %struct.TYPE_13__* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %62
  %77 = load i8*, i8** %5, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %80)
  br label %85

82:                                               ; preds = %76
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %84 = call i32 @free(%struct.TYPE_13__* %83)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %168

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85, %62
  br label %87

87:                                               ; preds = %151, %86
  %88 = load i8*, i8** %5, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = call i64 @strcmp(i8* %93, i8* %94)
  %96 = icmp ne i64 %95, 0
  br label %97

97:                                               ; preds = %90, %87
  %98 = phi i1 [ false, %87 ], [ %96, %90 ]
  br i1 %98, label %99, label %152

99:                                               ; preds = %97
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (i8*, i8*, ...) @pg_log_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %102)
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @atoi(i8* %106)
  store i32 %107, i32* %13, align 4
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @TocIDRequired(%struct.TYPE_14__* %108, i32 %109)
  %111 = load i32, i32* @REQ_DATA, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %99
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.4, i64 0, i64 0), i8* %117, i8* %118)
  br label %120

120:                                              ; preds = %114, %99
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 511
  %125 = and i32 %124, -512
  %126 = sext i32 %125 to i64
  store i64 %126, i64* %11, align 8
  %127 = load i64, i64* %11, align 8
  %128 = lshr i64 %127, 9
  store i64 %128, i64* %12, align 8
  store i64 0, i64* %10, align 8
  br label %129

129:                                              ; preds = %140, %120
  %130 = load i64, i64* %10, align 8
  %131 = load i64, i64* %12, align 8
  %132 = icmp ult i64 %130, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %129
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %135 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @_tarReadRaw(%struct.TYPE_14__* %134, i8* %135, i32 512, i32* null, i32 %138)
  br label %140

140:                                              ; preds = %133
  %141 = load i64, i64* %10, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %10, align 8
  br label %129

143:                                              ; preds = %129
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %146 = call i32 @_tarGetHeader(%struct.TYPE_14__* %144, %struct.TYPE_13__* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %143
  %149 = load i8*, i8** %5, align 8
  %150 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %149)
  br label %151

151:                                              ; preds = %148, %143
  br label %87

152:                                              ; preds = %97
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, 511
  %160 = and i32 %159, -512
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %155, %161
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 1
  store i64 %162, i64* %164, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 2
  store i64 0, i64* %166, align 8
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %167, %struct.TYPE_13__** %3, align 8
  br label %168

168:                                              ; preds = %152, %82
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %169
}

declare dso_local %struct.TYPE_13__* @pg_malloc0(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @pg_log_debug(i8*, i8*, ...) #1

declare dso_local i32 @_tarReadRaw(%struct.TYPE_14__*, i8*, i32, i32*, i32) #1

declare dso_local i32 @_tarGetHeader(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @fatal(i8*, i8*, ...) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @TocIDRequired(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
