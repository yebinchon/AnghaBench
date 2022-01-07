; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_parse_configfile.c_m_config_parse.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_parse_configfile.c_m_config_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i64 }
%struct.TYPE_33__ = type { i64, i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"\EF\BB\BF\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s:%d:\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"%s missing closing ]\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"%s unparseable extra characters: '%.*s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"%s unterminated quote\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.10 = private unnamed_addr constant [147 x i8] c"%s fixed-length quoting expected - put \22quotes\22 around the option value if you did not intend to use this, but your option value starts with '%%'\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"profile-desc\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"%s setting option %.*s='%.*s' failed.\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"%s: too many errors, stopping.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m_config_parse(%struct.TYPE_32__* %0, i8* %1, %struct.TYPE_33__* byval(%struct.TYPE_33__) align 8 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [512 x i8], align 16
  %16 = alloca %struct.TYPE_33__, align 8
  %17 = alloca %struct.TYPE_33__, align 8
  %18 = alloca %struct.TYPE_33__, align 8
  %19 = alloca %struct.TYPE_33__, align 8
  %20 = alloca %struct.TYPE_33__, align 8
  %21 = alloca [2 x i8], align 1
  %22 = alloca %struct.TYPE_33__, align 8
  %23 = alloca %struct.TYPE_33__, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_33__, align 8
  %26 = alloca %struct.TYPE_33__, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_33__, align 8
  %29 = alloca %struct.TYPE_33__, align 8
  %30 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 %4, i32* %9, align 4
  %31 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32* @m_config_add_profile(%struct.TYPE_32__* %31, i8* %32)
  store i32* %33, i32** %10, align 8
  %34 = call i8* @talloc_new(i32* null)
  store i8* %34, i8** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %35 = call i64 @bstr_eatstart0(%struct.TYPE_33__* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %245, %71, %52, %5
  %37 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %2, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %246

40:                                               ; preds = %36
  %41 = load i8*, i8** %11, align 8
  %42 = call i32 @talloc_free_children(i8* %41)
  store i32 0, i32* %14, align 4
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  %45 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @snprintf(i8* %45, i32 512, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %46, i32 %47)
  %49 = call i32 @bstr_getline(%struct.TYPE_33__* byval(%struct.TYPE_33__) align 8 %2, %struct.TYPE_33__* %2)
  call void @bstr_strip_linebreaks(%struct.TYPE_33__* sret %16, i32 %49)
  %50 = call i64 @skip_ws(%struct.TYPE_33__* %16)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %40
  br label %36

53:                                               ; preds = %40
  %54 = call i64 @bstr_eatstart0(%struct.TYPE_33__* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %53
  %57 = call i32 @bstr_split_tok(%struct.TYPE_33__* byval(%struct.TYPE_33__) align 8 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_33__* %17, %struct.TYPE_33__* %16)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %61 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %62 = call i32 (%struct.TYPE_32__*, i8*, i8*, ...) @MP_ERR(%struct.TYPE_32__* %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %61)
  br label %232

63:                                               ; preds = %56
  %64 = call i64 @skip_ws(%struct.TYPE_33__* %16)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %68 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %69 = call i32 @BSTR_P(%struct.TYPE_33__* byval(%struct.TYPE_33__) align 8 %16)
  %70 = call i32 (%struct.TYPE_32__*, i8*, i8*, ...) @MP_ERR(%struct.TYPE_32__* %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %68, i32 %69)
  br label %232

71:                                               ; preds = %63
  %72 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = call i8* @bstrto0(i8* %73, %struct.TYPE_33__* byval(%struct.TYPE_33__) align 8 %17)
  %75 = call i32* @m_config_add_profile(%struct.TYPE_32__* %72, i8* %74)
  store i32* %75, i32** %10, align 8
  br label %36

76:                                               ; preds = %53
  %77 = call i64 @bstr_eatstart0(%struct.TYPE_33__* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %78 = bitcast %struct.TYPE_33__* %18 to i8*
  %79 = bitcast %struct.TYPE_33__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 24, i1 false)
  br label %80

80:                                               ; preds = %109, %76
  %81 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %16, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %107

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %16, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = call i64 @mp_isalnum(i8 signext %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %105, label %91

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %16, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 95
  br i1 %97, label %105, label %98

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %16, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 45
  br label %105

105:                                              ; preds = %98, %91, %84
  %106 = phi i1 [ true, %91 ], [ true, %84 ], [ %104, %98 ]
  br label %107

107:                                              ; preds = %105, %80
  %108 = phi i1 [ false, %80 ], [ %106, %105 ]
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  call void @bstr_cut(%struct.TYPE_33__* sret %19, %struct.TYPE_33__* byval(%struct.TYPE_33__) align 8 %16, i64 1)
  %110 = bitcast %struct.TYPE_33__* %16 to i8*
  %111 = bitcast %struct.TYPE_33__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 8 %111, i64 24, i1 false)
  br label %80

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %18, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %16, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %114, %116
  %118 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %18, i32 0, i32 0
  store i64 %117, i64* %118, align 8
  %119 = call i64 @skip_ws(%struct.TYPE_33__* %16)
  %120 = bitcast %struct.TYPE_33__* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %120, i8 0, i64 24, i1 false)
  %121 = call i64 @bstr_eatstart0(%struct.TYPE_33__* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %204

123:                                              ; preds = %112
  %124 = call i64 @skip_ws(%struct.TYPE_33__* %16)
  %125 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %16, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %159

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %16, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 34
  br i1 %134, label %142, label %135

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %16, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 39
  br i1 %141, label %142, label %159

142:                                              ; preds = %135, %128
  %143 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  %144 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %16, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  %147 = load i8, i8* %146, align 1
  store i8 %147, i8* %143, align 1
  %148 = getelementptr inbounds i8, i8* %143, i64 1
  store i8 0, i8* %148, align 1
  call void @bstr_cut(%struct.TYPE_33__* sret %22, %struct.TYPE_33__* byval(%struct.TYPE_33__) align 8 %16, i64 1)
  %149 = bitcast %struct.TYPE_33__* %16 to i8*
  %150 = bitcast %struct.TYPE_33__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %149, i8* align 8 %150, i64 24, i1 false)
  %151 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 0
  %152 = call i32 @bstr_split_tok(%struct.TYPE_33__* byval(%struct.TYPE_33__) align 8 %16, i8* %151, %struct.TYPE_33__* %20, %struct.TYPE_33__* %16)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %142
  %155 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %156 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %157 = call i32 (%struct.TYPE_32__*, i8*, i8*, ...) @MP_ERR(%struct.TYPE_32__* %155, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %156)
  br label %232

158:                                              ; preds = %142
  br label %203

159:                                              ; preds = %135, %123
  %160 = call i64 @bstr_eatstart0(%struct.TYPE_33__* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %189

162:                                              ; preds = %159
  %163 = call i64 @bstrtoll(%struct.TYPE_33__* byval(%struct.TYPE_33__) align 8 %16, %struct.TYPE_33__* %23, i32 10)
  store i64 %163, i64* %24, align 8
  %164 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %23, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %16, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %165, %167
  br i1 %168, label %177, label %169

169:                                              ; preds = %162
  %170 = call i64 @bstr_eatstart0(%struct.TYPE_33__* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = load i64, i64* %24, align 8
  %174 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %23, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp sgt i64 %173, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %172, %169, %162
  %178 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %179 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %180 = call i32 (%struct.TYPE_32__*, i8*, i8*, ...) @MP_ERR(%struct.TYPE_32__* %178, i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.10, i64 0, i64 0), i8* %179)
  br label %232

181:                                              ; preds = %172
  %182 = load i64, i64* %24, align 8
  %183 = trunc i64 %182 to i32
  call void @bstr_splice(%struct.TYPE_33__* sret %25, %struct.TYPE_33__* byval(%struct.TYPE_33__) align 8 %23, i32 0, i32 %183)
  %184 = bitcast %struct.TYPE_33__* %20 to i8*
  %185 = bitcast %struct.TYPE_33__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %184, i8* align 8 %185, i64 24, i1 false)
  %186 = load i64, i64* %24, align 8
  call void @bstr_cut(%struct.TYPE_33__* sret %26, %struct.TYPE_33__* byval(%struct.TYPE_33__) align 8 %23, i64 %186)
  %187 = bitcast %struct.TYPE_33__* %16 to i8*
  %188 = bitcast %struct.TYPE_33__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %187, i8* align 8 %188, i64 24, i1 false)
  br label %202

189:                                              ; preds = %159
  %190 = call i32 @bstrchr(%struct.TYPE_33__* byval(%struct.TYPE_33__) align 8 %16, i8 signext 35)
  store i32 %190, i32* %27, align 4
  %191 = load i32, i32* %27, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = bitcast %struct.TYPE_33__* %29 to i8*
  %195 = bitcast %struct.TYPE_33__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %194, i8* align 8 %195, i64 24, i1 false)
  br label %198

