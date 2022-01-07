; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_explain.c_show_hash_info.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_explain.c_show_hash_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i64, i32 }
%struct.TYPE_12__ = type { i64, i32, i32 }

@EXPLAIN_FORMAT_TEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"Hash Buckets\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Original Hash Buckets\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Hash Batches\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Original Hash Batches\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Peak Memory Usage\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"kB\00", align 1
@.str.6 = private unnamed_addr constant [79 x i8] c"Buckets: %d (originally %d)  Batches: %d (originally %d)  Memory Usage: %ldkB\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Buckets: %d  Batches: %d  Memory Usage: %ldkB\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_12__*)* @show_hash_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_hash_info(%struct.TYPE_10__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %10 = bitcast %struct.TYPE_11__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 48, i1 false)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ExecHashGetInstrumentation(%struct.TYPE_11__* %5, i32 %18)
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %80

25:                                               ; preds = %20
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %76, %25
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %79

35:                                               ; preds = %29
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i64 %40
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %8, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %35
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  store i64 %49, i64* %50, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  store i64 %53, i64* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i8* @Max(i64 %56, i64 %59)
  %61 = ptrtoint i8* %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 3
  store i64 %65, i64* %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = call i8* @Max(i64 %68, i64 %71)
  %73 = ptrtoint i8* %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 4
  store i64 %73, i64* %74, align 8
  br label %75

75:                                               ; preds = %46, %35
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %29

79:                                               ; preds = %29
  br label %80

80:                                               ; preds = %79, %20
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %168

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 1023
  %88 = sdiv i64 %87, 1024
  store i64 %88, i64* %9, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @EXPLAIN_FORMAT_TEXT, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %98 = call i32 @ExplainPropertyInteger(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* null, i64 %96, %struct.TYPE_12__* %97)
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %102 = call i32 @ExplainPropertyInteger(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* null, i64 %100, %struct.TYPE_12__* %101)
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %106 = call i32 @ExplainPropertyInteger(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* null, i64 %104, %struct.TYPE_12__* %105)
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %110 = call i32 @ExplainPropertyInteger(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* null, i64 %108, %struct.TYPE_12__* %109)
  %111 = load i64, i64* %9, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %113 = call i32 @ExplainPropertyInteger(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 %111, %struct.TYPE_12__* %112)
  br label %167

114:                                              ; preds = %84
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %116, %118
  br i1 %119, label %126, label %120

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %122, %124
  br i1 %125, label %126, label %148

126:                                              ; preds = %120, %114
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = mul nsw i32 %132, 2
  %134 = call i32 @appendStringInfoSpaces(i32 %129, i32 %133)
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %9, align 8
  %147 = call i32 (i32, i8*, i64, i64, i64, ...) @appendStringInfo(i32 %137, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.6, i64 0, i64 0), i64 %139, i64 %141, i64 %143, i64 %145, i64 %146)
  br label %166

148:                                              ; preds = %120
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = mul nsw i32 %154, 2
  %156 = call i32 @appendStringInfoSpaces(i32 %151, i32 %155)
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* %9, align 8
  %165 = call i32 (i32, i8*, i64, i64, i64, ...) @appendStringInfo(i32 %159, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i64 %161, i64 %163, i64 %164)
  br label %166

166:                                              ; preds = %148, %126
  br label %167

167:                                              ; preds = %166, %94
  br label %168

168:                                              ; preds = %167, %80
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ExecHashGetInstrumentation(%struct.TYPE_11__*, i32) #2

declare dso_local i8* @Max(i64, i64) #2

declare dso_local i32 @ExplainPropertyInteger(i8*, i8*, i64, %struct.TYPE_12__*) #2

declare dso_local i32 @appendStringInfoSpaces(i32, i32) #2

declare dso_local i32 @appendStringInfo(i32, i8*, i64, i64, i64, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
