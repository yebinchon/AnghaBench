; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_param.c_variable_coerce_param_hook.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_param.c_variable_coerce_param_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i64, i64, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32*, i64** }

@PARAM_EXTERN = common dso_local global i64 0, align 8
@UNKNOWNOID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"there is no parameter $%d\00", align 1
@ERRCODE_AMBIGUOUS_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"inconsistent types deduced for parameter $%d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%s versus %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*, %struct.TYPE_9__*, i64, i32, i32)* @variable_coerce_param_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @variable_coerce_param_hook(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PARAM_EXTERN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %140

20:                                               ; preds = %5
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @UNKNOWNOID, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %140

26:                                               ; preds = %20
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %12, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i64**, i64*** %32, align 8
  %34 = load i64*, i64** %33, align 8
  store i64* %34, i64** %13, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %26
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %41, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %40, %26
  %48 = load i32, i32* @ERROR, align 4
  %49 = load i32, i32* @ERRCODE_UNDEFINED_PARAMETER, align 4
  %50 = call i32 @errcode(i32 %49)
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @parser_errposition(%struct.TYPE_8__* %53, i32 %56)
  %58 = call i32 @ereport(i32 %48, i32 %57)
  br label %59

59:                                               ; preds = %47, %40
  %60 = load i64*, i64** %13, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %60, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @UNKNOWNOID, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %59
  %69 = load i64, i64* %9, align 8
  %70 = load i64*, i64** %13, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %70, i64 %73
  store i64 %69, i64* %74, align 8
  br label %108

75:                                               ; preds = %59
  %76 = load i64*, i64** %13, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %76, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %107

85:                                               ; preds = %75
  %86 = load i32, i32* @ERROR, align 4
  %87 = load i32, i32* @ERRCODE_AMBIGUOUS_PARAMETER, align 4
  %88 = call i32 @errcode(i32 %87)
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i64*, i64** %13, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %91, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @format_type_be(i64 %96)
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @format_type_be(i64 %98)
  %100 = call i32 @errdetail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %97, i32 %99)
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @parser_errposition(%struct.TYPE_8__* %101, i32 %104)
  %106 = call i32 @ereport(i32 %86, i32 %105)
  br label %107

107:                                              ; preds = %85, %84
  br label %108

108:                                              ; preds = %107, %68
  %109 = load i64, i64* %9, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 4
  store i32 -1, i32* %113, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @get_typcollation(i64 %116)
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp sge i32 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %108
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %122
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %127, %122
  %134 = load i32, i32* %11, align 4
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %133, %127, %108
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %139 = bitcast %struct.TYPE_9__* %138 to i32*
  store i32* %139, i32** %6, align 8
  br label %141

140:                                              ; preds = %20, %5
  store i32* null, i32** %6, align 8
  br label %141

141:                                              ; preds = %140, %137
  %142 = load i32*, i32** %6, align 8
  ret i32* %142
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @parser_errposition(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @errdetail(i8*, i32, i32) #1

declare dso_local i32 @format_type_be(i64) #1

declare dso_local i32 @get_typcollation(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
