; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_parse.c_parsetext.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_parse.c_parsetext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_13__, i64, i32, i64, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@MAXSTRLEN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"word is too long to be indexed\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Words longer than %d characters are ignored.\00", align 1
@TSL_ADDPOS = common dso_local global i32 0, align 4
@TSL_PREFIX = common dso_local global i32 0, align 4
@NOTICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parsetext(i32 %0, %struct.TYPE_18__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %11, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.TYPE_16__* @lookup_ts_config_cache(i32 %18)
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %14, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_14__* @lookup_ts_parser_cache(i32 %22)
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %15, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 2
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @PointerGetDatum(i8* %26)
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @Int32GetDatum(i32 %28)
  %30 = call i32 @FunctionCall2(i32* %25, i32 %27, i32 %29)
  %31 = call i64 @DatumGetPointer(i32 %30)
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %16, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %34 = call i32 @LexizeInit(i32* %12, %struct.TYPE_16__* %33)
  br label %35

35:                                               ; preds = %196, %4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load i8*, i8** %16, align 8
  %39 = call i32 @PointerGetDatum(i8* %38)
  %40 = bitcast i8** %11 to i8*
  %41 = call i32 @PointerGetDatum(i8* %40)
  %42 = bitcast i32* %10 to i8*
  %43 = call i32 @PointerGetDatum(i8* %42)
  %44 = call i32 @FunctionCall3(i32* %37, i32 %39, i32 %41, i32 %43)
  %45 = call i32 @DatumGetInt32(i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %35
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @MAXSTRLEN, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i32, i32* @ERROR, align 4
  %54 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %55 = call i32 @errcode(i32 %54)
  %56 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @MAXSTRLEN, align 4
  %58 = call i32 @errdetail(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = call i32 @ereport(i32 %53, i32 %58)
  br label %60

60:                                               ; preds = %52, %48, %35
  %61 = load i32, i32* %9, align 4
  %62 = load i8*, i8** %11, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @LexizeAddLemm(i32* %12, i32 %61, i8* %62, i32 %63)
  br label %65

65:                                               ; preds = %192, %60
  %66 = call %struct.TYPE_15__* @LexizeExec(i32* %12, i32* null)
  store %struct.TYPE_15__* %66, %struct.TYPE_15__** %13, align 8
  %67 = icmp ne %struct.TYPE_15__* %66, null
  br i1 %67, label %68, label %195

68:                                               ; preds = %65
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %69, %struct.TYPE_15__** %17, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %117, %68
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %192

79:                                               ; preds = %74
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %82, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %79
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = mul i64 %90, 2
  store i64 %91, i64* %89, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %93, align 8
  %95 = bitcast %struct.TYPE_17__* %94 to i8*
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = mul i64 %98, 40
  %100 = trunc i64 %99 to i32
  %101 = call i64 @repalloc(i8* %95, i32 %100)
  %102 = inttoptr i64 %101 to %struct.TYPE_17__*
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 3
  store %struct.TYPE_17__* %102, %struct.TYPE_17__** %104, align 8
  br label %105

105:                                              ; preds = %87, %79
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @TSL_ADDPOS, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %112, %105
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @strlen(i64 %120)
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %123, align 8
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 5
  store i32 %121, i32* %129, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %134, align 8
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 4
  store i64 %132, i64* %140, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %145, align 8
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 3
  store i32 %143, i32* %151, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @TSL_PREFIX, align 4
  %156 = and i32 %154, %155
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 3
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %158, align 8
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 0
  store i32 %156, i32* %164, align 8
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 3
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %166, align 8
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 2
  store i64 0, i64* %172, align 8
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @LIMITPOS(i32 %175)
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 3
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %178, align 8
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  store i32 %176, i32* %185, align 4
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 1
  store %struct.TYPE_15__* %187, %struct.TYPE_15__** %17, align 8
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %189, align 8
  br label %74

192:                                              ; preds = %74
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %194 = call i32 @pfree(%struct.TYPE_15__* %193)
  br label %65

195:                                              ; preds = %65
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %9, align 4
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %35, label %199

199:                                              ; preds = %196
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  %202 = load i8*, i8** %16, align 8
  %203 = call i32 @PointerGetDatum(i8* %202)
  %204 = call i32 @FunctionCall1(i32* %201, i32 %203)
  ret void
}

declare dso_local %struct.TYPE_16__* @lookup_ts_config_cache(i32) #1

declare dso_local %struct.TYPE_14__* @lookup_ts_parser_cache(i32) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @FunctionCall2(i32*, i32, i32) #1

declare dso_local i32 @PointerGetDatum(i8*) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @LexizeInit(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @DatumGetInt32(i32) #1

declare dso_local i32 @FunctionCall3(i32*, i32, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*, i32) #1

declare dso_local i32 @LexizeAddLemm(i32*, i32, i8*, i32) #1

declare dso_local %struct.TYPE_15__* @LexizeExec(i32*, i32*) #1

declare dso_local i64 @repalloc(i8*, i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @LIMITPOS(i32) #1

declare dso_local i32 @pfree(%struct.TYPE_15__*) #1

declare dso_local i32 @FunctionCall1(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
