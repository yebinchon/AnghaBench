; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c_pltcl_build_tuple_result.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c_pltcl_build_tuple_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_11__*, i32*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32, i32, i32, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"PL/Tcl function does not return a tuple\00", align 1
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"column name/value list must have even number of elements\00", align 1
@SPI_ERROR_NOATTRIBUTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c".tupno\00", align 1
@ERRCODE_UNDEFINED_COLUMN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"column name/value list contains nonexistent column name \22%s\22\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"cannot set system attribute \22%s\22\00", align 1
@ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"cannot set generated column \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i32, %struct.TYPE_13__*)* @pltcl_build_tuple_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pltcl_build_tuple_result(i32* %0, i32** %1, i32 %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %8, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = icmp ne %struct.TYPE_14__* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %10, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %11, align 8
  br label %45

27:                                               ; preds = %4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = icmp ne %struct.TYPE_11__* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.TYPE_14__* @RelationGetDescr(i32 %37)
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %10, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %40 = call i32* @TupleDescGetAttInMetadata(%struct.TYPE_14__* %39)
  store i32* %40, i32** %11, align 8
  br label %44

41:                                               ; preds = %27
  %42 = load i32, i32* @ERROR, align 4
  %43 = call i32 @elog(i32 %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %10, align 8
  store i32* null, i32** %11, align 8
  br label %44

44:                                               ; preds = %41, %32
  br label %45

45:                                               ; preds = %44, %20
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 8
  %51 = trunc i64 %50 to i32
  %52 = call i64 @palloc0(i32 %51)
  %53 = inttoptr i64 %52 to i8**
  store i8** %53, i8*** %12, align 8
  %54 = load i32, i32* %7, align 4
  %55 = srem i32 %54, 2
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %45
  %58 = load i32, i32* @ERROR, align 4
  %59 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %60 = call i32 @errcode(i32 %59)
  %61 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %62 = call i32 @ereport(i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %57, %45
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %133, %63
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %136

68:                                               ; preds = %64
  %69 = load i32**, i32*** %6, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @Tcl_GetString(i32* %73)
  %75 = call i8* @utf_u2e(i32 %74)
  store i8* %75, i8** %14, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %77 = load i8*, i8** %14, align 8
  %78 = call i32 @SPI_fnumber(%struct.TYPE_14__* %76, i8* %77)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* @SPI_ERROR_NOATTRIBUTE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %68
  %83 = load i8*, i8** %14, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %133

87:                                               ; preds = %82
  %88 = load i32, i32* @ERROR, align 4
  %89 = load i32, i32* @ERRCODE_UNDEFINED_COLUMN, align 4
  %90 = call i32 @errcode(i32 %89)
  %91 = load i8*, i8** %14, align 8
  %92 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i8* %91)
  %93 = call i32 @ereport(i32 %88, i32 %92)
  br label %94

94:                                               ; preds = %87, %68
  %95 = load i32, i32* %15, align 4
  %96 = icmp sle i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load i32, i32* @ERROR, align 4
  %99 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %100 = call i32 @errcode(i32 %99)
  %101 = load i8*, i8** %14, align 8
  %102 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %101)
  %103 = call i32 @ereport(i32 %98, i32 %102)
  br label %104

104:                                              ; preds = %97, %94
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sub nsw i32 %106, 1
  %108 = call %struct.TYPE_15__* @TupleDescAttr(%struct.TYPE_14__* %105, i32 %107)
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %104
  %113 = load i32, i32* @ERROR, align 4
  %114 = load i32, i32* @ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED, align 4
  %115 = call i32 @errcode(i32 %114)
  %116 = load i8*, i8** %14, align 8
  %117 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %116)
  %118 = call i32 @ereport(i32 %113, i32 %117)
  br label %119

119:                                              ; preds = %112, %104
  %120 = load i32**, i32*** %6, align 8
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %120, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @Tcl_GetString(i32* %125)
  %127 = call i8* @utf_u2e(i32 %126)
  %128 = load i8**, i8*** %12, align 8
  %129 = load i32, i32* %15, align 4
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %128, i64 %131
  store i8* %127, i8** %132, align 8
  br label %133

133:                                              ; preds = %119, %86
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, 2
  store i32 %135, i32* %13, align 4
  br label %64

136:                                              ; preds = %64
  %137 = load i32*, i32** %11, align 8
  %138 = load i8**, i8*** %12, align 8
  %139 = call i32 @BuildTupleFromCStrings(i32* %137, i8** %138)
  store i32 %139, i32* %9, align 4
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %164

146:                                              ; preds = %136
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @HeapTupleGetDatum(i32 %147)
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @domain_check(i32 %148, i32 0, i32 %153, i32* %157, i32 %162)
  br label %164

164:                                              ; preds = %146, %136
  %165 = load i32, i32* %9, align 4
  ret i32 %165
}

declare dso_local %struct.TYPE_14__* @RelationGetDescr(i32) #1

declare dso_local i32* @TupleDescGetAttInMetadata(%struct.TYPE_14__*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i8* @utf_u2e(i32) #1

declare dso_local i32 @Tcl_GetString(i32*) #1

declare dso_local i32 @SPI_fnumber(%struct.TYPE_14__*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_15__* @TupleDescAttr(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @BuildTupleFromCStrings(i32*, i8**) #1

declare dso_local i32 @domain_check(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @HeapTupleGetDatum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
