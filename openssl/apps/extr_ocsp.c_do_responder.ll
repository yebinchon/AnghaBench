; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_ocsp.c_do_responder.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_ocsp.c_do_responder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"GET \00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Invalid request -- bad URL: %s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" HTTP/1.\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Invalid request -- bad HTTP version: %s\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Invalid request -- bad URL encoding: %s\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Could not allocate base64 bio: %s\00", align 1
@BIO_FLAGS_BASE64_NO_NL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"POST \00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Invalid request -- bad HTTP verb: %s\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Error parsing OCSP request\00", align 1
@INVALID_SOCKET = common dso_local global i64 0, align 8
@acfd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32**, i32*, i32)* @do_responder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_responder(i32** %0, i32** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca [2048 x i8], align 16
  %13 = alloca [2048 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  store i32** %0, i32*** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %11, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  %20 = load i32**, i32*** %6, align 8
  store i32* null, i32** %20, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i64 @BIO_do_accept(i32* %21)
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %176

25:                                               ; preds = %4
  %26 = load i32*, i32** %8, align 8
  %27 = call i32* @BIO_pop(i32* %26)
  store i32* %27, i32** %16, align 8
  %28 = load i32*, i32** %16, align 8
  %29 = load i32**, i32*** %7, align 8
  store i32* %28, i32** %29, align 8
  %30 = load i32*, i32** %16, align 8
  %31 = call i8* @BIO_get_peer_name(i32* %30)
  store i8* %31, i8** %19, align 8
  %32 = load i32*, i32** %16, align 8
  %33 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %34 = call i32 @BIO_gets(i32* %32, i8* %33, i32 2048)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %175

38:                                               ; preds = %25
  %39 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %40 = call i64 @strncmp(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %126

42:                                               ; preds = %38
  %43 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %44 = getelementptr inbounds i8, i8* %43, i64 4
  store i8* %44, i8** %14, align 8
  br label %45

45:                                               ; preds = %51, %42
  %46 = load i8*, i8** %14, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 32
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50
  %52 = load i8*, i8** %14, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %14, align 8
  br label %45

54:                                               ; preds = %45
  %55 = load i8*, i8** %14, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 47
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @LOG_INFO, align 4
  %61 = load i8*, i8** %19, align 8
  %62 = call i32 (i32, i8*, ...) @log_message(i32 %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  br label %175

63:                                               ; preds = %54
  %64 = load i8*, i8** %14, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %14, align 8
  %66 = load i8*, i8** %14, align 8
  store i8* %66, i8** %15, align 8
  br label %67

67:                                               ; preds = %78, %63
  %68 = load i8*, i8** %15, align 8
  %69 = load i8, i8* %68, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load i8*, i8** %15, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 32
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %81

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77
  %79 = load i8*, i8** %15, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %15, align 8
  br label %67

81:                                               ; preds = %76, %67
  %82 = load i8*, i8** %15, align 8
  %83 = call i64 @strncmp(i8* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i32, i32* @LOG_INFO, align 4
  %87 = load i8*, i8** %19, align 8
  %88 = call i32 (i32, i8*, ...) @log_message(i32 %86, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %87)
  br label %175

89:                                               ; preds = %81
  %90 = load i8*, i8** %15, align 8
  store i8 0, i8* %90, align 1
  %91 = load i8*, i8** %14, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %175

97:                                               ; preds = %89
  %98 = load i8*, i8** %14, align 8
  %99 = call i32 @urldecode(i8* %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp sle i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i32, i32* @LOG_INFO, align 4
  %104 = load i8*, i8** %19, align 8
  %105 = call i32 (i32, i8*, ...) @log_message(i32 %103, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %104)
  br label %175

106:                                              ; preds = %97
  %107 = load i8*, i8** %14, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32* @BIO_new_mem_buf(i8* %107, i32 %108)
  store i32* %109, i32** %17, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %115, label %111

111:                                              ; preds = %106
  %112 = call i32 (...) @BIO_f_base64()
  %113 = call i32* @BIO_new(i32 %112)
  store i32* %113, i32** %18, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %111, %106
  %116 = load i32, i32* @LOG_ERR, align 4
  %117 = load i8*, i8** %19, align 8
  %118 = call i32 (i32, i8*, ...) @log_message(i32 %116, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %117)
  br label %175

119:                                              ; preds = %111
  %120 = load i32*, i32** %18, align 8
  %121 = load i32, i32* @BIO_FLAGS_BASE64_NO_NL, align 4
  %122 = call i32 @BIO_set_flags(i32* %120, i32 %121)
  %123 = load i32*, i32** %18, align 8
  %124 = load i32*, i32** %17, align 8
  %125 = call i32* @BIO_push(i32* %123, i32* %124)
  store i32* %125, i32** %17, align 8
  br label %135

126:                                              ; preds = %38
  %127 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i64 0, i64 0
  %128 = call i64 @strncmp(i8* %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load i32, i32* @LOG_INFO, align 4
  %132 = load i8*, i8** %19, align 8
  %133 = call i32 (i32, i8*, ...) @log_message(i32 %131, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i8* %132)
  br label %175

134:                                              ; preds = %126
  br label %135

135:                                              ; preds = %134, %119
  br label %136

136:                                              ; preds = %154, %135
  %137 = load i32*, i32** %16, align 8
  %138 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %139 = call i32 @BIO_gets(i32* %137, i8* %138, i32 2048)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp sle i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %175

143:                                              ; preds = %136
  %144 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %145 = load i8, i8* %144, align 16
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 13
  br i1 %147, label %153, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds [2048 x i8], [2048 x i8]* %12, i64 0, i64 0
  %150 = load i8, i8* %149, align 16
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 10
  br i1 %152, label %153, label %154

153:                                              ; preds = %148, %143
  br label %155

154:                                              ; preds = %148
  br label %136

155:                                              ; preds = %153
  %156 = load i32*, i32** %17, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = load i32*, i32** %17, align 8
  %160 = call i32* @d2i_OCSP_REQUEST_bio(i32* %159, i32* null)
  store i32* %160, i32** %11, align 8
  %161 = load i32*, i32** %17, align 8
  %162 = call i32 @BIO_free_all(i32* %161)
  br label %166

163:                                              ; preds = %155
  %164 = load i32*, i32** %16, align 8
  %165 = call i32* @d2i_OCSP_REQUEST_bio(i32* %164, i32* null)
  store i32* %165, i32** %11, align 8
  br label %166

166:                                              ; preds = %163, %158
  %167 = load i32*, i32** %11, align 8
  %168 = icmp eq i32* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i32, i32* @LOG_ERR, align 4
  %171 = call i32 (i32, i8*, ...) @log_message(i32 %170, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %172

172:                                              ; preds = %169, %166
  %173 = load i32*, i32** %11, align 8
  %174 = load i32**, i32*** %6, align 8
  store i32* %173, i32** %174, align 8
  br label %175

175:                                              ; preds = %172, %142, %130, %115, %102, %96, %85, %59, %37
  store i32 1, i32* %5, align 4
  br label %176

176:                                              ; preds = %175, %24
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

declare dso_local i64 @BIO_do_accept(i32*) #1

declare dso_local i32* @BIO_pop(i32*) #1

declare dso_local i8* @BIO_get_peer_name(i32*) #1

declare dso_local i32 @BIO_gets(i32*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @log_message(i32, i8*, ...) #1

declare dso_local i32 @urldecode(i8*) #1

declare dso_local i32* @BIO_new_mem_buf(i8*, i32) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_f_base64(...) #1

declare dso_local i32 @BIO_set_flags(i32*, i32) #1

declare dso_local i32* @BIO_push(i32*, i32*) #1

declare dso_local i32* @d2i_OCSP_REQUEST_bio(i32*, i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
