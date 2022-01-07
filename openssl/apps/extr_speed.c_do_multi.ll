; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_speed.c_do_multi.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_speed.c_do_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_multi.sep = internal global [2 x i8] c":\00", align 1
@.str = private unnamed_addr constant [23 x i8] c"fd buffer for do_multi\00", align 1
@bio_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"pipe failure\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"dup failed\0A\00", align 1
@mr = common dso_local global i32 0, align 4
@usertime = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"Forked child %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Don't understand line '%s' from child %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Got: %s from %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"+F:\00", align 1
@results = common dso_local global double** null, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"+F2:\00", align 1
@rsa_results = common dso_local global double** null, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"+F3:\00", align 1
@dsa_results = common dso_local global double** null, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"+F4:\00", align 1
@ecdsa_results = common dso_local global double** null, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"+F5:\00", align 1
@ecdh_results = common dso_local global double** null, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"+F6:\00", align 1
@eddsa_results = common dso_local global double** null, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"+F7:\00", align 1
@sm2_results = common dso_local global double** null, align 8
@.str.14 = private unnamed_addr constant [4 x i8] c"+H:\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Unknown type '%s' from child %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @do_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_multi(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 4, %27
  %29 = trunc i64 %28 to i32
  %30 = call i32* @app_malloc(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32* %30, i32** %8, align 8
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %82, %2
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %85

35:                                               ; preds = %31
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %37 = call i32 @pipe(i32* %36)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @bio_err, align 4
  %41 = call i32 (i32, i8*, ...) @BIO_printf(i32 %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @exit(i32 1) #3
  unreachable

43:                                               ; preds = %35
  %44 = load i32, i32* @stdout, align 4
  %45 = call i32 @fflush(i32 %44)
  %46 = load i32, i32* @bio_err, align 4
  %47 = call i32 @BIO_flush(i32 %46)
  %48 = call i64 (...) @fork()
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @close(i32 %52)
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %55, i32* %59, align 4
  br label %79

60:                                               ; preds = %43
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @close(i32 %62)
  %64 = call i32 @close(i32 1)
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dup(i32 %66)
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  %70 = load i32, i32* @bio_err, align 4
  %71 = call i32 (i32, i8*, ...) @BIO_printf(i32 %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %72 = call i32 @exit(i32 1) #3
  unreachable

73:                                               ; preds = %60
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @close(i32 %75)
  store i32 1, i32* @mr, align 4
  store i64 0, i64* @usertime, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @OPENSSL_free(i32* %77)
  store i32 0, i32* %3, align 4
  br label %361

79:                                               ; preds = %50
  %80 = load i32, i32* %6, align 4
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %31

85:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %355, %85
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %358

90:                                               ; preds = %86
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32* @fdopen(i32 %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %96, i32** %9, align 8
  br label %97

97:                                               ; preds = %351, %114, %90
  %98 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %99 = load i32*, i32** %9, align 8
  %100 = call i64 @fgets(i8* %98, i32 1024, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %352

102:                                              ; preds = %97
  %103 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %104 = call i8* @strchr(i8* %103, i8 signext 10)
  store i8* %104, i8** %11, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i8*, i8** %11, align 8
  store i8 0, i8* %108, align 1
  br label %109

109:                                              ; preds = %107, %102
  %110 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %111 = load i8, i8* %110, align 16
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 43
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load i32, i32* @bio_err, align 4
  %116 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %117 = load i32, i32* %6, align 4
  %118 = call i32 (i32, i8*, ...) @BIO_printf(i32 %115, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %116, i32 %117)
  br label %97

119:                                              ; preds = %109
  %120 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %121 = load i32, i32* %6, align 4
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %120, i32 %121)
  %123 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %124 = call i64 @strncmp(i8* %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 3)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %153

126:                                              ; preds = %119
  %127 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %128 = getelementptr inbounds i8, i8* %127, i64 3
  store i8* %128, i8** %11, align 8
  %129 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %130 = call i32 @atoi(i32 %129)
  store i32 %130, i32* %12, align 4
  %131 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %132

132:                                              ; preds = %149, %126
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %5, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %152

136:                                              ; preds = %132
  %137 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %138 = call double @atof(i32 %137)
  %139 = load double**, double*** @results, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds double*, double** %139, i64 %141
  %143 = load double*, double** %142, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds double, double* %143, i64 %145
  %147 = load double, double* %146, align 8
  %148 = fadd double %147, %138
  store double %148, double* %146, align 8
  br label %149

149:                                              ; preds = %136
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %13, align 4
  br label %132

152:                                              ; preds = %132
  br label %351

153:                                              ; preds = %119
  %154 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %155 = call i64 @strncmp(i8* %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %185

157:                                              ; preds = %153
  %158 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %159 = getelementptr inbounds i8, i8* %158, i64 4
  store i8* %159, i8** %11, align 8
  %160 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %161 = call i32 @atoi(i32 %160)
  store i32 %161, i32* %14, align 4
  %162 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %163 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %164 = call double @atof(i32 %163)
  store double %164, double* %15, align 8
  %165 = load double, double* %15, align 8
  %166 = load double**, double*** @rsa_results, align 8
  %167 = load i32, i32* %14, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds double*, double** %166, i64 %168
  %170 = load double*, double** %169, align 8
  %171 = getelementptr inbounds double, double* %170, i64 0
  %172 = load double, double* %171, align 8
  %173 = fadd double %172, %165
  store double %173, double* %171, align 8
  %174 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %175 = call double @atof(i32 %174)
  store double %175, double* %15, align 8
  %176 = load double, double* %15, align 8
  %177 = load double**, double*** @rsa_results, align 8
  %178 = load i32, i32* %14, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds double*, double** %177, i64 %179
  %181 = load double*, double** %180, align 8
  %182 = getelementptr inbounds double, double* %181, i64 1
  %183 = load double, double* %182, align 8
  %184 = fadd double %183, %176
  store double %184, double* %182, align 8
  br label %350

185:                                              ; preds = %153
  %186 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %187 = call i64 @strncmp(i8* %186, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4)
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %217

189:                                              ; preds = %185
  %190 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %191 = getelementptr inbounds i8, i8* %190, i64 4
  store i8* %191, i8** %11, align 8
  %192 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %193 = call i32 @atoi(i32 %192)
  store i32 %193, i32* %16, align 4
  %194 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %195 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %196 = call double @atof(i32 %195)
  store double %196, double* %17, align 8
  %197 = load double, double* %17, align 8
  %198 = load double**, double*** @dsa_results, align 8
  %199 = load i32, i32* %16, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds double*, double** %198, i64 %200
  %202 = load double*, double** %201, align 8
  %203 = getelementptr inbounds double, double* %202, i64 0
  %204 = load double, double* %203, align 8
  %205 = fadd double %204, %197
  store double %205, double* %203, align 8
  %206 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %207 = call double @atof(i32 %206)
  store double %207, double* %17, align 8
  %208 = load double, double* %17, align 8
  %209 = load double**, double*** @dsa_results, align 8
  %210 = load i32, i32* %16, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds double*, double** %209, i64 %211
  %213 = load double*, double** %212, align 8
  %214 = getelementptr inbounds double, double* %213, i64 1
  %215 = load double, double* %214, align 8
  %216 = fadd double %215, %208
  store double %216, double* %214, align 8
  br label %349

217:                                              ; preds = %185
  %218 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %219 = call i64 @strncmp(i8* %218, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 4)
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %221, label %249

221:                                              ; preds = %217
  %222 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %223 = getelementptr inbounds i8, i8* %222, i64 4
  store i8* %223, i8** %11, align 8
  %224 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %225 = call i32 @atoi(i32 %224)
  store i32 %225, i32* %18, align 4
  %226 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %227 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %228 = call double @atof(i32 %227)
  store double %228, double* %19, align 8
  %229 = load double, double* %19, align 8
  %230 = load double**, double*** @ecdsa_results, align 8
  %231 = load i32, i32* %18, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds double*, double** %230, i64 %232
  %234 = load double*, double** %233, align 8
  %235 = getelementptr inbounds double, double* %234, i64 0
  %236 = load double, double* %235, align 8
  %237 = fadd double %236, %229
  store double %237, double* %235, align 8
  %238 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %239 = call double @atof(i32 %238)
  store double %239, double* %19, align 8
  %240 = load double, double* %19, align 8
  %241 = load double**, double*** @ecdsa_results, align 8
  %242 = load i32, i32* %18, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds double*, double** %241, i64 %243
  %245 = load double*, double** %244, align 8
  %246 = getelementptr inbounds double, double* %245, i64 1
  %247 = load double, double* %246, align 8
  %248 = fadd double %247, %240
  store double %248, double* %246, align 8
  br label %348

249:                                              ; preds = %217
  %250 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %251 = call i64 @strncmp(i8* %250, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 4)
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %270

253:                                              ; preds = %249
  %254 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %255 = getelementptr inbounds i8, i8* %254, i64 4
  store i8* %255, i8** %11, align 8
  %256 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %257 = call i32 @atoi(i32 %256)
  store i32 %257, i32* %20, align 4
  %258 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %259 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %260 = call double @atof(i32 %259)
  store double %260, double* %21, align 8
  %261 = load double, double* %21, align 8
  %262 = load double**, double*** @ecdh_results, align 8
  %263 = load i32, i32* %20, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds double*, double** %262, i64 %264
  %266 = load double*, double** %265, align 8
  %267 = getelementptr inbounds double, double* %266, i64 0
  %268 = load double, double* %267, align 8
  %269 = fadd double %268, %261
  store double %269, double* %267, align 8
  br label %347

270:                                              ; preds = %249
  %271 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %272 = call i64 @strncmp(i8* %271, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 4)
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %274, label %302

274:                                              ; preds = %270
  %275 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %276 = getelementptr inbounds i8, i8* %275, i64 4
  store i8* %276, i8** %11, align 8
  %277 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %278 = call i32 @atoi(i32 %277)
  store i32 %278, i32* %22, align 4
  %279 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %280 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %281 = call double @atof(i32 %280)
  store double %281, double* %23, align 8
  %282 = load double, double* %23, align 8
  %283 = load double**, double*** @eddsa_results, align 8
  %284 = load i32, i32* %22, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds double*, double** %283, i64 %285
  %287 = load double*, double** %286, align 8
  %288 = getelementptr inbounds double, double* %287, i64 0
  %289 = load double, double* %288, align 8
  %290 = fadd double %289, %282
  store double %290, double* %288, align 8
  %291 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %292 = call double @atof(i32 %291)
  store double %292, double* %23, align 8
  %293 = load double, double* %23, align 8
  %294 = load double**, double*** @eddsa_results, align 8
  %295 = load i32, i32* %22, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds double*, double** %294, i64 %296
  %298 = load double*, double** %297, align 8
  %299 = getelementptr inbounds double, double* %298, i64 1
  %300 = load double, double* %299, align 8
  %301 = fadd double %300, %293
  store double %301, double* %299, align 8
  br label %346

302:                                              ; preds = %270
  %303 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %304 = call i64 @strncmp(i8* %303, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 4)
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %306, label %334

306:                                              ; preds = %302
  %307 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %308 = getelementptr inbounds i8, i8* %307, i64 4
  store i8* %308, i8** %11, align 8
  %309 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %310 = call i32 @atoi(i32 %309)
  store i32 %310, i32* %24, align 4
  %311 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %312 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %313 = call double @atof(i32 %312)
  store double %313, double* %25, align 8
  %314 = load double, double* %25, align 8
  %315 = load double**, double*** @sm2_results, align 8
  %316 = load i32, i32* %24, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds double*, double** %315, i64 %317
  %319 = load double*, double** %318, align 8
  %320 = getelementptr inbounds double, double* %319, i64 0
  %321 = load double, double* %320, align 8
  %322 = fadd double %321, %314
  store double %322, double* %320, align 8
  %323 = call i32 @sstrsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @do_multi.sep, i64 0, i64 0))
  %324 = call double @atof(i32 %323)
  store double %324, double* %25, align 8
  %325 = load double, double* %25, align 8
  %326 = load double**, double*** @sm2_results, align 8
  %327 = load i32, i32* %24, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds double*, double** %326, i64 %328
  %330 = load double*, double** %329, align 8
  %331 = getelementptr inbounds double, double* %330, i64 1
  %332 = load double, double* %331, align 8
  %333 = fadd double %332, %325
  store double %333, double* %331, align 8
  br label %345

334:                                              ; preds = %302
  %335 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %336 = call i64 @strncmp(i8* %335, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 3)
  %337 = icmp eq i64 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %334
  br label %344

339:                                              ; preds = %334
  %340 = load i32, i32* @bio_err, align 4
  %341 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %342 = load i32, i32* %6, align 4
  %343 = call i32 (i32, i8*, ...) @BIO_printf(i32 %340, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i8* %341, i32 %342)
  br label %344

344:                                              ; preds = %339, %338
  br label %345

345:                                              ; preds = %344, %306
  br label %346

346:                                              ; preds = %345, %274
  br label %347

347:                                              ; preds = %346, %253
  br label %348

348:                                              ; preds = %347, %221
  br label %349

349:                                              ; preds = %348, %189
  br label %350

350:                                              ; preds = %349, %157
  br label %351

351:                                              ; preds = %350, %152
  br label %97

352:                                              ; preds = %97
  %353 = load i32*, i32** %9, align 8
  %354 = call i32 @fclose(i32* %353)
  br label %355

355:                                              ; preds = %352
  %356 = load i32, i32* %6, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %6, align 4
  br label %86

358:                                              ; preds = %86
  %359 = load i32*, i32** %8, align 8
  %360 = call i32 @OPENSSL_free(i32* %359)
  store i32 1, i32* %3, align 4
  br label %361

361:                                              ; preds = %358, %73
  %362 = load i32, i32* %3, align 4
  ret i32 %362
}

declare dso_local i32* @app_malloc(i32, i8*) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @BIO_flush(i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @dup(i32) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @sstrsep(i8**, i8*) #1

declare dso_local double @atof(i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
