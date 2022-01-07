; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_get_jsonb_path_all.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_get_jsonb_path_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32* }

@TEXTOID = common dso_local global i32 0, align 4
@VARHDRSZ = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@INT_MIN = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"not a jsonb array\00", align 1
@jbvBinary = common dso_local global i64 0, align 8
@jbvNull = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_26__* (i32, i32)* @get_jsonb_path_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_26__* @get_jsonb_path_all(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_26__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca %struct.TYPE_25__, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_26__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %23 = call %struct.TYPE_26__* @PG_GETARG_JSONB_P(i32 0)
  store %struct.TYPE_26__* %23, %struct.TYPE_26__** %6, align 8
  %24 = call i32* @PG_GETARG_ARRAYTYPE_P(i32 1)
  store i32* %24, i32** %7, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %14, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @array_contains_nulls(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = call i32 (...) @PG_RETURN_NULL()
  br label %30

30:                                               ; preds = %28, %2
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @TEXTOID, align 4
  %33 = call i32 @deconstruct_array(i32* %31, i32 %32, i32 -1, i32 0, i8 signext 105, %struct.TYPE_26__*** %8, i32** %9, i32* %10)
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 0
  store i32* %35, i32** %16, align 8
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %37 = call i64 @JB_ROOT_IS_OBJECT(%struct.TYPE_26__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 1, i32* %12, align 4
  br label %68

40:                                               ; preds = %30
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %42 = call i64 @JB_ROOT_IS_ARRAY(%struct.TYPE_26__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %46 = call i64 @JB_ROOT_IS_SCALAR(%struct.TYPE_26__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i32 1, i32* %13, align 4
  br label %67

49:                                               ; preds = %44, %40
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %51 = call i64 @JB_ROOT_IS_ARRAY(%struct.TYPE_26__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %55 = call i64 @JB_ROOT_IS_SCALAR(%struct.TYPE_26__* %54)
  %56 = icmp ne i64 %55, 0
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i1 [ false, %49 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @Assert(i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = icmp sle i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32*, i32** %16, align 8
  %65 = call %struct.TYPE_25__* @getIthJsonbValueFromContainer(i32* %64, i64 0)
  store %struct.TYPE_25__* %65, %struct.TYPE_25__** %14, align 8
  br label %66

66:                                               ; preds = %63, %57
  br label %67

67:                                               ; preds = %66, %48
  br label %68

68:                                               ; preds = %67, %39
  %69 = load i32, i32* %10, align 4
  %70 = icmp sle i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %68
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %73 = icmp eq %struct.TYPE_25__* %72, null
  br i1 %73, label %74, label %88

74:                                               ; preds = %71
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i32*, i32** %16, align 8
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %80 = call i64 @VARSIZE(%struct.TYPE_26__* %79)
  %81 = call i32 @JsonbToCString(i32* null, i32* %78, i64 %80)
  %82 = call i32 @cstring_to_text(i32 %81)
  %83 = call i32 @PG_RETURN_TEXT_P(i32 %82)
  br label %87

84:                                               ; preds = %74
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %86 = call i32 @PG_RETURN_JSONB_P(%struct.TYPE_26__* %85)
  br label %87

87:                                               ; preds = %84, %77
  br label %88

88:                                               ; preds = %87, %71, %68
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %218, %88
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %221

93:                                               ; preds = %89
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %93
  %97 = load i32*, i32** %16, align 8
  %98 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %8, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %98, i64 %100
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %101, align 8
  %103 = call i32 @VARDATA(%struct.TYPE_26__* %102)
  %104 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %8, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %104, i64 %106
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %107, align 8
  %109 = call i64 @VARSIZE(%struct.TYPE_26__* %108)
  %110 = load i64, i64* @VARHDRSZ, align 8
  %111 = sub nsw i64 %109, %110
  %112 = call %struct.TYPE_25__* @getKeyJsonValueFromContainer(i32* %97, i32 %103, i64 %111, %struct.TYPE_25__* %15)
  store %struct.TYPE_25__* %112, %struct.TYPE_25__** %14, align 8
  br label %179

113:                                              ; preds = %93
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %176

116:                                              ; preds = %113
  %117 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %8, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %117, i64 %119
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %120, align 8
  %122 = call i8* @TextDatumGetCString(%struct.TYPE_26__* %121)
  store i8* %122, i8** %19, align 8
  store i64 0, i64* @errno, align 8
  %123 = load i8*, i8** %19, align 8
  %124 = call i64 @strtol(i8* %123, i8** %20, i32 10)
  store i64 %124, i64* %17, align 8
  %125 = load i8*, i8** %20, align 8
  %126 = load i8*, i8** %19, align 8
  %127 = icmp eq i8* %125, %126
  br i1 %127, label %144, label %128

128:                                              ; preds = %116
  %129 = load i8*, i8** %20, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %144, label %133

133:                                              ; preds = %128
  %134 = load i64, i64* @errno, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %133
  %137 = load i64, i64* %17, align 8
  %138 = load i64, i64* @INT_MAX, align 8
  %139 = icmp sgt i64 %137, %138
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = load i64, i64* %17, align 8
  %142 = load i64, i64* @INT_MIN, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %140, %136, %133, %128, %116
  %145 = call i32 (...) @PG_RETURN_NULL()
  br label %146

146:                                              ; preds = %144, %140
  %147 = load i64, i64* %17, align 8
  %148 = icmp sge i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = load i64, i64* %17, align 8
  store i64 %150, i64* %18, align 8
  br label %172

151:                                              ; preds = %146
  %152 = load i32*, i32** %16, align 8
  %153 = call i32 @JsonContainerIsArray(i32* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %151
  %156 = load i32, i32* @ERROR, align 4
  %157 = call i32 @elog(i32 %156, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %158

158:                                              ; preds = %155, %151
  %159 = load i32*, i32** %16, align 8
  %160 = call i64 @JsonContainerSize(i32* %159)
  store i64 %160, i64* %21, align 8
  %161 = load i64, i64* %17, align 8
  %162 = sub nsw i64 0, %161
  %163 = load i64, i64* %21, align 8
  %164 = icmp sgt i64 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %158
  %166 = call i32 (...) @PG_RETURN_NULL()
  br label %171

167:                                              ; preds = %158
  %168 = load i64, i64* %21, align 8
  %169 = load i64, i64* %17, align 8
  %170 = add nsw i64 %168, %169
  store i64 %170, i64* %18, align 8
  br label %171

171:                                              ; preds = %167, %165
  br label %172

172:                                              ; preds = %171, %149
  %173 = load i32*, i32** %16, align 8
  %174 = load i64, i64* %18, align 8
  %175 = call %struct.TYPE_25__* @getIthJsonbValueFromContainer(i32* %173, i64 %174)
  store %struct.TYPE_25__* %175, %struct.TYPE_25__** %14, align 8
  br label %178

176:                                              ; preds = %113
  %177 = call i32 (...) @PG_RETURN_NULL()
  br label %178

178:                                              ; preds = %176, %172
  br label %179

179:                                              ; preds = %178, %96
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %181 = icmp eq %struct.TYPE_25__* %180, null
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = call i32 (...) @PG_RETURN_NULL()
  br label %191

184:                                              ; preds = %179
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* %10, align 4
  %187 = sub nsw i32 %186, 1
  %188 = icmp eq i32 %185, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  br label %221

190:                                              ; preds = %184
  br label %191

191:                                              ; preds = %190, %182
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @jbvBinary, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %213

197:                                              ; preds = %191
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  store i32* %202, i32** %16, align 8
  %203 = load i32*, i32** %16, align 8
  %204 = call i32 @JsonContainerIsObject(i32* %203)
  store i32 %204, i32* %12, align 4
  %205 = load i32*, i32** %16, align 8
  %206 = call i32 @JsonContainerIsArray(i32* %205)
  store i32 %206, i32* %13, align 4
  %207 = load i32*, i32** %16, align 8
  %208 = call i32 @JsonContainerIsScalar(i32* %207)
  %209 = icmp ne i32 %208, 0
  %210 = xor i1 %209, true
  %211 = zext i1 %210 to i32
  %212 = call i32 @Assert(i32 %211)
  br label %217

213:                                              ; preds = %191
  %214 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %215 = call i32 @IsAJsonbScalar(%struct.TYPE_25__* %214)
  %216 = call i32 @Assert(i32 %215)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %217

217:                                              ; preds = %213, %197
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %11, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %11, align 4
  br label %89

221:                                              ; preds = %189, %89
  %222 = load i32, i32* %5, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %236

224:                                              ; preds = %221
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %226 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @jbvNull, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %224
  %231 = call i32 (...) @PG_RETURN_NULL()
  br label %232

232:                                              ; preds = %230, %224
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %234 = call i32 @JsonbValueAsText(%struct.TYPE_25__* %233)
  %235 = call i32 @PG_RETURN_TEXT_P(i32 %234)
  br label %241

236:                                              ; preds = %221
  %237 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %238 = call %struct.TYPE_26__* @JsonbValueToJsonb(%struct.TYPE_25__* %237)
  store %struct.TYPE_26__* %238, %struct.TYPE_26__** %22, align 8
  %239 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %240 = call i32 @PG_RETURN_JSONB_P(%struct.TYPE_26__* %239)
  br label %241

241:                                              ; preds = %236, %232
  %242 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  ret %struct.TYPE_26__* %242
}

declare dso_local %struct.TYPE_26__* @PG_GETARG_JSONB_P(i32) #1

declare dso_local i32* @PG_GETARG_ARRAYTYPE_P(i32) #1

declare dso_local i64 @array_contains_nulls(i32*) #1

declare dso_local i32 @PG_RETURN_NULL(...) #1

declare dso_local i32 @deconstruct_array(i32*, i32, i32, i32, i8 signext, %struct.TYPE_26__***, i32**, i32*) #1

declare dso_local i64 @JB_ROOT_IS_OBJECT(%struct.TYPE_26__*) #1

declare dso_local i64 @JB_ROOT_IS_ARRAY(%struct.TYPE_26__*) #1

declare dso_local i64 @JB_ROOT_IS_SCALAR(%struct.TYPE_26__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_25__* @getIthJsonbValueFromContainer(i32*, i64) #1

declare dso_local i32 @PG_RETURN_TEXT_P(i32) #1

declare dso_local i32 @cstring_to_text(i32) #1

declare dso_local i32 @JsonbToCString(i32*, i32*, i64) #1

declare dso_local i64 @VARSIZE(%struct.TYPE_26__*) #1

declare dso_local i32 @PG_RETURN_JSONB_P(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_25__* @getKeyJsonValueFromContainer(i32*, i32, i64, %struct.TYPE_25__*) #1

declare dso_local i32 @VARDATA(%struct.TYPE_26__*) #1

declare dso_local i8* @TextDatumGetCString(%struct.TYPE_26__*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @JsonContainerIsArray(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @JsonContainerSize(i32*) #1

declare dso_local i32 @JsonContainerIsObject(i32*) #1

declare dso_local i32 @JsonContainerIsScalar(i32*) #1

declare dso_local i32 @IsAJsonbScalar(%struct.TYPE_25__*) #1

declare dso_local i32 @JsonbValueAsText(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_26__* @JsonbValueToJsonb(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
