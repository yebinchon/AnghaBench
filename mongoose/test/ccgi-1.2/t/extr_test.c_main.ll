; ModuleID = '/home/carl/AnghaBench/mongoose/test/ccgi-1.2/t/extr_test.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/ccgi-1.2/t/extr_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"CGI_get_cookie\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"CGI_get_query\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"CGI_decode_query\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"CGI_get_post\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"upload\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"./cgi-upload-XXXXXX\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"CGI_add_var\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"CGI_encode_varlist\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c".-_\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"CGI_encode_url\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"CGI_encode_query\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"CGI_encode_base64\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"CGI_encode_hex\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"CGI_encode_entity\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"CGI_encrypt\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"This is my C CGI test password\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"enc len = %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"dec len = %d %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = call i32* @CGI_get_cookie(i32 0)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @dumplist(i32* %18)
  store i32 0, i32* %3, align 4
  br label %333

20:                                               ; preds = %2
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = call i32* @CGI_get_query(i32 0)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @dumplist(i32* %28)
  store i32 0, i32* %3, align 4
  br label %333

30:                                               ; preds = %20
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 2
  %39 = load i8*, i8** %38, align 8
  %40 = call i32* @CGI_decode_query(i32 0, i8* %39)
  store i32* %40, i32** %6, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @dumplist(i32* %41)
  store i32 0, i32* %3, align 4
  br label %333

43:                                               ; preds = %30
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = call i32* @CGI_get_post(i32 0, i8* null)
  store i32* %50, i32** %6, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @dumplist(i32* %51)
  store i32 0, i32* %3, align 4
  br label %333

