; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_text_substring.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_varlena.c_text_substring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SUBSTRING_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"negative substring length not allowed\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VARHDRSZ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"invalid backend encoding: encoding max length < 1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32, i32)* @text_substring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @text_substring(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %25 = call i32 (...) @pg_database_encoding_max_length()
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %63

29:                                               ; preds = %4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @Max(i32 %30, i32 1)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 -1, i32* %13, align 4
  br label %57

35:                                               ; preds = %29
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load i32, i32* @ERROR, align 4
  %44 = load i32, i32* @ERRCODE_SUBSTRING_ERROR, align 4
  %45 = call i32 @errcode(i32 %44)
  %46 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %47 = call i32 @ereport(i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %42, %35
  %49 = load i32, i32* %14, align 4
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32* @cstring_to_text(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32* %52, i32** %5, align 8
  br label %247

53:                                               ; preds = %48
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %12, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %53, %34
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %12, align 4
  %60 = sub nsw i32 %59, 1
  %61 = load i32, i32* %13, align 4
  %62 = call i32* @DatumGetTextPSlice(i32 %58, i32 %60, i32 %61)
  store i32* %62, i32** %5, align 8
  br label %247

63:                                               ; preds = %4
  %64 = load i32, i32* %10, align 4
  %65 = icmp sgt i32 %64, 1
  br i1 %65, label %66, label %242

66:                                               ; preds = %63
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @Max(i32 %67, i32 1)
  store i32 %68, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %16, align 4
  br label %99

72:                                               ; preds = %66
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %24, align 4
  %76 = load i32, i32* %24, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i32, i32* @ERROR, align 4
  %81 = load i32, i32* @ERRCODE_SUBSTRING_ERROR, align 4
  %82 = call i32 @errcode(i32 %81)
  %83 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %84 = call i32 @ereport(i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %79, %72
  %86 = load i32, i32* %24, align 4
  %87 = icmp slt i32 %86, 1
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = call i32* @cstring_to_text(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32* %89, i32** %5, align 8
  br label %247

90:                                               ; preds = %85
  %91 = load i32, i32* %24, align 4
  %92 = load i32, i32* %12, align 4
  %93 = sub nsw i32 %91, %92
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* %10, align 4
  %98 = mul nsw i32 %96, %97
  store i32 %98, i32* %16, align 4
  br label %99

99:                                               ; preds = %90, %71
  %100 = load i32, i32* %6, align 4
  %101 = call i64 @DatumGetPointer(i32 %100)
  %102 = call i64 @VARATT_IS_COMPRESSED(i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* %6, align 4
  %106 = call i64 @DatumGetPointer(i32 %105)
  %107 = call i64 @VARATT_IS_EXTERNAL(i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104, %99
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %16, align 4
  %113 = call i32* @DatumGetTextPSlice(i32 %110, i32 %111, i32 %112)
  store i32* %113, i32** %18, align 8
  br label %118

114:                                              ; preds = %104
  %115 = load i32, i32* %6, align 4
  %116 = call i64 @DatumGetPointer(i32 %115)
  %117 = inttoptr i64 %116 to i32*
  store i32* %117, i32** %18, align 8
  br label %118

118:                                              ; preds = %114, %109
  %119 = load i32*, i32** %18, align 8
  %120 = call i64 @VARSIZE_ANY_EXHDR(i32* %119)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %118
  %123 = load i32*, i32** %18, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i64 @DatumGetPointer(i32 %124)
  %126 = inttoptr i64 %125 to i32*
  %127 = icmp ne i32* %123, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load i32*, i32** %18, align 8
  %130 = call i32 @pfree(i32* %129)
  br label %131

131:                                              ; preds = %128, %122
  %132 = call i32* @cstring_to_text(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32* %132, i32** %5, align 8
  br label %247

133:                                              ; preds = %118
  %134 = load i32*, i32** %18, align 8
  %135 = call i8* @VARDATA_ANY(i32* %134)
  %136 = load i32*, i32** %18, align 8
  %137 = call i64 @VARSIZE_ANY_EXHDR(i32* %136)
  %138 = call i32 @pg_mbstrlen_with_len(i8* %135, i64 %137)
  store i32 %138, i32* %17, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %17, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %142, label %153

142:                                              ; preds = %133
  %143 = load i32*, i32** %18, align 8
  %144 = load i32, i32* %6, align 4
  %145 = call i64 @DatumGetPointer(i32 %144)
  %146 = inttoptr i64 %145 to i32*
  %147 = icmp ne i32* %143, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load i32*, i32** %18, align 8
  %150 = call i32 @pfree(i32* %149)
  br label %151

151:                                              ; preds = %148, %142
  %152 = call i32* @cstring_to_text(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32* %152, i32** %5, align 8
  br label %247

153:                                              ; preds = %133
  %154 = load i32, i32* %13, align 4
  %155 = icmp sgt i32 %154, -1
  br i1 %155, label %156, label %165

156:                                              ; preds = %153
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %157, %158
  %160 = load i32, i32* %15, align 4
  %161 = add nsw i32 %160, 1
  %162 = load i32, i32* %17, align 4
  %163 = add nsw i32 %161, %162
  %164 = call i32 @Min(i32 %159, i32 %163)
  store i32 %164, i32* %19, align 4
  br label %170

165:                                              ; preds = %153
  %166 = load i32, i32* %15, align 4
  %167 = add nsw i32 %166, 1
  %168 = load i32, i32* %17, align 4
  %169 = add nsw i32 %167, %168
  store i32 %169, i32* %19, align 4
  br label %170

170:                                              ; preds = %165, %156
  %171 = load i32*, i32** %18, align 8
  %172 = call i8* @VARDATA_ANY(i32* %171)
  store i8* %172, i8** %21, align 8
  store i32 0, i32* %20, align 4
  br label %173

173:                                              ; preds = %184, %170
  %174 = load i32, i32* %20, align 4
  %175 = load i32, i32* %12, align 4
  %176 = sub nsw i32 %175, 1
  %177 = icmp slt i32 %174, %176
  br i1 %177, label %178, label %187

178:                                              ; preds = %173
  %179 = load i8*, i8** %21, align 8
  %180 = call i32 @pg_mblen(i8* %179)
  %181 = load i8*, i8** %21, align 8
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i8, i8* %181, i64 %182
  store i8* %183, i8** %21, align 8
  br label %184

184:                                              ; preds = %178
  %185 = load i32, i32* %20, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %20, align 4
  br label %173

187:                                              ; preds = %173
  %188 = load i8*, i8** %21, align 8
  store i8* %188, i8** %22, align 8
  %189 = load i32, i32* %12, align 4
  store i32 %189, i32* %20, align 4
  br label %190

190:                                              ; preds = %200, %187
  %191 = load i32, i32* %20, align 4
  %192 = load i32, i32* %19, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %203

194:                                              ; preds = %190
  %195 = load i8*, i8** %21, align 8
  %196 = call i32 @pg_mblen(i8* %195)
  %197 = load i8*, i8** %21, align 8
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  store i8* %199, i8** %21, align 8
  br label %200

200:                                              ; preds = %194
  %201 = load i32, i32* %20, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %20, align 4
  br label %190

203:                                              ; preds = %190
  %204 = load i64, i64* @VARHDRSZ, align 8
  %205 = load i8*, i8** %21, align 8
  %206 = load i8*, i8** %22, align 8
  %207 = ptrtoint i8* %205 to i64
  %208 = ptrtoint i8* %206 to i64
  %209 = sub i64 %207, %208
  %210 = add nsw i64 %204, %209
  %211 = call i64 @palloc(i64 %210)
  %212 = inttoptr i64 %211 to i32*
  store i32* %212, i32** %23, align 8
  %213 = load i32*, i32** %23, align 8
  %214 = load i64, i64* @VARHDRSZ, align 8
  %215 = load i8*, i8** %21, align 8
  %216 = load i8*, i8** %22, align 8
  %217 = ptrtoint i8* %215 to i64
  %218 = ptrtoint i8* %216 to i64
  %219 = sub i64 %217, %218
  %220 = add nsw i64 %214, %219
  %221 = call i32 @SET_VARSIZE(i32* %213, i64 %220)
  %222 = load i32*, i32** %23, align 8
  %223 = call i32 @VARDATA(i32* %222)
  %224 = load i8*, i8** %22, align 8
  %225 = load i8*, i8** %21, align 8
  %226 = load i8*, i8** %22, align 8
  %227 = ptrtoint i8* %225 to i64
  %228 = ptrtoint i8* %226 to i64
  %229 = sub i64 %227, %228
  %230 = trunc i64 %229 to i32
  %231 = call i32 @memcpy(i32 %223, i8* %224, i32 %230)
  %232 = load i32*, i32** %18, align 8
  %233 = load i32, i32* %6, align 4
  %234 = call i64 @DatumGetPointer(i32 %233)
  %235 = inttoptr i64 %234 to i32*
  %236 = icmp ne i32* %232, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %203
  %238 = load i32*, i32** %18, align 8
  %239 = call i32 @pfree(i32* %238)
  br label %240

240:                                              ; preds = %237, %203
  %241 = load i32*, i32** %23, align 8
  store i32* %241, i32** %5, align 8
  br label %247

242:                                              ; preds = %63
  %243 = load i32, i32* @ERROR, align 4
  %244 = call i32 @elog(i32 %243, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %245

245:                                              ; preds = %242
  br label %246

246:                                              ; preds = %245
  store i32* null, i32** %5, align 8
  br label %247

247:                                              ; preds = %246, %240, %151, %131, %88, %57, %51
  %248 = load i32*, i32** %5, align 8
  ret i32* %248
}

declare dso_local i32 @pg_database_encoding_max_length(...) #1

declare dso_local i32 @Max(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32* @cstring_to_text(i8*) #1

declare dso_local i32* @DatumGetTextPSlice(i32, i32, i32) #1

declare dso_local i64 @VARATT_IS_COMPRESSED(i64) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i64 @VARATT_IS_EXTERNAL(i64) #1

declare dso_local i64 @VARSIZE_ANY_EXHDR(i32*) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @pg_mbstrlen_with_len(i8*, i64) #1

declare dso_local i8* @VARDATA_ANY(i32*) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @pg_mblen(i8*) #1

declare dso_local i64 @palloc(i64) #1

declare dso_local i32 @SET_VARSIZE(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @VARDATA(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
