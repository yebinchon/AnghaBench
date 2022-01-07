; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_populate_scalar.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_populate_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_21__, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_27__*, %struct.TYPE_20__ }
%struct.TYPE_27__ = type { i64, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__, i32, i64, %struct.TYPE_22__ }
%struct.TYPE_23__ = type { i32, i32* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i8*, i64 }
%struct.TYPE_25__ = type { i8* }
%struct.TYPE_28__ = type { i32 }

@JSONOID = common dso_local global i64 0, align 8
@JSONBOID = common dso_local global i64 0, align 8
@JSON_TOKEN_STRING = common dso_local global i64 0, align 8
@jbvBinary = common dso_local global i64 0, align 8
@jbvString = common dso_local global i64 0, align 8
@jbvBool = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@jbvNumeric = common dso_local global i64 0, align 8
@numeric_out = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"unrecognized jsonb type: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, i64, i32, %struct.TYPE_19__*)* @populate_scalar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @populate_scalar(%struct.TYPE_26__* %0, i64 %1, i32 %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_25__, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca %struct.TYPE_28__*, align 8
  %17 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %9, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %83

22:                                               ; preds = %4
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %13, align 4
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %12, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = call i32 @Assert(i8* %33)
  %35 = load i32, i32* %13, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %22
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %39, 1
  %41 = trunc i64 %40 to i32
  %42 = call i8* @palloc(i32 %41)
  store i8* %42, i8** %11, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @memcpy(i8* %43, i8* %44, i32 %45)
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8 0, i8* %50, align 1
  br label %53

51:                                               ; preds = %22
  %52 = load i8*, i8** %12, align 8
  store i8* %52, i8** %11, align 8
  br label %53

53:                                               ; preds = %51, %37
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @JSONOID, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @JSONBOID, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %57, %53
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @JSON_TOKEN_STRING, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %61
  %70 = call i32 @initStringInfo(%struct.TYPE_25__* %14)
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 @escape_json(%struct.TYPE_25__* %14, i8* %71)
  %73 = load i8*, i8** %11, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = icmp ne i8* %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @pfree(i8* %77)
  br label %79

79:                                               ; preds = %76, %69
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %11, align 8
  br label %82

82:                                               ; preds = %79, %61, %57
  br label %193

83:                                               ; preds = %4
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %86, align 8
  store %struct.TYPE_27__* %87, %struct.TYPE_27__** %15, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @JSONBOID, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %93 = call %struct.TYPE_28__* @JsonbValueToJsonb(%struct.TYPE_27__* %92)
  store %struct.TYPE_28__* %93, %struct.TYPE_28__** %16, align 8
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %95 = call i32 @JsonbPGetDatum(%struct.TYPE_28__* %94)
  store i32 %95, i32* %5, align 4
  br label %210

96:                                               ; preds = %83
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* @JSONOID, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %114

100:                                              ; preds = %96
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @jbvBinary, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %100
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %108 = call %struct.TYPE_28__* @JsonbValueToJsonb(%struct.TYPE_27__* %107)
  store %struct.TYPE_28__* %108, %struct.TYPE_28__** %17, align 8
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %112 = call i32 @VARSIZE(%struct.TYPE_28__* %111)
  %113 = call i8* @JsonbToCString(i32* null, i32* %110, i32 %112)
  store i8* %113, i8** %11, align 8
  br label %191

114:                                              ; preds = %100, %96
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @jbvString, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %114
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i8* @pnstrdup(i32 %125, i32 %130)
  store i8* %131, i8** %11, align 8
  br label %190

132:                                              ; preds = %114
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @jbvBool, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %132
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  %146 = call i8* @pstrdup(i8* %145)
  store i8* %146, i8** %11, align 8
  br label %189

147:                                              ; preds = %132
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @jbvNumeric, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %162

153:                                              ; preds = %147
  %154 = load i32, i32* @numeric_out, align 4
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @PointerGetDatum(i32 %158)
  %160 = call i32 @DirectFunctionCall1(i32 %154, i32 %159)
  %161 = call i8* @DatumGetCString(i32 %160)
  store i8* %161, i8** %11, align 8
  br label %188

162:                                              ; preds = %147
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @jbvBinary, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %180

168:                                              ; preds = %162
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %175 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i8* @JsonbToCString(i32* null, i32* %173, i32 %178)
  store i8* %179, i8** %11, align 8
  br label %187

180:                                              ; preds = %162
  %181 = load i32, i32* @ERROR, align 4
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %183 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = trunc i64 %184 to i32
  %186 = call i32 @elog(i32 %181, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %185)
  br label %187

187:                                              ; preds = %180, %168
  br label %188

188:                                              ; preds = %187, %153
  br label %189

189:                                              ; preds = %188, %138
  br label %190

190:                                              ; preds = %189, %120
  br label %191

191:                                              ; preds = %190, %106
  br label %192

192:                                              ; preds = %191
  br label %193

193:                                              ; preds = %192, %82
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i32 0, i32 1
  %196 = load i8*, i8** %11, align 8
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @InputFunctionCall(i32* %195, i8* %196, i32 %199, i32 %200)
  store i32 %201, i32* %10, align 4
  %202 = load i8*, i8** %11, align 8
  %203 = load i8*, i8** %12, align 8
  %204 = icmp ne i8* %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %193
  %206 = load i8*, i8** %11, align 8
  %207 = call i32 @pfree(i8* %206)
  br label %208

208:                                              ; preds = %205, %193
  %209 = load i32, i32* %10, align 4
  store i32 %209, i32* %5, align 4
  br label %210

210:                                              ; preds = %208, %91
  %211 = load i32, i32* %5, align 4
  ret i32 %211
}

declare dso_local i32 @Assert(i8*) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_25__*) #1

declare dso_local i32 @escape_json(%struct.TYPE_25__*, i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local %struct.TYPE_28__* @JsonbValueToJsonb(%struct.TYPE_27__*) #1

declare dso_local i32 @JsonbPGetDatum(%struct.TYPE_28__*) #1

declare dso_local i8* @JsonbToCString(i32*, i32*, i32) #1

declare dso_local i32 @VARSIZE(%struct.TYPE_28__*) #1

declare dso_local i8* @pnstrdup(i32, i32) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i8* @DatumGetCString(i32) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @InputFunctionCall(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
