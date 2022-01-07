; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_passwd.c_do_passwd.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_passwd.c_do_passwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@passwd_crypt = common dso_local global i64 0, align 8
@passwd_md5 = common dso_local global i64 0, align 8
@passwd_apr1 = common dso_local global i64 0, align 8
@passwd_aixmd5 = common dso_local global i64 0, align 8
@passwd_sha256 = common dso_local global i64 0, align 8
@passwd_sha512 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"salt buffer\00", align 1
@cov_2char = common dso_local global i8* null, align 8
@bio_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Warning: truncating password to %u characters\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"apr1\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%s\09%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8**, i8*, i32*, i32, i32, i32, i64, i64)* @do_passwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_passwd(i32 %0, i8** %1, i8** %2, i8* %3, i32* %4, i32 %5, i32 %6, i32 %7, i64 %8, i64 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store i32 %0, i32* %12, align 4
  store i8** %1, i8*** %13, align 8
  store i8** %2, i8*** %14, align 8
  store i8* %3, i8** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i64 %8, i64* %20, align 8
  store i64 %9, i64* %21, align 8
  store i8* null, i8** %22, align 8
  %25 = load i8**, i8*** %13, align 8
  %26 = icmp ne i8** %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i8**, i8*** %14, align 8
  %30 = icmp ne i8** %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %112, label %35

35:                                               ; preds = %10
  store i64 0, i64* %23, align 8
  %36 = load i64, i64* %21, align 8
  %37 = load i64, i64* @passwd_crypt, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i64 2, i64* %23, align 8
  br label %40

40:                                               ; preds = %39, %35
  %41 = load i64, i64* %21, align 8
  %42 = load i64, i64* @passwd_md5, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %21, align 8
  %46 = load i64, i64* @passwd_apr1, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %21, align 8
  %50 = load i64, i64* @passwd_aixmd5, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %44, %40
  store i64 8, i64* %23, align 8
  br label %53

53:                                               ; preds = %52, %48
  %54 = load i64, i64* %21, align 8
  %55 = load i64, i64* @passwd_sha256, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %21, align 8
  %59 = load i64, i64* @passwd_sha512, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %53
  store i64 16, i64* %23, align 8
  br label %62

