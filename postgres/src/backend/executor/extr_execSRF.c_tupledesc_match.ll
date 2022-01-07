; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execSRF.c_tupledesc_match.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execSRF.c_tupledesc_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"function return row and query-specified return row do not match\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Returned row contains %d attribute, but query expects %d.\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Returned row contains %d attributes, but query expects %d.\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Returned type %s at ordinal position %d, but query expects %s.\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"Physical storage mismatch on dropped attribute at ordinal position %d.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_7__*)* @tupledesc_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tupledesc_match(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %10, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load i32, i32* @ERROR, align 4
  %17 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %18 = call i32 @errcode(i32 %17)
  %19 = call i32 @errmsg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @errdetail_plural(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32 %25, i32 %28)
  %30 = call i32 @ereport(i32 %16, i32 %29)
  br label %31

31:                                               ; preds = %15, %2
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %102, %31
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %105

38:                                               ; preds = %32
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call %struct.TYPE_8__* @TupleDescAttr(%struct.TYPE_7__* %39, i32 %40)
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %6, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call %struct.TYPE_8__* @TupleDescAttr(%struct.TYPE_7__* %42, i32 %43)
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %7, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @IsBinaryCoercible(i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %38
  br label %102

54:                                               ; preds = %38
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @ERROR, align 4
  %61 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %62 = call i32 @errcode(i32 %61)
  %63 = call i32 @errmsg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @format_type_be(i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @format_type_be(i32 %72)
  %74 = call i32 (i8*, i32, ...) @errdetail(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %69, i32 %73)
  %75 = call i32 @ereport(i32 %60, i32 %74)
  br label %76

76:                                               ; preds = %59, %54
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %79, %82
  br i1 %83, label %92, label %84

84:                                               ; preds = %76
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %84, %76
  %93 = load i32, i32* @ERROR, align 4
  %94 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %95 = call i32 @errcode(i32 %94)
  %96 = call i32 @errmsg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  %99 = call i32 (i8*, i32, ...) @errdetail(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  %100 = call i32 @ereport(i32 %93, i32 %99)
  br label %101

101:                                              ; preds = %92, %84
  br label %102

102:                                              ; preds = %101, %53
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %32

105:                                              ; preds = %32
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail_plural(i8*, i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @TupleDescAttr(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @IsBinaryCoercible(i32, i32) #1

declare dso_local i32 @errdetail(i8*, i32, ...) #1

declare dso_local i32 @format_type_be(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
