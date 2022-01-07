; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_php_conv_open.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_php_conv_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"line-break-chars\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"line-length\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"force-encode-first\00", align 1
@PHP_CONV_QPRINT_OPT_BINARY = common dso_local global i32 0, align 4
@PHP_CONV_QPRINT_OPT_FORCE_ENCODE_FIRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32*, i32)* @php_conv_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @php_conv_open(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %208 [
    i32 130, label %21
    i32 131, label %81
    i32 128, label %90
    i32 129, label %172
  ]

21:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %48

24:                                               ; preds = %21
  %25 = load i32*, i32** %6, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call i32 @GET_STR_PROP(i32* %25, i8* %26, i64 %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 0)
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @GET_UINT_PROP(i32* %29, i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %9, align 4
  %33 = icmp ult i32 %32, 4
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @pefree(i8* %38, i32 0)
  br label %40

40:                                               ; preds = %37, %34
  store i8* null, i8** %10, align 8
  br label %47

41:                                               ; preds = %24
  %42 = load i8*, i8** %10, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i8* @pestrdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i8* %45, i8** %10, align 8
  store i64 2, i64* %11, align 8
  br label %46

46:                                               ; preds = %44, %41
  br label %47

47:                                               ; preds = %46, %40
  br label %48

48:                                               ; preds = %47, %21
  %49 = load i32, i32* %7, align 4
  %50 = call i8* @pemalloc(i32 4, i32 %49)
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %72

53:                                               ; preds = %48
  %54 = load i8*, i8** %8, align 8
  %55 = bitcast i8* %54 to i32*
  %56 = load i32, i32* %9, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @php_conv_base64_encode_ctor(i32* %55, i32 %56, i8* %57, i64 %58, i32 1, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = load i8*, i8** %10, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @pefree(i8* %66, i32 0)
  br label %68

68:                                               ; preds = %65, %62
  br label %211

69:                                               ; preds = %53
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 @pefree(i8* %70, i32 0)
  br label %80

72:                                               ; preds = %48
  %73 = load i8*, i8** %8, align 8
  %74 = bitcast i8* %73 to i32*
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @php_conv_base64_encode_ctor(i32* %74, i32 0, i8* null, i64 0, i32 0, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %211

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %69
  br label %209

81:                                               ; preds = %3
  %82 = load i32, i32* %7, align 4
  %83 = call i8* @pemalloc(i32 4, i32 %82)
  store i8* %83, i8** %8, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = bitcast i8* %84 to i32*
  %86 = call i32 @php_conv_base64_decode_ctor(i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %211

89:                                               ; preds = %81
  br label %209

90:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  store i8* null, i8** %13, align 8
  store i32 0, i32* %15, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %141

93:                                               ; preds = %90
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = load i8*, i8** %13, align 8
  %96 = load i64, i64* %14, align 8
  %97 = call i32 @GET_STR_PROP(i32* %94, i8* %95, i64 %96, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 0)
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @GET_UINT_PROP(i32* %98, i32 %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @GET_BOOL_PROP(i32* %101, i32 %102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %17, align 4
  %106 = call i32 @GET_BOOL_PROP(i32* %104, i32 %105, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %107 = load i32, i32* %12, align 4
  %108 = icmp ult i32 %107, 4
  br i1 %108, label %109, label %116

109:                                              ; preds = %93
  %110 = load i8*, i8** %13, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i8*, i8** %13, align 8
  %114 = call i32 @pefree(i8* %113, i32 0)
  br label %115

115:                                              ; preds = %112, %109
  store i8* null, i8** %13, align 8
  br label %122

116:                                              ; preds = %93
  %117 = load i8*, i8** %13, align 8
  %118 = icmp eq i8* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = call i8* @pestrdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i8* %120, i8** %13, align 8
  store i64 2, i64* %14, align 8
  br label %121

121:                                              ; preds = %119, %116
  br label %122

122:                                              ; preds = %121, %115
  %123 = load i32, i32* %16, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i32, i32* @PHP_CONV_QPRINT_OPT_BINARY, align 4
  br label %128

127:                                              ; preds = %122
  br label %128

128:                                              ; preds = %127, %125
  %129 = phi i32 [ %126, %125 ], [ 0, %127 ]
  %130 = load i32, i32* %15, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %17, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i32, i32* @PHP_CONV_QPRINT_OPT_FORCE_ENCODE_FIRST, align 4
  br label %137

136:                                              ; preds = %128
  br label %137

137:                                              ; preds = %136, %134
  %138 = phi i32 [ %135, %134 ], [ 0, %136 ]
  %139 = load i32, i32* %15, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %15, align 4
  br label %141

141:                                              ; preds = %137, %90
  %142 = load i32, i32* %7, align 4
  %143 = call i8* @pemalloc(i32 4, i32 %142)
  store i8* %143, i8** %8, align 8
  %144 = load i8*, i8** %13, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %162

146:                                              ; preds = %141
  %147 = load i8*, i8** %8, align 8
  %148 = bitcast i8* %147 to i32*
  %149 = load i32, i32* %12, align 4
  %150 = load i8*, i8** %13, align 8
  %151 = load i64, i64* %14, align 8
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @php_conv_qprint_encode_ctor(i32* %148, i32 %149, i8* %150, i64 %151, i32 1, i32 %152, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %146
  %157 = load i8*, i8** %13, align 8
  %158 = call i32 @pefree(i8* %157, i32 0)
  br label %211

159:                                              ; preds = %146
  %160 = load i8*, i8** %13, align 8
  %161 = call i32 @pefree(i8* %160, i32 0)
  br label %171

162:                                              ; preds = %141
  %163 = load i8*, i8** %8, align 8
  %164 = bitcast i8* %163 to i32*
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %7, align 4
  %167 = call i32 @php_conv_qprint_encode_ctor(i32* %164, i32 0, i8* null, i64 0, i32 0, i32 %165, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  br label %211

170:                                              ; preds = %162
  br label %171

171:                                              ; preds = %170, %159
  br label %209

172:                                              ; preds = %3
  store i8* null, i8** %18, align 8
  %173 = load i32*, i32** %6, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %172
  %176 = load i32*, i32** %6, align 8
  %177 = load i8*, i8** %18, align 8
  %178 = load i64, i64* %19, align 8
  %179 = call i32 @GET_STR_PROP(i32* %176, i8* %177, i64 %178, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %180

180:                                              ; preds = %175, %172
  %181 = load i32, i32* %7, align 4
  %182 = call i8* @pemalloc(i32 4, i32 %181)
  store i8* %182, i8** %8, align 8
  %183 = load i8*, i8** %18, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %199

185:                                              ; preds = %180
  %186 = load i8*, i8** %8, align 8
  %187 = bitcast i8* %186 to i32*
  %188 = load i8*, i8** %18, align 8
  %189 = load i64, i64* %19, align 8
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @php_conv_qprint_decode_ctor(i32* %187, i8* %188, i64 %189, i32 1, i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %185
  %194 = load i8*, i8** %18, align 8
  %195 = call i32 @pefree(i8* %194, i32 0)
  br label %211

196:                                              ; preds = %185
  %197 = load i8*, i8** %18, align 8
  %198 = call i32 @pefree(i8* %197, i32 0)
  br label %207

199:                                              ; preds = %180
  %200 = load i8*, i8** %8, align 8
  %201 = bitcast i8* %200 to i32*
  %202 = load i32, i32* %7, align 4
  %203 = call i32 @php_conv_qprint_decode_ctor(i32* %201, i8* null, i64 0, i32 0, i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %199
  br label %211

206:                                              ; preds = %199
  br label %207

207:                                              ; preds = %206, %196
  br label %209

208:                                              ; preds = %3
  store i8* null, i8** %8, align 8
  br label %209

209:                                              ; preds = %208, %207, %171, %89, %80
  %210 = load i8*, i8** %8, align 8
  store i8* %210, i8** %4, align 8
  br label %219

211:                                              ; preds = %205, %193, %169, %156, %88, %78, %68
  %212 = load i8*, i8** %8, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  %215 = load i8*, i8** %8, align 8
  %216 = load i32, i32* %7, align 4
  %217 = call i32 @pefree(i8* %215, i32 %216)
  br label %218

218:                                              ; preds = %214, %211
  store i8* null, i8** %4, align 8
  br label %219

219:                                              ; preds = %218, %209
  %220 = load i8*, i8** %4, align 8
  ret i8* %220
}

declare dso_local i32 @GET_STR_PROP(i32*, i8*, i64, i8*, i32) #1

declare dso_local i32 @GET_UINT_PROP(i32*, i32, i8*) #1

declare dso_local i32 @pefree(i8*, i32) #1

declare dso_local i8* @pestrdup(i8*, i32) #1

declare dso_local i8* @pemalloc(i32, i32) #1

declare dso_local i32 @php_conv_base64_encode_ctor(i32*, i32, i8*, i64, i32, i32) #1

declare dso_local i32 @php_conv_base64_decode_ctor(i32*) #1

declare dso_local i32 @GET_BOOL_PROP(i32*, i32, i8*) #1

declare dso_local i32 @php_conv_qprint_encode_ctor(i32*, i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @php_conv_qprint_decode_ctor(i32*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
