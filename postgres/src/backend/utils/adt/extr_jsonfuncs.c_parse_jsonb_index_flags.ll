; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_parse_jsonb_index_flags.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_parse_jsonb_index_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@WJB_BEGIN_ARRAY = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"wrong flag type, only arrays and scalars are allowed\00", align 1
@WJB_ELEM = common dso_local global i64 0, align 8
@jbvString = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"flag array element is not a string\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"Possible values are: \22string\22, \22numeric\22, \22boolean\22, \22key\22, and \22all\22.\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@jtiAll = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@jtiKey = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@jtiString = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"numeric\00", align 1
@jtiNumeric = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@jtiBool = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"wrong flag in flag array: \22%s\22\00", align 1
@WJB_END_ARRAY = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [29 x i8] c"unexpected end of flag array\00", align 1
@WJB_DONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_jsonb_index_flags(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = call i32* @JsonbIteratorInit(i32* %8)
  store i32* %9, i32** %3, align 8
  %10 = call i64 @JsonbIteratorNext(i32** %3, %struct.TYPE_9__* %4, i32 0)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @WJB_BEGIN_ARRAY, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load i32, i32* @ERROR, align 4
  %16 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %17 = call i32 @errcode(i32 %16)
  %18 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @ereport(i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %14, %1
  br label %21

21:                                               ; preds = %142, %20
  %22 = call i64 @JsonbIteratorNext(i32** %3, %struct.TYPE_9__* %4, i32 0)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* @WJB_ELEM, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %143

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @jbvString, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32, i32* @ERROR, align 4
  %32 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %33 = call i32 @errcode(i32 %32)
  %34 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i32 @errhint(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  %36 = call i32 @ereport(i32 %31, i32 %35)
  br label %37

37:                                               ; preds = %30, %25
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @pg_strncasecmp(i32 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* @jtiAll, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %142

54:                                               ; preds = %43, %37
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @pg_strncasecmp(i32 %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* @jtiKey, align 4
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %141

71:                                               ; preds = %60, %54
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 6
  br i1 %76, label %77, label %88

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @pg_strncasecmp(i32 %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* @jtiString, align 4
  %86 = load i32, i32* %6, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %6, align 4
  br label %140

88:                                               ; preds = %77, %71
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 7
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @pg_strncasecmp(i32 %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 7)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load i32, i32* @jtiNumeric, align 4
  %103 = load i32, i32* %6, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %6, align 4
  br label %139

105:                                              ; preds = %94, %88
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 7
  br i1 %110, label %111, label %122

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @pg_strncasecmp(i32 %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 7)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = load i32, i32* @jtiBool, align 4
  %120 = load i32, i32* %6, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %6, align 4
  br label %138

122:                                              ; preds = %111, %105
  %123 = load i32, i32* @ERROR, align 4
  %124 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %125 = call i32 @errcode(i32 %124)
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @pnstrdup(i32 %129, i32 %133)
  %135 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %134)
  %136 = call i32 @errhint(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  %137 = call i32 @ereport(i32 %123, i32 %136)
  br label %138

138:                                              ; preds = %122, %118
  br label %139

139:                                              ; preds = %138, %101
  br label %140

140:                                              ; preds = %139, %84
  br label %141

141:                                              ; preds = %140, %67
  br label %142

142:                                              ; preds = %141, %50
  br label %21

143:                                              ; preds = %21
  %144 = load i64, i64* %5, align 8
  %145 = load i64, i64* @WJB_END_ARRAY, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load i32, i32* @ERROR, align 4
  %149 = call i32 @elog(i32 %148, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %150

150:                                              ; preds = %147, %143
  %151 = call i64 @JsonbIteratorNext(i32** %3, %struct.TYPE_9__* %4, i32 0)
  store i64 %151, i64* %5, align 8
  %152 = load i64, i64* %5, align 8
  %153 = load i64, i64* @WJB_DONE, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load i32, i32* @ERROR, align 4
  %157 = call i32 @elog(i32 %156, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %158

158:                                              ; preds = %155, %150
  %159 = load i32, i32* %6, align 4
  ret i32 %159
}

declare dso_local i32* @JsonbIteratorInit(i32*) #1

declare dso_local i64 @JsonbIteratorNext(i32**, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i64 @pg_strncasecmp(i32, i8*, i32) #1

declare dso_local i32 @pnstrdup(i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