53:                                               ; preds = %43
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = call i32* @CGI_get_post(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i32* %60, i32** %6, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i32* @CGI_lookup_all(i32* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32* %62, i32** %8, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @dumplist(i32* %63)
  store i32 0, i32* %3, align 4
  br label %333

65:                                               ; preds = %53
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %97

71:                                               ; preds = %65
  store i32* null, i32** %6, align 8
  store i32 2, i32* %9, align 4
  br label %72

72:                                               ; preds = %91, %71
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %72
  %78 = load i32*, i32** %6, align 8
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = load i8**, i8*** %5, align 8
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %84, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = call i32* @CGI_add_var(i32* %78, i8* %83, i8* %89)
  store i32* %90, i32** %6, align 8
  br label %91

91:                                               ; preds = %77
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 2
  store i32 %93, i32* %9, align 4
  br label %72

94:                                               ; preds = %72
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @dumplist(i32* %95)
  store i32 0, i32* %3, align 4
  br label %333

97:                                               ; preds = %65
  %98 = load i8**, i8*** %5, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %136

103:                                              ; preds = %97
  store i32* null, i32** %6, align 8
  store i32 2, i32* %9, align 4
  br label %104

104:                                              ; preds = %123, %103
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  %107 = load i32, i32* %4, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %126

109:                                              ; preds = %104
  %110 = load i32*, i32** %6, align 8
  %111 = load i8**, i8*** %5, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = load i8**, i8*** %5, align 8
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %116, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i32* @CGI_add_var(i32* %110, i8* %115, i8* %121)
  store i32* %122, i32** %6, align 8
  br label %123

123:                                              ; preds = %109
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 2
  store i32 %125, i32* %9, align 4
  br label %104

126:                                              ; preds = %104
  %127 = load i32*, i32** %6, align 8
  %128 = call i32 @dumplist(i32* %127)
  %129 = load i32*, i32** %6, align 8
  %130 = call i8* @CGI_encode_varlist(i32* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  store i8* %130, i8** %7, align 8
  %131 = load i8*, i8** %7, align 8
  %132 = load i32, i32* @stdout, align 4
  %133 = call i32 @fputs(i8* %131, i32 %132)
  %134 = load i32, i32* @stdout, align 4
  %135 = call i32 @fputc(i8 signext 10, i32 %134)
  store i32 0, i32* %3, align 4
  br label %333

136:                                              ; preds = %97
  %137 = load i8**, i8*** %5, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 1
  %139 = load i8*, i8** %138, align 8
  %140 = call i64 @strcmp(i8* %139, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %159

142:                                              ; preds = %136
  %143 = load i8**, i8*** %5, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 2
  %145 = load i8*, i8** %144, align 8
  %146 = call i8* @CGI_encode_url(i8* %145, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  store i8* %146, i8** %7, align 8
  %147 = load i8*, i8** %7, align 8
  %148 = load i32, i32* @stdout, align 4
  %149 = call i32 @fputs(i8* %147, i32 %148)
  %150 = load i32, i32* @stdout, align 4
  %151 = call i32 @fputc(i8 signext 10, i32 %150)
  %152 = load i8*, i8** %7, align 8
  %153 = call i8* @CGI_decode_url(i8* %152)
  store i8* %153, i8** %7, align 8
  %154 = load i8*, i8** %7, align 8
  %155 = load i32, i32* @stdout, align 4
  %156 = call i32 @fputs(i8* %154, i32 %155)
  %157 = load i32, i32* @stdout, align 4
  %158 = call i32 @fputc(i8 signext 10, i32 %157)
  store i32 0, i32* %3, align 4
  br label %333

159:                                              ; preds = %136
  %160 = load i8**, i8*** %5, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 1
  %162 = load i8*, i8** %161, align 8
  %163 = call i64 @strcmp(i8* %162, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %236

165:                                              ; preds = %159
  %166 = load i8**, i8*** %5, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i64 2
  %168 = load i8*, i8** %167, align 8
  %169 = load i8**, i8*** %5, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 3
  %171 = load i8*, i8** %170, align 8
  %172 = load i8**, i8*** %5, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 4
  %174 = load i8*, i8** %173, align 8
  %175 = load i8**, i8*** %5, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 5
  %177 = load i8*, i8** %176, align 8
  %178 = load i8**, i8*** %5, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 6
  %180 = load i8*, i8** %179, align 8
  %181 = load i8**, i8*** %5, align 8
  %182 = getelementptr inbounds i8*, i8** %181, i64 7
  %183 = load i8*, i8** %182, align 8
  %184 = load i8**, i8*** %5, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i64 8
  %186 = load i8*, i8** %185, align 8
  %187 = load i8**, i8*** %5, align 8
  %188 = getelementptr inbounds i8*, i8** %187, i64 9
  %189 = load i8*, i8** %188, align 8
  %190 = load i8**, i8*** %5, align 8
  %191 = getelementptr inbounds i8*, i8** %190, i64 10
  %192 = load i8*, i8** %191, align 8
  %193 = load i8**, i8*** %5, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i64 11
  %195 = load i8*, i8** %194, align 8
  %196 = load i8**, i8*** %5, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i64 12
  %198 = load i8*, i8** %197, align 8
  %199 = load i8**, i8*** %5, align 8
  %200 = getelementptr inbounds i8*, i8** %199, i64 13
  %201 = load i8*, i8** %200, align 8
  %202 = load i8**, i8*** %5, align 8
  %203 = getelementptr inbounds i8*, i8** %202, i64 14
  %204 = load i8*, i8** %203, align 8
  %205 = load i8**, i8*** %5, align 8
  %206 = getelementptr inbounds i8*, i8** %205, i64 15
  %207 = load i8*, i8** %206, align 8
  %208 = load i8**, i8*** %5, align 8
  %209 = getelementptr inbounds i8*, i8** %208, i64 16
  %210 = load i8*, i8** %209, align 8
  %211 = load i8**, i8*** %5, align 8
  %212 = getelementptr inbounds i8*, i8** %211, i64 17
  %213 = load i8*, i8** %212, align 8
  %214 = load i8**, i8*** %5, align 8
  %215 = getelementptr inbounds i8*, i8** %214, i64 18
  %216 = load i8*, i8** %215, align 8
  %217 = load i8**, i8*** %5, align 8
  %218 = getelementptr inbounds i8*, i8** %217, i64 19
  %219 = load i8*, i8** %218, align 8
  %220 = load i8**, i8*** %5, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 20
  %222 = load i8*, i8** %221, align 8
  %223 = load i8**, i8*** %5, align 8
  %224 = getelementptr inbounds i8*, i8** %223, i64 21
  %225 = load i8*, i8** %224, align 8
  %226 = call i8* @CGI_encode_query(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %168, i8* %171, i8* %174, i8* %177, i8* %180, i8* %183, i8* %186, i8* %189, i8* %192, i8* %195, i8* %198, i8* %201, i8* %204, i8* %207, i8* %210, i8* %213, i8* %216, i8* %219, i8* %222, i8* %225, i8* null)
  store i8* %226, i8** %7, align 8
  %227 = load i8*, i8** %7, align 8
  %228 = load i32, i32* @stdout, align 4
  %229 = call i32 @fputs(i8* %227, i32 %228)
  %230 = load i32, i32* @stdout, align 4
  %231 = call i32 @fputc(i8 signext 10, i32 %230)
  %232 = load i8*, i8** %7, align 8
  %233 = call i32* @CGI_decode_query(i32 0, i8* %232)
  store i32* %233, i32** %6, align 8
  %234 = load i32*, i32** %6, align 8
  %235 = call i32 @dumplist(i32* %234)
  store i32 0, i32* %3, align 4
  br label %333

236:                                              ; preds = %159
  %237 = load i8**, i8*** %5, align 8
  %238 = getelementptr inbounds i8*, i8** %237, i64 1
  %239 = load i8*, i8** %238, align 8
  %240 = call i64 @strcmp(i8* %239, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %264

242:                                              ; preds = %236
  %243 = load i8**, i8*** %5, align 8
  %244 = getelementptr inbounds i8*, i8** %243, i64 2
  %245 = load i8*, i8** %244, align 8
  store i8* %245, i8** %7, align 8
  %246 = load i8*, i8** %7, align 8
  %247 = load i8*, i8** %7, align 8
  %248 = call i32 @strlen(i8* %247)
  %249 = call i8* @CGI_encode_base64(i8* %246, i32 %248)
  store i8* %249, i8** %7, align 8
  %250 = load i8*, i8** %7, align 8
  %251 = load i32, i32* @stdout, align 4
  %252 = call i32 @fputs(i8* %250, i32 %251)
  %253 = load i32, i32* @stdout, align 4
  %254 = call i32 @fputc(i8 signext 10, i32 %253)
  %255 = load i8*, i8** %7, align 8
  %256 = call i64 @CGI_decode_base64(i8* %255, i32* %9)
  %257 = inttoptr i64 %256 to i8*
  store i8* %257, i8** %7, align 8
  %258 = load i8*, i8** %7, align 8
  %259 = load i32, i32* %9, align 4
  %260 = load i32, i32* @stdout, align 4
  %261 = call i32 @fwrite(i8* %258, i32 %259, i32 1, i32 %260)
  %262 = load i32, i32* @stdout, align 4
  %263 = call i32 @fputc(i8 signext 10, i32 %262)
  store i32 0, i32* %3, align 4
  br label %333

264:                                              ; preds = %236
  %265 = load i8**, i8*** %5, align 8
  %266 = getelementptr inbounds i8*, i8** %265, i64 1
  %267 = load i8*, i8** %266, align 8
  %268 = call i64 @strcmp(i8* %267, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %292

270:                                              ; preds = %264
  %271 = load i8**, i8*** %5, align 8
  %272 = getelementptr inbounds i8*, i8** %271, i64 2
  %273 = load i8*, i8** %272, align 8
  store i8* %273, i8** %7, align 8
  %274 = load i8*, i8** %7, align 8
  %275 = load i8*, i8** %7, align 8
  %276 = call i32 @strlen(i8* %275)
  %277 = call i8* @CGI_encode_hex(i8* %274, i32 %276)
  store i8* %277, i8** %7, align 8
  %278 = load i8*, i8** %7, align 8
  %279 = load i32, i32* @stdout, align 4
  %280 = call i32 @fputs(i8* %278, i32 %279)
  %281 = load i32, i32* @stdout, align 4
  %282 = call i32 @fputc(i8 signext 10, i32 %281)
  %283 = load i8*, i8** %7, align 8
  %284 = call i64 @CGI_decode_hex(i8* %283, i32* %9)
  %285 = inttoptr i64 %284 to i8*
  store i8* %285, i8** %7, align 8
  %286 = load i8*, i8** %7, align 8
  %287 = load i32, i32* %9, align 4
  %288 = load i32, i32* @stdout, align 4
  %289 = call i32 @fwrite(i8* %286, i32 %287, i32 1, i32 %288)
  %290 = load i32, i32* @stdout, align 4
  %291 = call i32 @fputc(i8 signext 10, i32 %290)
  store i32 0, i32* %3, align 4
  br label %333

292:                                              ; preds = %264
  %293 = load i8**, i8*** %5, align 8
  %294 = getelementptr inbounds i8*, i8** %293, i64 1
  %295 = load i8*, i8** %294, align 8
  %296 = call i64 @strcmp(i8* %295, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %298, label %308

298:                                              ; preds = %292
  %299 = load i8**, i8*** %5, align 8
  %300 = getelementptr inbounds i8*, i8** %299, i64 2
  %301 = load i8*, i8** %300, align 8
  %302 = call i8* @CGI_encode_entity(i8* %301)
  store i8* %302, i8** %7, align 8
  %303 = load i8*, i8** %7, align 8
  %304 = load i32, i32* @stdout, align 4
  %305 = call i32 @fputs(i8* %303, i32 %304)
  %306 = load i32, i32* @stdout, align 4
  %307 = call i32 @fputc(i8 signext 10, i32 %306)
  store i32 0, i32* %3, align 4
  br label %333

308:                                              ; preds = %292
  %309 = load i8**, i8*** %5, align 8
  %310 = getelementptr inbounds i8*, i8** %309, i64 1
  %311 = load i8*, i8** %310, align 8
  %312 = call i64 @strcmp(i8* %311, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %313 = icmp eq i64 %312, 0
  br i1 %313, label %314, label %332

314:                                              ; preds = %308
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i8** %10, align 8
  %315 = load i8**, i8*** %5, align 8
  %316 = getelementptr inbounds i8*, i8** %315, i64 2
  %317 = load i8*, i8** %316, align 8
  store i8* %317, i8** %7, align 8
  %318 = load i8*, i8** %7, align 8
  %319 = load i8*, i8** %7, align 8
  %320 = call i32 @strlen(i8* %319)
  %321 = load i8*, i8** %10, align 8
  %322 = call i8* @CGI_encrypt(i8* %318, i32 %320, i8* %321)
  store i8* %322, i8** %7, align 8
  %323 = load i8*, i8** %7, align 8
  %324 = call i32 @strlen(i8* %323)
  %325 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 %324)
  %326 = load i8*, i8** %7, align 8
  %327 = load i8*, i8** %10, align 8
  %328 = call i8* @CGI_decrypt(i8* %326, i32* %9, i8* %327)
  store i8* %328, i8** %7, align 8
  %329 = load i32, i32* %9, align 4
  %330 = load i8*, i8** %7, align 8
  %331 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 %329, i8* %330)
  store i32 0, i32* %3, align 4
  br label %333

332:                                              ; preds = %308
  store i32 0, i32* %3, align 4
  br label %333

333:                                              ; preds = %332, %314, %298, %270, %242, %165, %142, %126, %94, %59, %49, %36, %26, %16
  %334 = load i32, i32* %3, align 4
  ret i32 %334
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @CGI_get_cookie(i32) #1

declare dso_local i32 @dumplist(i32*) #1

declare dso_local i32* @CGI_get_query(i32) #1

declare dso_local i32* @CGI_decode_query(i32, i8*) #1

declare dso_local i32* @CGI_get_post(i32, i8*) #1

declare dso_local i32* @CGI_lookup_all(i32*, i8*) #1

declare dso_local i32* @CGI_add_var(i32*, i8*, i8*) #1

declare dso_local i8* @CGI_encode_varlist(i32*, i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i8* @CGI_encode_url(i8*, i8*) #1

declare dso_local i8* @CGI_decode_url(i8*) #1

declare dso_local i8* @CGI_encode_query(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @CGI_encode_base64(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @CGI_decode_base64(i8*, i32*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

declare dso_local i8* @CGI_encode_hex(i8*, i32) #1

declare dso_local i64 @CGI_decode_hex(i8*, i32*) #1

declare dso_local i8* @CGI_encode_entity(i8*) #1

declare dso_local i8* @CGI_encrypt(i8*, i32, i8*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i8* @CGI_decrypt(i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
