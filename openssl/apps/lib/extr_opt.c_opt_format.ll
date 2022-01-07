; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_opt.c_opt_format.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_opt.c_opt_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPT_FMT_PEMDER = common dso_local global i64 0, align 8
@FORMAT_ASN1 = common dso_local global i32 0, align 4
@OPT_FMT_TEXT = common dso_local global i64 0, align 8
@FORMAT_TEXT = common dso_local global i32 0, align 4
@OPT_FMT_NSS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"NSS\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"nss\00", align 1
@FORMAT_NSS = common dso_local global i32 0, align 4
@OPT_FMT_SMIME = common dso_local global i64 0, align 8
@FORMAT_SMIME = common dso_local global i32 0, align 4
@OPT_FMT_MSBLOB = common dso_local global i64 0, align 8
@FORMAT_MSBLOB = common dso_local global i32 0, align 4
@OPT_FMT_ENGINE = common dso_local global i64 0, align 8
@FORMAT_ENGINE = common dso_local global i32 0, align 4
@OPT_FMT_HTTP = common dso_local global i64 0, align 8
@FORMAT_HTTP = common dso_local global i32 0, align 4
@OPT_FMT_PKCS12 = common dso_local global i64 0, align 8
@FORMAT_PKCS12 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"PEM\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pem\00", align 1
@FORMAT_PEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"PVK\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pvk\00", align 1
@OPT_FMT_PVK = common dso_local global i64 0, align 8
@FORMAT_PVK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"P12\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"p12\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"PKCS12\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"pkcs12\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opt_format(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  switch i32 %10, label %11 [
    i32 68, label %12
    i32 100, label %12
    i32 84, label %24
    i32 116, label %24
    i32 78, label %36
    i32 110, label %36
    i32 83, label %60
    i32 115, label %60
    i32 77, label %72
    i32 109, label %72
    i32 69, label %84
    i32 101, label %84
    i32 72, label %96
    i32 104, label %96
    i32 49, label %108
    i32 80, label %120
    i32 112, label %120
  ]

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %199

12:                                               ; preds = %3, %3
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @OPT_FMT_PEMDER, align 8
  %15 = and i64 %13, %14
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @opt_format_error(i8* %18, i64 %19)
  store i32 %20, i32* %4, align 4
  br label %199

21:                                               ; preds = %12
  %22 = load i32, i32* @FORMAT_ASN1, align 4
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  br label %198

24:                                               ; preds = %3, %3
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @OPT_FMT_TEXT, align 8
  %27 = and i64 %25, %26
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @opt_format_error(i8* %30, i64 %31)
  store i32 %32, i32* %4, align 4
  br label %199

33:                                               ; preds = %24
  %34 = load i32, i32* @FORMAT_TEXT, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  br label %198

36:                                               ; preds = %3, %3
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @OPT_FMT_NSS, align 8
  %39 = and i64 %37, %38
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i8*, i8** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @opt_format_error(i8* %42, i64 %43)
  store i32 %44, i32* %4, align 4
  br label %199

45:                                               ; preds = %36
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i8*, i8** %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @opt_format_error(i8* %54, i64 %55)
  store i32 %56, i32* %4, align 4
  br label %199

57:                                               ; preds = %49, %45
  %58 = load i32, i32* @FORMAT_NSS, align 4
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  br label %198

60:                                               ; preds = %3, %3
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @OPT_FMT_SMIME, align 8
  %63 = and i64 %61, %62
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i8*, i8** %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @opt_format_error(i8* %66, i64 %67)
  store i32 %68, i32* %4, align 4
  br label %199

69:                                               ; preds = %60
  %70 = load i32, i32* @FORMAT_SMIME, align 4
  %71 = load i32*, i32** %7, align 8
  store i32 %70, i32* %71, align 4
  br label %198

72:                                               ; preds = %3, %3
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @OPT_FMT_MSBLOB, align 8
  %75 = and i64 %73, %74
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i8*, i8** %5, align 8
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @opt_format_error(i8* %78, i64 %79)
  store i32 %80, i32* %4, align 4
  br label %199

81:                                               ; preds = %72
  %82 = load i32, i32* @FORMAT_MSBLOB, align 4
  %83 = load i32*, i32** %7, align 8
  store i32 %82, i32* %83, align 4
  br label %198

84:                                               ; preds = %3, %3
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* @OPT_FMT_ENGINE, align 8
  %87 = and i64 %85, %86
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i8*, i8** %5, align 8
  %91 = load i64, i64* %6, align 8
  %92 = call i32 @opt_format_error(i8* %90, i64 %91)
  store i32 %92, i32* %4, align 4
  br label %199

93:                                               ; preds = %84
  %94 = load i32, i32* @FORMAT_ENGINE, align 4
  %95 = load i32*, i32** %7, align 8
  store i32 %94, i32* %95, align 4
  br label %198

96:                                               ; preds = %3, %3
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* @OPT_FMT_HTTP, align 8
  %99 = and i64 %97, %98
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i8*, i8** %5, align 8
  %103 = load i64, i64* %6, align 8
  %104 = call i32 @opt_format_error(i8* %102, i64 %103)
  store i32 %104, i32* %4, align 4
  br label %199

105:                                              ; preds = %96
  %106 = load i32, i32* @FORMAT_HTTP, align 4
  %107 = load i32*, i32** %7, align 8
  store i32 %106, i32* %107, align 4
  br label %198

108:                                              ; preds = %3
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* @OPT_FMT_PKCS12, align 8
  %111 = and i64 %109, %110
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i8*, i8** %5, align 8
  %115 = load i64, i64* %6, align 8
  %116 = call i32 @opt_format_error(i8* %114, i64 %115)
  store i32 %116, i32* %4, align 4
  br label %199

117:                                              ; preds = %108
  %118 = load i32, i32* @FORMAT_PKCS12, align 4
  %119 = load i32*, i32** %7, align 8
  store i32 %118, i32* %119, align 4
  br label %198

120:                                              ; preds = %3, %3
  %121 = load i8*, i8** %5, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %120
  %127 = load i8*, i8** %5, align 8
  %128 = call i32 @strcmp(i8* %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i8*, i8** %5, align 8
  %132 = call i32 @strcmp(i8* %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %130, %126, %120
  %135 = load i64, i64* %6, align 8
  %136 = load i64, i64* @OPT_FMT_PEMDER, align 8
  %137 = and i64 %135, %136
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load i8*, i8** %5, align 8
  %141 = load i64, i64* %6, align 8
  %142 = call i32 @opt_format_error(i8* %140, i64 %141)
  store i32 %142, i32* %4, align 4
  br label %199

143:                                              ; preds = %134
  %144 = load i32, i32* @FORMAT_PEM, align 4
  %145 = load i32*, i32** %7, align 8
  store i32 %144, i32* %145, align 4
  br label %197

146:                                              ; preds = %130
  %147 = load i8*, i8** %5, align 8
  %148 = call i32 @strcmp(i8* %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %146
  %151 = load i8*, i8** %5, align 8
  %152 = call i32 @strcmp(i8* %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %150, %146
  %155 = load i64, i64* %6, align 8
  %156 = load i64, i64* @OPT_FMT_PVK, align 8
  %157 = and i64 %155, %156
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = load i8*, i8** %5, align 8
  %161 = load i64, i64* %6, align 8
  %162 = call i32 @opt_format_error(i8* %160, i64 %161)
  store i32 %162, i32* %4, align 4
  br label %199

163:                                              ; preds = %154
  %164 = load i32, i32* @FORMAT_PVK, align 4
  %165 = load i32*, i32** %7, align 8
  store i32 %164, i32* %165, align 4
  br label %196

166:                                              ; preds = %150
  %167 = load i8*, i8** %5, align 8
  %168 = call i32 @strcmp(i8* %167, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %182, label %170

170:                                              ; preds = %166
  %171 = load i8*, i8** %5, align 8
  %172 = call i32 @strcmp(i8* %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %182, label %174

174:                                              ; preds = %170
  %175 = load i8*, i8** %5, align 8
  %176 = call i32 @strcmp(i8* %175, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %174
  %179 = load i8*, i8** %5, align 8
  %180 = call i32 @strcmp(i8* %179, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %178, %174, %170, %166
  %183 = load i64, i64* %6, align 8
  %184 = load i64, i64* @OPT_FMT_PKCS12, align 8
  %185 = and i64 %183, %184
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = load i8*, i8** %5, align 8
  %189 = load i64, i64* %6, align 8
  %190 = call i32 @opt_format_error(i8* %188, i64 %189)
  store i32 %190, i32* %4, align 4
  br label %199

191:                                              ; preds = %182
  %192 = load i32, i32* @FORMAT_PKCS12, align 4
  %193 = load i32*, i32** %7, align 8
  store i32 %192, i32* %193, align 4
  br label %195

194:                                              ; preds = %178
  store i32 0, i32* %4, align 4
  br label %199

195:                                              ; preds = %191
  br label %196

196:                                              ; preds = %195, %163
  br label %197

197:                                              ; preds = %196, %143
  br label %198

198:                                              ; preds = %197, %117, %105, %93, %81, %69, %57, %33, %21
  store i32 1, i32* %4, align 4
  br label %199

199:                                              ; preds = %198, %194, %187, %159, %139, %113, %101, %89, %77, %65, %53, %41, %29, %17, %11
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local i32 @opt_format_error(i8*, i64) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