196:                                              ; preds = %189
  %197 = load i32, i32* %27, align 4
  call void @bstr_splice(%struct.TYPE_33__* sret %29, %struct.TYPE_33__* byval(%struct.TYPE_33__) align 8 %16, i32 0, i32 %197)
  br label %198

198:                                              ; preds = %196, %193
  call void @bstr_strip(%struct.TYPE_33__* sret %28, %struct.TYPE_33__* byval(%struct.TYPE_33__) align 8 %29)
  %199 = bitcast %struct.TYPE_33__* %20 to i8*
  %200 = bitcast %struct.TYPE_33__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %199, i8* align 8 %200, i64 24, i1 false)
  %201 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %16, i32 0, i32 0
  store i64 0, i64* %201, align 8
  br label %202

202:                                              ; preds = %198, %181
  br label %203

203:                                              ; preds = %202, %158
  br label %204

204:                                              ; preds = %203, %112
  %205 = call i64 @skip_ws(%struct.TYPE_33__* %16)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %204
  %208 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %209 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %210 = call i32 @BSTR_P(%struct.TYPE_33__* byval(%struct.TYPE_33__) align 8 %16)
  %211 = call i32 (%struct.TYPE_32__*, i8*, i8*, ...) @MP_ERR(%struct.TYPE_32__* %208, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %209, i32 %210)
  br label %232

