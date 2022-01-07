; ModuleID = '/home/carl/AnghaBench/postgres/contrib/tablefunc/extr_tablefunc.c_validateConnectbyTupleDesc.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/tablefunc/extr_tablefunc.c_validateConnectbyTupleDesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@CONNECTBY_NCOLS = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid return type\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Query-specified return tuple has wrong number of columns.\00", align 1
@CONNECTBY_NCOLS_NOBRANCH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"First two columns must be the same type.\00", align 1
@INT4OID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Third column must be type %s.\00", align 1
@TEXTOID = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"Fourth column must be type %s.\00", align 1
@.str.5 = private unnamed_addr constant [83 x i8] c"query-specified return tuple not valid for Connectby: fifth column must be type %s\00", align 1
@.str.6 = private unnamed_addr constant [84 x i8] c"query-specified return tuple not valid for Connectby: fourth column must be type %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32)* @validateConnectbyTupleDesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validateConnectbyTupleDesc(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %11

11:                                               ; preds = %10, %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %11
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CONNECTBY_NCOLS, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = icmp ne i64 %17, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %26 = call i32 @errcode(i32 %25)
  %27 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @ereport(i32 %24, i32 %28)
  br label %30

30:                                               ; preds = %23, %14
  br label %48

31:                                               ; preds = %11
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CONNECTBY_NCOLS_NOBRANCH, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = icmp ne i64 %34, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %43 = call i32 @errcode(i32 %42)
  %44 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %46 = call i32 @ereport(i32 %41, i32 %45)
  br label %47

47:                                               ; preds = %40, %31
  br label %48

48:                                               ; preds = %47, %30
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = call %struct.TYPE_6__* @TupleDescAttr(%struct.TYPE_5__* %49, i32 0)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = call %struct.TYPE_6__* @TupleDescAttr(%struct.TYPE_5__* %53, i32 1)
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %52, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %48
  %59 = load i32, i32* @ERROR, align 4
  %60 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %61 = call i32 @errcode(i32 %60)
  %62 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %63 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %64 = call i32 @ereport(i32 %59, i32 %63)
  br label %65

65:                                               ; preds = %58, %48
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = call %struct.TYPE_6__* @TupleDescAttr(%struct.TYPE_5__* %66, i32 2)
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @INT4OID, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %65
  %73 = load i32, i32* @ERROR, align 4
  %74 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %75 = call i32 @errcode(i32 %74)
  %76 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %77 = load i64, i64* @INT4OID, align 8
  %78 = call i32 @format_type_be(i64 %77)
  %79 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = call i32 @ereport(i32 %73, i32 %79)
  br label %81

81:                                               ; preds = %72, %65
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %81
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %86 = call %struct.TYPE_6__* @TupleDescAttr(%struct.TYPE_5__* %85, i32 3)
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @TEXTOID, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %84
  %92 = load i32, i32* @ERROR, align 4
  %93 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %94 = call i32 @errcode(i32 %93)
  %95 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %96 = load i64, i64* @TEXTOID, align 8
  %97 = call i32 @format_type_be(i64 %96)
  %98 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  %99 = call i32 @ereport(i32 %92, i32 %98)
  br label %100

100:                                              ; preds = %91, %84, %81
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %121

103:                                              ; preds = %100
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %103
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %108 = call %struct.TYPE_6__* @TupleDescAttr(%struct.TYPE_5__* %107, i32 4)
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @INT4OID, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %106
  %114 = load i32, i32* @ERROR, align 4
  %115 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %116 = call i32 @errcode(i32 %115)
  %117 = load i64, i64* @INT4OID, align 8
  %118 = call i32 @format_type_be(i64 %117)
  %119 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.5, i64 0, i64 0), i32 %118)
  %120 = call i32 @ereport(i32 %114, i32 %119)
  br label %121

121:                                              ; preds = %113, %106, %103, %100
  %122 = load i32, i32* %5, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %142, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %124
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %129 = call %struct.TYPE_6__* @TupleDescAttr(%struct.TYPE_5__* %128, i32 3)
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @INT4OID, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %127
  %135 = load i32, i32* @ERROR, align 4
  %136 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %137 = call i32 @errcode(i32 %136)
  %138 = load i64, i64* @INT4OID, align 8
  %139 = call i32 @format_type_be(i64 %138)
  %140 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.6, i64 0, i64 0), i32 %139)
  %141 = call i32 @ereport(i32 %135, i32 %140)
  br label %142

142:                                              ; preds = %134, %127, %124, %121
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errdetail(i8*, ...) #1

declare dso_local %struct.TYPE_6__* @TupleDescAttr(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @format_type_be(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
