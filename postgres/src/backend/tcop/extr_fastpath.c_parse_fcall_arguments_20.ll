; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_fastpath.c_parse_fcall_arguments_20.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_fastpath.c_parse_fcall_arguments_20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fp_info = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_12__ = type { i64, i64 }

@FUNC_MAX_ARGS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROTOCOL_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"function call message contains %d arguments but function requires %d\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"invalid argument size %d in function call message\00", align 1
@ERRCODE_INVALID_BINARY_REPRESENTATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"incorrect binary data format in function argument %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fp_info*, %struct.TYPE_13__*)* @parse_fcall_arguments_20 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_fcall_arguments_20(i32 %0, %struct.fp_info* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fp_info*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.fp_info* %1, %struct.fp_info** %5, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @pq_getmsgint(i32 %13, i32 4)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.fp_info*, %struct.fp_info** %5, align 8
  %16 = getelementptr inbounds %struct.fp_info, %struct.fp_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @FUNC_MAX_ARGS, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21, %3
  %26 = load i32, i32* @ERROR, align 4
  %27 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %28 = call i32 @errcode(i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.fp_info*, %struct.fp_info** %5, align 8
  %31 = getelementptr inbounds %struct.fp_info, %struct.fp_info* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %33)
  %35 = call i32 @ereport(i32 %26, i32 %34)
  br label %36

36:                                               ; preds = %25, %21
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = call i32 @initStringInfo(%struct.TYPE_12__* %9)
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %124, %36
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %127

45:                                               ; preds = %41
  %46 = load %struct.fp_info*, %struct.fp_info** %5, align 8
  %47 = getelementptr inbounds %struct.fp_info, %struct.fp_info* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @getTypeBinaryInputInfo(i32 %52, i32* %11, i32* %12)
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @pq_getmsgint(i32 %54, i32 4)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %76

58:                                               ; preds = %45
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i8* @OidReceiveFunctionCall(i32 %66, %struct.TYPE_12__* null, i32 %67, i32 -1)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  store i8* %68, i8** %75, align 8
  br label %124

76:                                               ; preds = %45
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %76
  %87 = load i32, i32* @ERROR, align 4
  %88 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %89 = call i32 @errcode(i32 %88)
  %90 = load i32, i32* %10, align 4
  %91 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = call i32 @ereport(i32 %87, i32 %91)
  br label %93

93:                                               ; preds = %86, %76
  %94 = call i32 @resetStringInfo(%struct.TYPE_12__* %9)
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @pq_getmsgbytes(i32 %95, i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @appendBinaryStringInfo(%struct.TYPE_12__* %9, i32 %97, i32 %98)
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i8* @OidReceiveFunctionCall(i32 %100, %struct.TYPE_12__* %9, i32 %101, i32 -1)
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  store i8* %102, i8** %109, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %111, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %93
  %116 = load i32, i32* @ERROR, align 4
  %117 = load i32, i32* @ERRCODE_INVALID_BINARY_REPRESENTATION, align 4
  %118 = call i32 @errcode(i32 %117)
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  %121 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  %122 = call i32 @ereport(i32 %116, i32 %121)
  br label %123

123:                                              ; preds = %115, %93
  br label %124

124:                                              ; preds = %123, %58
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %41

127:                                              ; preds = %41
  ret i32 1
}

declare dso_local i32 @pq_getmsgint(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_12__*) #1

declare dso_local i32 @getTypeBinaryInputInfo(i32, i32*, i32*) #1

declare dso_local i8* @OidReceiveFunctionCall(i32, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @resetStringInfo(%struct.TYPE_12__*) #1

declare dso_local i32 @appendBinaryStringInfo(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @pq_getmsgbytes(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
