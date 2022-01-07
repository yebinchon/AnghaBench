; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_regex.c_ngx_regex_compile.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_regex.c_ngx_regex_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i64, %struct.TYPE_8__, %struct.TYPE_9__, %struct.TYPE_12__*, i32, i64 }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_12__* }

@.str = private unnamed_addr constant [34 x i8] c"pcre_compile() failed: %s in \22%V\22\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"pcre_compile() failed: %s in \22%V\22 at \22%s\22\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@ngx_pcre_studies = common dso_local global i32* null, align 8
@PCRE_INFO_CAPTURECOUNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"pcre_fullinfo(\22%V\22, PCRE_INFO_CAPTURECOUNT) failed: %d\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@PCRE_INFO_NAMECOUNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"pcre_fullinfo(\22%V\22, PCRE_INFO_NAMECOUNT) failed: %d\00", align 1
@PCRE_INFO_NAMEENTRYSIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"pcre_fullinfo(\22%V\22, PCRE_INFO_NAMEENTRYSIZE) failed: %d\00", align 1
@PCRE_INFO_NAMETABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"pcre_fullinfo(\22%V\22, PCRE_INFO_NAMETABLE) failed: %d\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"regex \22%V\22 compilation failed: no memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_regex_compile(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @ngx_regex_malloc_init(i32 %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 8
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32* @pcre_compile(i8* %18, i32 %22, i8** %8, i32* %5, i32* null)
  store i32* %23, i32** %7, align 8
  %24 = call i32 (...) @ngx_regex_malloc_done()
  %25 = load i32*, i32** %7, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %92

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %29, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %27
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 5
  %47 = call i8* (i8*, i8*, i8*, ...) @ngx_snprintf(i8* %39, i8* %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %44, %struct.TYPE_9__* %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = ptrtoint i8* %47 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = inttoptr i64 %54 to i8*
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  store i8* %55, i8** %58, align 8
  br label %90

59:                                               ; preds = %27
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 5
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = call i8* (i8*, i8*, i8*, ...) @ngx_snprintf(i8* %63, i8* %67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %68, %struct.TYPE_9__* %70, i64 %77)
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = ptrtoint i8* %78 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = inttoptr i64 %85 to i8*
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store i8* %86, i8** %89, align 8
  br label %90

90:                                               ; preds = %59, %35
  %91 = load i32, i32* @NGX_ERROR, align 4
  store i32 %91, i32* %2, align 4
  br label %232

92:                                               ; preds = %1
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = call %struct.TYPE_12__* @ngx_pcalloc(i32 %95, i32 4)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 6
  store %struct.TYPE_12__* %96, %struct.TYPE_12__** %98, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 6
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = icmp eq %struct.TYPE_12__* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %92
  br label %208

104:                                              ; preds = %92
  %105 = load i32*, i32** %7, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 6
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  store i32* %105, i32** %109, align 8
  %110 = load i32*, i32** @ngx_pcre_studies, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %130

112:                                              ; preds = %104
  %113 = load i32*, i32** @ngx_pcre_studies, align 8
  %114 = call %struct.TYPE_10__* @ngx_list_push(i32* %113)
  store %struct.TYPE_10__* %114, %struct.TYPE_10__** %9, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %116 = icmp eq %struct.TYPE_10__* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %208

118:                                              ; preds = %112
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 6
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  store %struct.TYPE_12__* %121, %struct.TYPE_12__** %123, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  br label %130

130:                                              ; preds = %118, %104
  %131 = load i32*, i32** %7, align 8
  %132 = load i32, i32* @PCRE_INFO_CAPTURECOUNT, align 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = call i32 @pcre_fullinfo(i32* %131, i32* null, i32 %132, i64* %134)
  store i32 %135, i32* %4, align 4
  %136 = load i32, i32* %4, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %182

139:                                              ; preds = %130
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load i32, i32* @NGX_OK, align 4
  store i32 %145, i32* %2, align 4
  br label %232

146:                                              ; preds = %139
  %147 = load i32*, i32** %7, align 8
  %148 = load i32, i32* @PCRE_INFO_NAMECOUNT, align 4
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  %151 = call i32 @pcre_fullinfo(i32* %147, i32* null, i32 %148, i64* %150)
  store i32 %151, i32* %4, align 4
  %152 = load i32, i32* %4, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %182

155:                                              ; preds = %146
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = load i32, i32* @NGX_OK, align 4
  store i32 %161, i32* %2, align 4
  br label %232

162:                                              ; preds = %155
  %163 = load i32*, i32** %7, align 8
  %164 = load i32, i32* @PCRE_INFO_NAMEENTRYSIZE, align 4
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 2
  %167 = call i32 @pcre_fullinfo(i32* %163, i32* null, i32 %164, i64* %166)
  store i32 %167, i32* %4, align 4
  %168 = load i32, i32* %4, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %162
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %182

171:                                              ; preds = %162
  %172 = load i32*, i32** %7, align 8
  %173 = load i32, i32* @PCRE_INFO_NAMETABLE, align 4
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 3
  %176 = call i32 @pcre_fullinfo(i32* %172, i32* null, i32 %173, i64* %175)
  store i32 %176, i32* %4, align 4
  %177 = load i32, i32* %4, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %171
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %182

180:                                              ; preds = %171
  %181 = load i32, i32* @NGX_OK, align 4
  store i32 %181, i32* %2, align 4
  br label %232

182:                                              ; preds = %179, %170, %154, %138
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  %190 = load i8*, i8** %189, align 8
  %191 = load i8*, i8** %6, align 8
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 5
  %194 = load i32, i32* %4, align 4
  %195 = call i8* (i8*, i8*, i8*, ...) @ngx_snprintf(i8* %186, i8* %190, i8* %191, %struct.TYPE_9__* %193, i32 %194)
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = ptrtoint i8* %195 to i64
  %201 = ptrtoint i8* %199 to i64
  %202 = sub i64 %200, %201
  %203 = inttoptr i64 %202 to i8*
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 1
  store i8* %203, i8** %206, align 8
  %207 = load i32, i32* @NGX_ERROR, align 4
  store i32 %207, i32* %2, align 4
  br label %232

208:                                              ; preds = %117, %103
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 1
  %216 = load i8*, i8** %215, align 8
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 5
  %219 = call i8* (i8*, i8*, i8*, ...) @ngx_snprintf(i8* %212, i8* %216, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_9__* %218)
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 4
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = ptrtoint i8* %219 to i64
  %225 = ptrtoint i8* %223 to i64
  %226 = sub i64 %224, %225
  %227 = inttoptr i64 %226 to i8*
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 4
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 1
  store i8* %227, i8** %230, align 8
  %231 = load i32, i32* @NGX_ERROR, align 4
  store i32 %231, i32* %2, align 4
  br label %232

232:                                              ; preds = %208, %182, %180, %160, %144, %90
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

declare dso_local i32 @ngx_regex_malloc_init(i32) #1

declare dso_local i32* @pcre_compile(i8*, i32, i8**, i32*, i32*) #1

declare dso_local i32 @ngx_regex_malloc_done(...) #1

declare dso_local i8* @ngx_snprintf(i8*, i8*, i8*, ...) #1

declare dso_local %struct.TYPE_12__* @ngx_pcalloc(i32, i32) #1

declare dso_local %struct.TYPE_10__* @ngx_list_push(i32*) #1

declare dso_local i32 @pcre_fullinfo(i32*, i32*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