212:                                              ; preds = %204
  %213 = call i64 @bstr_equals0(%struct.TYPE_33__* byval(%struct.TYPE_33__) align 8 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load i32*, i32** %10, align 8
  %217 = call i32 @m_profile_set_desc(i32* %216, %struct.TYPE_33__* byval(%struct.TYPE_33__) align 8 %20)
  store i32 0, i32* %30, align 4
  br label %222

218:                                              ; preds = %212
  %219 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %220 = load i32*, i32** %10, align 8
  %221 = call i32 @m_config_set_profile_option(%struct.TYPE_32__* %219, i32* %220, %struct.TYPE_33__* byval(%struct.TYPE_33__) align 8 %18, %struct.TYPE_33__* byval(%struct.TYPE_33__) align 8 %20)
  store i32 %221, i32* %30, align 4
  br label %222

222:                                              ; preds = %218, %215
  %223 = load i32, i32* %30, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %222
  %226 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %227 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %228 = call i32 @BSTR_P(%struct.TYPE_33__* byval(%struct.TYPE_33__) align 8 %18)
  %229 = call i32 @BSTR_P(%struct.TYPE_33__* byval(%struct.TYPE_33__) align 8 %20)
  %230 = call i32 (%struct.TYPE_32__*, i8*, i8*, ...) @MP_ERR(%struct.TYPE_32__* %226, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i8* %227, i32 %228, i32 %229)
  br label %232

231:                                              ; preds = %222
  store i32 1, i32* %14, align 4
  br label %232

232:                                              ; preds = %231, %225, %207, %177, %154, %66, %59
  %233 = load i32, i32* %14, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %232
  %236 = load i32, i32* %13, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %13, align 4
  br label %238

238:                                              ; preds = %235, %232
  %239 = load i32, i32* %13, align 4
  %240 = icmp sgt i32 %239, 16
  br i1 %240, label %241, label %245

241:                                              ; preds = %238
  %242 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %243 = load i8*, i8** %7, align 8
  %244 = call i32 (%struct.TYPE_32__*, i8*, i8*, ...) @MP_ERR(%struct.TYPE_32__* %242, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i8* %243)
  br label %246

245:                                              ; preds = %238
  br label %36

246:                                              ; preds = %241, %36
  %247 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %246
  %252 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %253 = load i32, i32* %9, align 4
  %254 = call i32 @m_config_finish_default_profile(%struct.TYPE_32__* %252, i32 %253)
  br label %255

255:                                              ; preds = %251, %246
  %256 = load i8*, i8** %11, align 8
  %257 = call i32 @talloc_free(i8* %256)
  ret i32 1
}