62:                                               ; preds = %61, %57
  %63 = load i64, i64* %23, align 8
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i8**, i8*** %14, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load i64, i64* %23, align 8
  %72 = add i64 %71, 1
  %73 = call i8* @app_malloc(i64 %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %74 = load i8**, i8*** %14, align 8
  store i8* %73, i8** %74, align 8
  %75 = load i8**, i8*** %13, align 8
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %70, %62
  %77 = load i8**, i8*** %13, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = load i64, i64* %23, align 8
  %80 = call i64 @RAND_bytes(i8* %78, i64 %79)
  %81 = icmp sle i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %228

83:                                               ; preds = %76
  store i64 0, i64* %24, align 8
  br label %84

84:                                               ; preds = %104, %83
  %85 = load i64, i64* %24, align 8
  %86 = load i64, i64* %23, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %84
  %89 = load i8*, i8** @cov_2char, align 8
  %90 = load i8**, i8*** %13, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = load i64, i64* %24, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = and i32 %95, 63
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %89, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = load i8**, i8*** %13, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = load i64, i64* %24, align 8
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8 %99, i8* %103, align 1
  br label %104

104:                                              ; preds = %88
  %105 = load i64, i64* %24, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %24, align 8
  br label %84

107:                                              ; preds = %84
  %108 = load i8**, i8*** %13, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = load i64, i64* %24, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8 0, i8* %111, align 1
  br label %112

112:                                              ; preds = %107, %10
  %113 = load i8**, i8*** %13, align 8
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = load i8*, i8** %15, align 8
  %119 = call i64 @strlen(i8* %118)
  %120 = load i64, i64* %20, align 8
  %121 = icmp ugt i64 %119, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %112
  %123 = load i32, i32* %17, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* @bio_err, align 4
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i32*
  %129 = load i64, i64* %20, align 8
  %130 = trunc i64 %129 to i32
  %131 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %128, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %125, %122
  %133 = load i8*, i8** %15, align 8
  %134 = load i64, i64* %20, align 8
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  store i8 0, i8* %135, align 1
  br label %136

136:                                              ; preds = %132, %112
  %137 = load i8*, i8** %15, align 8
  %138 = call i64 @strlen(i8* %137)
  %139 = load i64, i64* %20, align 8
  %140 = icmp ule i64 %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = load i64, i64* %21, align 8
  %144 = load i64, i64* @passwd_crypt, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %136
  %147 = load i8*, i8** %15, align 8
  %148 = load i8**, i8*** %13, align 8
  %149 = load i8*, i8** %148, align 8
  %150 = call i8* @DES_crypt(i8* %147, i8* %149)
  store i8* %150, i8** %22, align 8
  br label %151

151:                                              ; preds = %146, %136
  %152 = load i64, i64* %21, align 8
  %153 = load i64, i64* @passwd_md5, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %159, label %155

155:                                              ; preds = %151
  %156 = load i64, i64* %21, align 8
  %157 = load i64, i64* @passwd_apr1, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %169

159:                                              ; preds = %155, %151
  %160 = load i8*, i8** %15, align 8
  %161 = load i64, i64* %21, align 8
  %162 = load i64, i64* @passwd_md5, align 8
  %163 = icmp eq i64 %161, %162
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %166 = load i8**, i8*** %13, align 8
  %167 = load i8*, i8** %166, align 8
  %168 = call i8* @md5crypt(i8* %160, i8* %165, i8* %167)
  store i8* %168, i8** %22, align 8
  br label %169

169:                                              ; preds = %159, %155
  %170 = load i64, i64* %21, align 8
  %171 = load i64, i64* @passwd_aixmd5, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %169
  %174 = load i8*, i8** %15, align 8
  %175 = load i8**, i8*** %13, align 8
  %176 = load i8*, i8** %175, align 8
  %177 = call i8* @md5crypt(i8* %174, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* %176)
  store i8* %177, i8** %22, align 8
  br label %178

178:                                              ; preds = %173, %169
  %179 = load i64, i64* %21, align 8
  %180 = load i64, i64* @passwd_sha256, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %186, label %182

182:                                              ; preds = %178
  %183 = load i64, i64* %21, align 8
  %184 = load i64, i64* @passwd_sha512, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %196

186:                                              ; preds = %182, %178
  %187 = load i8*, i8** %15, align 8
  %188 = load i64, i64* %21, align 8
  %189 = load i64, i64* @passwd_sha256, align 8
  %190 = icmp eq i64 %188, %189
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %193 = load i8**, i8*** %13, align 8
  %194 = load i8*, i8** %193, align 8
  %195 = call i8* @shacrypt(i8* %187, i8* %192, i8* %194)
  store i8* %195, i8** %22, align 8
  br label %196

196:                                              ; preds = %186, %182
  %197 = load i8*, i8** %22, align 8
  %198 = icmp ne i8* %197, null
  %199 = zext i1 %198 to i32
  %200 = call i32 @assert(i32 %199)
  %201 = load i32, i32* %18, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %211

203:                                              ; preds = %196
  %204 = load i32, i32* %19, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %203
  %207 = load i32*, i32** %16, align 8
  %208 = load i8*, i8** %15, align 8
  %209 = load i8*, i8** %22, align 8
  %210 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %207, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %208, i8* %209)
  br label %227

211:                                              ; preds = %203, %196
  %212 = load i32, i32* %18, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %211
  %215 = load i32, i32* %19, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %214
  %218 = load i32*, i32** %16, align 8
  %219 = load i8*, i8** %22, align 8
  %220 = load i8*, i8** %15, align 8
  %221 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %218, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %219, i8* %220)
  br label %226

222:                                              ; preds = %214, %211
  %223 = load i32*, i32** %16, align 8
  %224 = load i8*, i8** %22, align 8
  %225 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %223, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %224)
  br label %226

226:                                              ; preds = %222, %217
  br label %227

227:                                              ; preds = %226, %206
  store i32 1, i32* %11, align 4
  br label %229

228:                                              ; preds = %82
  store i32 0, i32* %11, align 4
  br label %229

229:                                              ; preds = %228, %227
  %230 = load i32, i32* %11, align 4
  ret i32 %230
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @app_malloc(i64, i8*) #1

declare dso_local i64 @RAND_bytes(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i8* @DES_crypt(i8*, i8*) #1

declare dso_local i8* @md5crypt(i8*, i8*, i8*) #1

declare dso_local i8* @shacrypt(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
