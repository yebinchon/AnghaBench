; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_CopyReadAttributesCSV.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_CopyReadAttributesCSV.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i8*, i32, i8**, i32, %struct.TYPE_8__, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, i8*, i32 }
%struct.TYPE_6__ = type { i64, i8* }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_BAD_COPY_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"extra data after last expected column\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"unterminated CSV quoted field\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @CopyReadAttributesCSV to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CopyReadAttributesCSV(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %4, align 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %5, align 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  store i8 %32, i8* %6, align 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i32, i32* @ERROR, align 4
  %45 = load i32, i32* @ERRCODE_BAD_COPY_FILE_FORMAT, align 4
  %46 = call i32 @errcode(i32 %45)
  %47 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %48 = call i32 @ereport(i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %43, %37
  store i32 0, i32* %2, align 4
  br label %269

50:                                               ; preds = %1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 6
  %53 = call i32 @resetStringInfo(%struct.TYPE_8__* %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sle i64 %57, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %50
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 6
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @enlargeStringInfo(%struct.TYPE_8__* %65, i64 %69)
  br label %71

71:                                               ; preds = %63, %50
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %8, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %9, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i8, i8* %83, i64 %87
  store i8* %88, i8** %10, align 8
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %246, %71
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = icmp sge i32 %90, %93
  br i1 %94, label %95, label %112

95:                                               ; preds = %89
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 %98, 2
  store i32 %99, i32* %97, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 4
  %102 = load i8**, i8*** %101, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 8
  %108 = trunc i64 %107 to i32
  %109 = call i8** @repalloc(i8** %102, i32 %108)
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 4
  store i8** %109, i8*** %111, align 8
  br label %112

112:                                              ; preds = %95, %89
  %113 = load i8*, i8** %9, align 8
  store i8* %113, i8** %13, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 4
  %117 = load i8**, i8*** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  store i8* %114, i8** %120, align 8
  br label %121

121:                                              ; preds = %207, %112
  br label %122

122:                                              ; preds = %145, %121
  %123 = load i8*, i8** %9, align 8
  store i8* %123, i8** %14, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = icmp uge i8* %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %208

128:                                              ; preds = %122
  %129 = load i8*, i8** %9, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %9, align 8
  %131 = load i8, i8* %129, align 1
  store i8 %131, i8* %16, align 1
  %132 = load i8, i8* %16, align 1
  %133 = sext i8 %132 to i32
  %134 = load i8, i8* %4, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %128
  store i32 1, i32* %11, align 4
  br label %208

138:                                              ; preds = %128
  %139 = load i8, i8* %16, align 1
  %140 = sext i8 %139 to i32
  %141 = load i8, i8* %5, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  store i32 1, i32* %12, align 4
  br label %149

145:                                              ; preds = %138
  %146 = load i8, i8* %16, align 1
  %147 = load i8*, i8** %8, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %8, align 8
  store i8 %146, i8* %147, align 1
  br label %122

149:                                              ; preds = %144
  br label %150

150:                                              ; preds = %203, %188, %149
  %151 = load i8*, i8** %9, align 8
  store i8* %151, i8** %14, align 8
  %152 = load i8*, i8** %9, align 8
  %153 = load i8*, i8** %10, align 8
  %154 = icmp uge i8* %152, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load i32, i32* @ERROR, align 4
  %157 = load i32, i32* @ERRCODE_BAD_COPY_FILE_FORMAT, align 4
  %158 = call i32 @errcode(i32 %157)
  %159 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %160 = call i32 @ereport(i32 %156, i32 %159)
  br label %161

161:                                              ; preds = %155, %150
  %162 = load i8*, i8** %9, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %9, align 8
  %164 = load i8, i8* %162, align 1
  store i8 %164, i8* %16, align 1
  %165 = load i8, i8* %16, align 1
  %166 = sext i8 %165 to i32
  %167 = load i8, i8* %6, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %166, %168
  br i1 %169, label %170, label %196

170:                                              ; preds = %161
  %171 = load i8*, i8** %9, align 8
  %172 = load i8*, i8** %10, align 8
  %173 = icmp ult i8* %171, %172
  br i1 %173, label %174, label %195

174:                                              ; preds = %170
  %175 = load i8*, i8** %9, align 8
  %176 = load i8, i8* %175, align 1
  store i8 %176, i8* %17, align 1
  %177 = load i8, i8* %17, align 1
  %178 = sext i8 %177 to i32
  %179 = load i8, i8* %6, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %178, %180
  br i1 %181, label %188, label %182

182:                                              ; preds = %174
  %183 = load i8, i8* %17, align 1
  %184 = sext i8 %183 to i32
  %185 = load i8, i8* %5, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %184, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %182, %174
  %189 = load i8, i8* %17, align 1
  %190 = load i8*, i8** %8, align 8
  %191 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %191, i8** %8, align 8
  store i8 %189, i8* %190, align 1
  %192 = load i8*, i8** %9, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %9, align 8
  br label %150

194:                                              ; preds = %182
  br label %195

195:                                              ; preds = %194, %170
  br label %196

196:                                              ; preds = %195, %161
  %197 = load i8, i8* %16, align 1
  %198 = sext i8 %197 to i32
  %199 = load i8, i8* %5, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %198, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %196
  br label %207

203:                                              ; preds = %196
  %204 = load i8, i8* %16, align 1
  %205 = load i8*, i8** %8, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %8, align 8
  store i8 %204, i8* %205, align 1
  br label %150

207:                                              ; preds = %202
  br label %121

208:                                              ; preds = %137, %127
  %209 = load i8*, i8** %8, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %8, align 8
  store i8 0, i8* %209, align 1
  %211 = load i8*, i8** %14, align 8
  %212 = load i8*, i8** %13, align 8
  %213 = ptrtoint i8* %211 to i64
  %214 = ptrtoint i8* %212 to i64
  %215 = sub i64 %213, %214
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %15, align 4
  %217 = load i32, i32* %12, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %240, label %219

219:                                              ; preds = %208
  %220 = load i32, i32* %15, align 4
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 8
  %224 = icmp eq i32 %220, %223
  br i1 %224, label %225, label %240

225:                                              ; preds = %219
  %226 = load i8*, i8** %13, align 8
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 7
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %15, align 4
  %231 = call i64 @strncmp(i8* %226, i32 %229, i32 %230)
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %225
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 4
  %236 = load i8**, i8*** %235, align 8
  %237 = load i32, i32* %7, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8*, i8** %236, i64 %238
  store i8* null, i8** %239, align 8
  br label %240

240:                                              ; preds = %233, %225, %219, %208
  %241 = load i32, i32* %7, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %7, align 4
  %243 = load i32, i32* %11, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %240
  br label %247

246:                                              ; preds = %240
  br label %89

247:                                              ; preds = %245
  %248 = load i8*, i8** %8, align 8
  %249 = getelementptr inbounds i8, i8* %248, i32 -1
  store i8* %249, i8** %8, align 8
  %250 = load i8*, i8** %8, align 8
  %251 = load i8, i8* %250, align 1
  %252 = sext i8 %251 to i32
  %253 = icmp eq i32 %252, 0
  %254 = zext i1 %253 to i32
  %255 = call i32 @Assert(i32 %254)
  %256 = load i8*, i8** %8, align 8
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 6
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 1
  %260 = load i8*, i8** %259, align 8
  %261 = ptrtoint i8* %256 to i64
  %262 = ptrtoint i8* %260 to i64
  %263 = sub i64 %261, %262
  %264 = trunc i64 %263 to i32
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 6
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 2
  store i32 %264, i32* %267, align 8
  %268 = load i32, i32* %7, align 4
  store i32 %268, i32* %2, align 4
  br label %269

269:                                              ; preds = %247, %49
  %270 = load i32, i32* %2, align 4
  ret i32 %270
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @resetStringInfo(%struct.TYPE_8__*) #1

declare dso_local i32 @enlargeStringInfo(%struct.TYPE_8__*, i64) #1

declare dso_local i8** @repalloc(i8**, i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