declare dso_local i32* @m_config_add_profile(%struct.TYPE_32__*, i8*) #1

declare dso_local i8* @talloc_new(i32*) #1

declare dso_local i64 @bstr_eatstart0(%struct.TYPE_33__*, i8*) #1

declare dso_local i32 @talloc_free_children(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local void @bstr_strip_linebreaks(%struct.TYPE_33__* sret, i32) #1

declare dso_local i32 @bstr_getline(%struct.TYPE_33__* byval(%struct.TYPE_33__) align 8, %struct.TYPE_33__*) #1

declare dso_local i64 @skip_ws(%struct.TYPE_33__*) #1

declare dso_local i32 @bstr_split_tok(%struct.TYPE_33__* byval(%struct.TYPE_33__) align 8, i8*, %struct.TYPE_33__*, %struct.TYPE_33__*) #1

declare dso_local i32 @MP_ERR(%struct.TYPE_32__*, i8*, i8*, ...) #1

declare dso_local i32 @BSTR_P(%struct.TYPE_33__* byval(%struct.TYPE_33__) align 8) #1

declare dso_local i8* @bstrto0(i8*, %struct.TYPE_33__* byval(%struct.TYPE_33__) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mp_isalnum(i8 signext) #1

declare dso_local void @bstr_cut(%struct.TYPE_33__* sret, %struct.TYPE_33__* byval(%struct.TYPE_33__) align 8, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @bstrtoll(%struct.TYPE_33__* byval(%struct.TYPE_33__) align 8, %struct.TYPE_33__*, i32) #1

declare dso_local void @bstr_splice(%struct.TYPE_33__* sret, %struct.TYPE_33__* byval(%struct.TYPE_33__) align 8, i32, i32) #1

declare dso_local i32 @bstrchr(%struct.TYPE_33__* byval(%struct.TYPE_33__) align 8, i8 signext) #1

declare dso_local void @bstr_strip(%struct.TYPE_33__* sret, %struct.TYPE_33__* byval(%struct.TYPE_33__) align 8) #1

declare dso_local i64 @bstr_equals0(%struct.TYPE_33__* byval(%struct.TYPE_33__) align 8, i8*) #1

declare dso_local i32 @m_profile_set_desc(i32*, %struct.TYPE_33__* byval(%struct.TYPE_33__) align 8) #1

declare dso_local i32 @m_config_set_profile_option(%struct.TYPE_32__*, i32*, %struct.TYPE_33__* byval(%struct.TYPE_33__) align 8, %struct.TYPE_33__* byval(%struct.TYPE_33__) align 8) #1

declare dso_local i32 @m_config_finish_default_profile(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
