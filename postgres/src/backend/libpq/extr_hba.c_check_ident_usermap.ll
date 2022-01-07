; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_hba.c_check_ident_usermap.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_hba.c_check_ident_usermap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i8*, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@REG_NOMATCH = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@ERRCODE_INVALID_REGULAR_EXPRESSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"regular expression match for \22%s\22 failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\1\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"regular expression \22%s\22 has no subexpressions as requested by backreference in \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*, i8*, i8*, i32, i32*, i32*)* @check_ident_usermap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_ident_usermap(%struct.TYPE_6__* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [2 x %struct.TYPE_5__], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca [100 x i8], align 16
  %22 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %23 = load i32*, i32** %13, align 8
  store i32 0, i32* %23, align 4
  %24 = load i32*, i32** %14, align 8
  store i32 0, i32* %24, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i64 @strcmp(i8* %27, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %7
  br label %234

32:                                               ; preds = %7
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 47
  br i1 %39, label %40, label %195

40:                                               ; preds = %32
  %41 = load i8*, i8** %11, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 1
  %46 = trunc i64 %45 to i32
  %47 = call i8* @palloc(i32 %46)
  store i8* %47, i8** %17, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load i8*, i8** %17, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = call i32 @pg_mb2wchar_with_len(i8* %48, i8* %49, i32 %51)
  store i32 %52, i32* %18, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  %55 = load i8*, i8** %17, align 8
  %56 = load i32, i32* %18, align 4
  %57 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %16, i64 0, i64 0
  %58 = call i32 @pg_regexec(i32* %54, i8* %55, i32 %56, i32 0, i32* null, i32 2, %struct.TYPE_5__* %57, i32 0)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %40
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* @REG_NOMATCH, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %61
  %66 = load i32, i32* %15, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  %69 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %70 = call i32 @pg_regerror(i32 %66, i32* %68, i8* %69, i32 100)
  %71 = load i32, i32* @LOG, align 4
  %72 = load i32, i32* @ERRCODE_INVALID_REGULAR_EXPRESSION, align 4
  %73 = call i32 @errcode(i32 %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %79 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %77, i8* %78)
  %80 = call i32 @ereport(i32 %71, i32 %79)
  %81 = load i32*, i32** %14, align 8
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %65, %61
  %83 = load i8*, i8** %17, align 8
  %84 = call i32 @pfree(i8* %83)
  br label %234

85:                                               ; preds = %40
  %86 = load i8*, i8** %17, align 8
  %87 = call i32 @pfree(i8* %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = call i8* @strstr(i8* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %91, i8** %19, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %168

93:                                               ; preds = %85
  %94 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %16, i64 0, i64 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 16
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %93
  %99 = load i32, i32* @LOG, align 4
  %100 = load i32, i32* @ERRCODE_INVALID_REGULAR_EXPRESSION, align 4
  %101 = call i32 @errcode(i32 %100)
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @errmsg(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), i8* %105, i8* %108)
  %110 = call i32 @ereport(i32 %99, i32 %109)
  %111 = load i32*, i32** %14, align 8
  store i32 1, i32* %111, align 4
  br label %234

112:                                              ; preds = %93
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @strlen(i8* %115)
  %117 = sub nsw i32 %116, 2
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %16, i64 0, i64 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %16, i64 0, i64 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 16
  %126 = sub nsw i64 %122, %125
  %127 = add nsw i64 %118, %126
  %128 = add nsw i64 %127, 1
  %129 = trunc i64 %128 to i32
  %130 = call i8* @palloc0(i32 %129)
  store i8* %130, i8** %20, align 8
  %131 = load i8*, i8** %19, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  %135 = ptrtoint i8* %131 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %22, align 4
  %139 = load i8*, i8** %20, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 2
  %142 = load i8*, i8** %141, align 8
  %143 = load i32, i32* %22, align 4
  %144 = call i32 @memcpy(i8* %139, i8* %142, i32 %143)
  %145 = load i8*, i8** %20, align 8
  %146 = load i32, i32* %22, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i8*, i8** %11, align 8
  %150 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %16, i64 0, i64 1
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 16
  %153 = getelementptr inbounds i8, i8* %149, i64 %152
  %154 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %16, i64 0, i64 1
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %16, i64 0, i64 1
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 16
  %161 = sub nsw i64 %157, %160
  %162 = trunc i64 %161 to i32
  %163 = call i32 @memcpy(i8* %148, i8* %153, i32 %162)
  %164 = load i8*, i8** %20, align 8
  %165 = load i8*, i8** %19, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 2
  %167 = call i32 @strcat(i8* %164, i8* %166)
  br label %173

168:                                              ; preds = %85
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 2
  %171 = load i8*, i8** %170, align 8
  %172 = call i8* @pstrdup(i8* %171)
  store i8* %172, i8** %20, align 8
  br label %173

173:                                              ; preds = %168, %112
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %173
  %177 = load i8*, i8** %20, align 8
  %178 = load i8*, i8** %10, align 8
  %179 = call i64 @pg_strcasecmp(i8* %177, i8* %178)
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %176
  %182 = load i32*, i32** %13, align 8
  store i32 1, i32* %182, align 4
  br label %183

183:                                              ; preds = %181, %176
  br label %192

184:                                              ; preds = %173
  %185 = load i8*, i8** %20, align 8
  %186 = load i8*, i8** %10, align 8
  %187 = call i64 @strcmp(i8* %185, i8* %186)
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = load i32*, i32** %13, align 8
  store i32 1, i32* %190, align 4
  br label %191

191:                                              ; preds = %189, %184
  br label %192

192:                                              ; preds = %191, %183
  %193 = load i8*, i8** %20, align 8
  %194 = call i32 @pfree(i8* %193)
  br label %234

195:                                              ; preds = %32
  %196 = load i32, i32* %12, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %215

198:                                              ; preds = %195
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 2
  %201 = load i8*, i8** %200, align 8
  %202 = load i8*, i8** %10, align 8
  %203 = call i64 @pg_strcasecmp(i8* %201, i8* %202)
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %214

205:                                              ; preds = %198
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 1
  %208 = load i8*, i8** %207, align 8
  %209 = load i8*, i8** %11, align 8
  %210 = call i64 @pg_strcasecmp(i8* %208, i8* %209)
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %205
  %213 = load i32*, i32** %13, align 8
  store i32 1, i32* %213, align 4
  br label %214

214:                                              ; preds = %212, %205, %198
  br label %232

215:                                              ; preds = %195
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 2
  %218 = load i8*, i8** %217, align 8
  %219 = load i8*, i8** %10, align 8
  %220 = call i64 @strcmp(i8* %218, i8* %219)
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %215
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 1
  %225 = load i8*, i8** %224, align 8
  %226 = load i8*, i8** %11, align 8
  %227 = call i64 @strcmp(i8* %225, i8* %226)
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %222
  %230 = load i32*, i32** %13, align 8
  store i32 1, i32* %230, align 4
  br label %231

231:                                              ; preds = %229, %222, %215
  br label %232

232:                                              ; preds = %231, %214
  br label %233

233:                                              ; preds = %232
  br label %234

234:                                              ; preds = %233, %192, %98, %82, %31
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pg_mb2wchar_with_len(i8*, i8*, i32) #1

declare dso_local i32 @pg_regexec(i32*, i8*, i32, i32, i32*, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @pg_regerror(i32, i32*, i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @palloc0(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i64 @pg_strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
