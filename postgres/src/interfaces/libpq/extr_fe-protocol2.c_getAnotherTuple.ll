; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol2.c_getAnotherTuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol2.c_getAnotherTuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_15__*, i32, i64, i64, i64, i64, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, i64 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4
@NULL_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"out of memory for query result\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@PGRES_FATAL_ERROR = common dso_local global i32 0, align 4
@PGASYNC_READY = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32)* @getAnotherTuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getAnotherTuple(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca [64 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %6, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  store i8* %24, i8** %11, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %9, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %28, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %2
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 16
  %38 = trunc i64 %37 to i32
  %39 = call i64 @realloc(%struct.TYPE_16__* %34, i32 %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %9, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %42 = icmp ne %struct.TYPE_16__* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  store i8* null, i8** %8, align 8
  br label %202

44:                                               ; preds = %33
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 8
  store %struct.TYPE_16__* %45, %struct.TYPE_16__** %47, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %44, %2
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %51
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %70, %57
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %58

73:                                               ; preds = %58
  br label %74

74:                                               ; preds = %73, %51
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @BITS_PER_BYTE, align 4
  %77 = add nsw i32 %75, %76
  %78 = sub nsw i32 %77, 1
  %79 = load i32, i32* @BITS_PER_BYTE, align 4
  %80 = sdiv i32 %78, %79
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %13, align 8
  %82 = load i64, i64* %13, align 8
  %83 = icmp ugt i64 %82, 64
  br i1 %83, label %84, label %92

84:                                               ; preds = %74
  %85 = load i64, i64* %13, align 8
  %86 = call i64 @malloc(i64 %85)
  %87 = inttoptr i64 %86 to i8*
  store i8* %87, i8** %11, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  store i8* null, i8** %8, align 8
  br label %202

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91, %74
  %93 = load i8*, i8** %11, align 8
  %94 = load i64, i64* %13, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %96 = call i64 @pqGetnchar(i8* %93, i64 %94, %struct.TYPE_17__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %228

99:                                               ; preds = %92
  store i32 0, i32* %15, align 4
  %100 = load i8*, i8** %11, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  store i8 %104, i8* %14, align 1
  store i32 0, i32* %16, align 4
  store i32 0, i32* %12, align 4
  br label %105

105:                                              ; preds = %181, %99
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %184

109:                                              ; preds = %105
  %110 = load i8, i8* %14, align 1
  %111 = sext i8 %110 to i32
  %112 = and i32 %111, 128
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* @NULL_LEN, align 4
  store i32 %115, i32* %17, align 4
  br label %133

116:                                              ; preds = %109
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %118 = call i64 @pqGetInt(i32* %17, i32 4, %struct.TYPE_17__* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  br label %228

121:                                              ; preds = %116
  %122 = load i32, i32* %5, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %17, align 4
  %126 = sub nsw i32 %125, 4
  store i32 %126, i32* %17, align 4
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i32, i32* %17, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 0, i32* %17, align 4
  br label %131

131:                                              ; preds = %130, %127
  br label %132

132:                                              ; preds = %131
  br label %133

133:                                              ; preds = %132, %114
  %134 = load i32, i32* %17, align 4
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  store i32 %134, i32* %139, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 7
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 6
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %142, %145
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 1
  store i64 %146, i64* %151, align 8
  %152 = load i32, i32* %17, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %133
  %155 = load i32, i32* %17, align 4
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %157 = call i64 @pqSkipnchar(i32 %155, %struct.TYPE_17__* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %228

160:                                              ; preds = %154
  br label %161

161:                                              ; preds = %160, %133
  %162 = load i32, i32* %16, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %16, align 4
  %164 = load i32, i32* %16, align 4
  %165 = load i32, i32* @BITS_PER_BYTE, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %161
  %168 = load i32, i32* %15, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %15, align 4
  %170 = load i8*, i8** %11, align 8
  %171 = load i32, i32* %15, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = load i8, i8* %173, align 1
  store i8 %174, i8* %14, align 1
  store i32 0, i32* %16, align 4
  br label %180

175:                                              ; preds = %161
  %176 = load i8, i8* %14, align 1
  %177 = sext i8 %176 to i32
  %178 = shl i32 %177, 1
  %179 = trunc i32 %178 to i8
  store i8 %179, i8* %14, align 1
  br label %180

180:                                              ; preds = %175, %167
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %12, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %12, align 4
  br label %105

184:                                              ; preds = %105
  %185 = load i8*, i8** %11, align 8
  %186 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %187 = icmp ne i8* %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = load i8*, i8** %11, align 8
  %190 = call i32 @free(i8* %189)
  br label %191

191:                                              ; preds = %188, %184
  store i8* null, i8** %11, align 8
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 6
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 5
  store i64 %194, i64* %196, align 8
  store i8* null, i8** %8, align 8
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %198 = call i64 @pqRowProcessor(%struct.TYPE_17__* %197, i8** %8)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %191
  store i32 0, i32* %3, align 4
  br label %240

201:                                              ; preds = %191
  br label %208

202:                                              ; preds = %90, %43
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 4
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 5
  store i64 %205, i64* %207, align 8
  br label %208

208:                                              ; preds = %202, %201
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %210 = call i32 @pqClearAsyncResult(%struct.TYPE_17__* %209)
  %211 = load i8*, i8** %8, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %215, label %213

213:                                              ; preds = %208
  %214 = call i8* @libpq_gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i8* %214, i8** %8, align 8
  br label %215

215:                                              ; preds = %213, %208
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 3
  %218 = load i8*, i8** %8, align 8
  %219 = call i32 @printfPQExpBuffer(i32* %217, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %218)
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %221 = load i32, i32* @PGRES_FATAL_ERROR, align 4
  %222 = call %struct.TYPE_15__* @PQmakeEmptyPGresult(%struct.TYPE_17__* %220, i32 %221)
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 2
  store %struct.TYPE_15__* %222, %struct.TYPE_15__** %224, align 8
  %225 = load i32, i32* @PGASYNC_READY, align 4
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 1
  store i32 %225, i32* %227, align 4
  br label %228

228:                                              ; preds = %215, %159, %120, %98
  %229 = load i8*, i8** %11, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %238

231:                                              ; preds = %228
  %232 = load i8*, i8** %11, align 8
  %233 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %234 = icmp ne i8* %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %231
  %236 = load i8*, i8** %11, align 8
  %237 = call i32 @free(i8* %236)
  br label %238

238:                                              ; preds = %235, %231, %228
  %239 = load i32, i32* @EOF, align 4
  store i32 %239, i32* %3, align 4
  br label %240

240:                                              ; preds = %238, %200
  %241 = load i32, i32* %3, align 4
  ret i32 %241
}

declare dso_local i64 @realloc(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @pqGetnchar(i8*, i64, %struct.TYPE_17__*) #1

declare dso_local i64 @pqGetInt(i32*, i32, %struct.TYPE_17__*) #1

declare dso_local i64 @pqSkipnchar(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @pqRowProcessor(%struct.TYPE_17__*, i8**) #1

declare dso_local i32 @pqClearAsyncResult(%struct.TYPE_17__*) #1

declare dso_local i8* @libpq_gettext(i8*) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i8*, i8*) #1

declare dso_local %struct.TYPE_15__* @PQmakeEmptyPGresult(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
