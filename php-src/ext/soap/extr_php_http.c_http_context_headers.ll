; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_http.c_http_context_headers.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_http.c_http_context_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@IS_STRING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"connection\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"user-agent\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"content-length\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"content-type\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"cookie\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"authorization\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"proxy-authorization\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http_context_headers(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %247

17:                                               ; preds = %5
  %18 = load i32*, i32** %6, align 8
  %19 = call i32* @php_stream_context_get_option(i32* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32* %19, i32** %11, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %247

21:                                               ; preds = %17
  %22 = load i32*, i32** %11, align 8
  %23 = call i64 @Z_TYPE_P(i32* %22)
  %24 = load i64, i64* @IS_STRING, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %247

26:                                               ; preds = %21
  %27 = load i32*, i32** %11, align 8
  %28 = call i64 @Z_STRLEN_P(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %247

30:                                               ; preds = %26
  %31 = load i32*, i32** %11, align 8
  %32 = call i8* @Z_STRVAL_P(i32* %31)
  store i8* %32, i8** %12, align 8
  br label %33

33:                                               ; preds = %244, %30
  %34 = load i8*, i8** %12, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %246

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %60, %37
  %39 = load i8*, i8** %12, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 32
  br i1 %42, label %58, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %12, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 9
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %12, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 13
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** %12, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 10
  br label %58

58:                                               ; preds = %53, %48, %43, %38
  %59 = phi i1 [ true, %48 ], [ true, %43 ], [ true, %38 ], [ %57, %53 ]
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = load i8*, i8** %12, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %12, align 8
  br label %38

63:                                               ; preds = %58
  %64 = load i8*, i8** %12, align 8
  store i8* %64, i8** %13, align 8
  store i32 -1, i32* %14, align 4
  br label %65

65:                                               ; preds = %119, %63
  %66 = load i8*, i8** %13, align 8
  %67 = load i8, i8* %66, align 1
  %68 = icmp ne i8 %67, 0
  br i1 %68, label %69, label %122

69:                                               ; preds = %65
  %70 = load i8*, i8** %13, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 58
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i8*, i8** %13, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = ptrtoint i8* %78 to i64
  %81 = ptrtoint i8* %79 to i64
  %82 = sub i64 %80, %81
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %77, %74
  br label %122

85:                                               ; preds = %69
  %86 = load i8*, i8** %13, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 32
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load i8*, i8** %13, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 9
  br i1 %94, label %95, label %106

95:                                               ; preds = %90, %85
  %96 = load i32, i32* %14, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load i8*, i8** %13, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %14, align 4
  br label %105

105:                                              ; preds = %98, %95
  br label %118

106:                                              ; preds = %90
  %107 = load i8*, i8** %13, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 13
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = load i8*, i8** %13, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 10
  br i1 %115, label %116, label %117

116:                                              ; preds = %111, %106
  br label %122

117:                                              ; preds = %111
  br label %118

118:                                              ; preds = %117, %105
  br label %119

119:                                              ; preds = %118
  %120 = load i8*, i8** %13, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %13, align 8
  br label %65

122:                                              ; preds = %116, %84, %65
  %123 = load i8*, i8** %13, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 58
  br i1 %126, label %127, label %234

127:                                              ; preds = %122
  br label %128

128:                                              ; preds = %145, %127
  %129 = load i8*, i8** %13, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %128
  %134 = load i8*, i8** %13, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 13
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load i8*, i8** %13, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 10
  br label %143

143:                                              ; preds = %138, %133, %128
  %144 = phi i1 [ false, %133 ], [ false, %128 ], [ %142, %138 ]
  br i1 %144, label %145, label %148

145:                                              ; preds = %143
  %146 = load i8*, i8** %13, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %13, align 8
  br label %128

148:                                              ; preds = %143
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = icmp ne i64 %150, 4
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = load i8*, i8** %12, align 8
  %154 = call i64 @strncasecmp(i8* %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %233

156:                                              ; preds = %152, %148
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = icmp ne i64 %158, 10
  br i1 %159, label %164, label %160

160:                                              ; preds = %156
  %161 = load i8*, i8** %12, align 8
  %162 = call i64 @strncasecmp(i8* %161, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %233

164:                                              ; preds = %160, %156
  %165 = load i32, i32* %14, align 4
  %166 = sext i32 %165 to i64
  %167 = icmp ne i64 %166, 10
  br i1 %167, label %172, label %168

168:                                              ; preds = %164
  %169 = load i8*, i8** %12, align 8
  %170 = call i64 @strncasecmp(i8* %169, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 10)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %233

172:                                              ; preds = %168, %164
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = icmp ne i64 %174, 14
  br i1 %175, label %180, label %176

176:                                              ; preds = %172
  %177 = load i8*, i8** %12, align 8
  %178 = call i64 @strncasecmp(i8* %177, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 14)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %233

180:                                              ; preds = %176, %172
  %181 = load i32, i32* %14, align 4
  %182 = sext i32 %181 to i64
  %183 = icmp ne i64 %182, 12
  br i1 %183, label %188, label %184

184:                                              ; preds = %180
  %185 = load i8*, i8** %12, align 8
  %186 = call i64 @strncasecmp(i8* %185, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 12)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %233

188:                                              ; preds = %184, %180
  %189 = load i32, i32* %9, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %188
  %192 = load i32, i32* %14, align 4
  %193 = sext i32 %192 to i64
  %194 = icmp ne i64 %193, 6
  br i1 %194, label %199, label %195

195:                                              ; preds = %191
  %196 = load i8*, i8** %12, align 8
  %197 = call i64 @strncasecmp(i8* %196, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 6)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %233

199:                                              ; preds = %195, %191, %188
  %200 = load i32, i32* %7, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %199
  %203 = load i32, i32* %14, align 4
  %204 = sext i32 %203 to i64
  %205 = icmp ne i64 %204, 13
  br i1 %205, label %210, label %206

206:                                              ; preds = %202
  %207 = load i8*, i8** %12, align 8
  %208 = call i64 @strncasecmp(i8* %207, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 13)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %233

210:                                              ; preds = %206, %202, %199
  %211 = load i32, i32* %8, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %210
  %214 = load i32, i32* %14, align 4
  %215 = sext i32 %214 to i64
  %216 = icmp ne i64 %215, 19
  br i1 %216, label %221, label %217

217:                                              ; preds = %213
  %218 = load i8*, i8** %12, align 8
  %219 = call i64 @strncasecmp(i8* %218, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 19)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %233

221:                                              ; preds = %217, %213, %210
  %222 = load i32*, i32** %10, align 8
  %223 = load i8*, i8** %12, align 8
  %224 = load i8*, i8** %13, align 8
  %225 = load i8*, i8** %12, align 8
  %226 = ptrtoint i8* %224 to i64
  %227 = ptrtoint i8* %225 to i64
  %228 = sub i64 %226, %227
  %229 = trunc i64 %228 to i32
  %230 = call i32 @smart_str_appendl(i32* %222, i8* %223, i32 %229)
  %231 = load i32*, i32** %10, align 8
  %232 = call i32 @smart_str_append_const(i32* %231, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %233

233:                                              ; preds = %221, %217, %206, %195, %184, %176, %168, %160, %152
  br label %234

234:                                              ; preds = %233, %122
  %235 = load i8*, i8** %13, align 8
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %234
  %240 = load i8*, i8** %13, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 1
  br label %244

242:                                              ; preds = %234
  %243 = load i8*, i8** %13, align 8
  br label %244

244:                                              ; preds = %242, %239
  %245 = phi i8* [ %241, %239 ], [ %243, %242 ]
  store i8* %245, i8** %12, align 8
  br label %33

246:                                              ; preds = %33
  br label %247

247:                                              ; preds = %246, %26, %21, %17, %5
  ret void
}

declare dso_local i32* @php_stream_context_get_option(i32*, i8*, i8*) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i64 @Z_STRLEN_P(i32*) #1

declare dso_local i8* @Z_STRVAL_P(i32*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @smart_str_appendl(i32*, i8*, i32) #1

declare dso_local i32 @smart_str_append_const(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
