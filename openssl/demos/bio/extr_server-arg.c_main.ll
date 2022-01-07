; ModuleID = '/home/carl/AnghaBench/openssl/demos/bio/extr_server-arg.c_main.c'
source_filename = "/home/carl/AnghaBench/openssl/demos/bio/extr_server-arg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"*:4433\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@SSL_CONF_FLAG_SERVER = common dso_local global i32 0, align 4
@SSL_CONF_FLAG_CERTIFICATE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Missing argument for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Error in command %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"-port\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Missing -port argument\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Unknown argument %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Finish error\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Done\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@SSL_CERT_SET_FIRST = common dso_local global i32 0, align 4
@SSL_CERT_SET_NEXT = common dso_local global i32 0, align 4
@XN_FLAG_ONELINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [512 x i8], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i32* null, i32** %12, align 8
  %18 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %18, i32* %13, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  store i8** %20, i8*** %15, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %16, align 4
  %23 = call i32 (...) @TLS_server_method()
  %24 = call i32* @SSL_CTX_new(i32 %23)
  store i32* %24, i32** %9, align 8
  %25 = call i32* (...) @SSL_CONF_CTX_new()
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* @SSL_CONF_FLAG_SERVER, align 4
  %28 = call i32 @SSL_CONF_CTX_set_flags(i32* %26, i32 %27)
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* @SSL_CONF_FLAG_CERTIFICATE, align 4
  %31 = call i32 @SSL_CONF_CTX_set_flags(i32* %29, i32 %30)
  %32 = load i32*, i32** %10, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @SSL_CONF_CTX_set_ssl_ctx(i32* %32, i32* %33)
  br label %35

35:                                               ; preds = %85, %70, %2
  %36 = load i8**, i8*** %15, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i8**, i8*** %15, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 45
  br label %45

45:                                               ; preds = %39, %35
  %46 = phi i1 [ false, %35 ], [ %44, %39 ]
  br i1 %46, label %47, label %95

47:                                               ; preds = %45
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @SSL_CONF_cmd_argv(i32* %48, i32* %16, i8*** %15)
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp eq i32 %50, -3
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32, i32* @stderr, align 4
  %54 = load i8**, i8*** %15, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  br label %144

57:                                               ; preds = %47
  %58 = load i32, i32* %17, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i32, i32* @stderr, align 4
  %62 = load i8**, i8*** %15, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* @stderr, align 4
  %66 = call i32 @ERR_print_errors_fp(i32 %65)
  br label %144

67:                                               ; preds = %57
  %68 = load i32, i32* %17, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %35

71:                                               ; preds = %67
  %72 = load i8**, i8*** %15, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %71
  %77 = load i8**, i8*** %15, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 1
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %6, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* @stderr, align 4
  %84 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %144

85:                                               ; preds = %76
  %86 = load i8**, i8*** %15, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 2
  store i8** %87, i8*** %15, align 8
  %88 = load i32, i32* %16, align 4
  %89 = sub nsw i32 %88, 2
  store i32 %89, i32* %16, align 4
  br label %35

90:                                               ; preds = %71
  %91 = load i32, i32* @stderr, align 4
  %92 = load i8**, i8*** %15, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %93)
  br label %144

95:                                               ; preds = %45
  %96 = load i32*, i32** %10, align 8
  %97 = call i32 @SSL_CONF_CTX_finish(i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* @stderr, align 4
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %102 = load i32, i32* @stderr, align 4
  %103 = call i32 @ERR_print_errors_fp(i32 %102)
  br label %144

104:                                              ; preds = %95
  %105 = load i32*, i32** %9, align 8
  %106 = call i32* @BIO_new_ssl(i32* %105, i32 0)
  store i32* %106, i32** %7, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = call i32* @BIO_new_accept(i8* %107)
  store i32* %108, i32** %12, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %144

111:                                              ; preds = %104
  %112 = load i32*, i32** %12, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @BIO_set_accept_bios(i32* %112, i32* %113)
  br label %115

115:                                              ; preds = %127, %111
  %116 = load i32*, i32** %12, align 8
  %117 = call i64 @BIO_do_accept(i32* %116)
  %118 = icmp sle i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %144

120:                                              ; preds = %115
  br label %121

121:                                              ; preds = %137, %120
  %122 = load i32*, i32** %12, align 8
  %123 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %124 = call i32 @BIO_read(i32* %122, i8* %123, i32 512)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %129 = load i32*, i32** %12, align 8
  %130 = call i32* @BIO_pop(i32* %129)
  store i32* %130, i32** %8, align 8
  %131 = load i32*, i32** %8, align 8
  %132 = call i32 @BIO_free_all(i32* %131)
  br label %115

133:                                              ; preds = %121
  %134 = load i32, i32* %14, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  br label %144

137:                                              ; preds = %133
  %138 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* @stdout, align 4
  %141 = call i32 @fwrite(i8* %138, i32 1, i32 %139, i32 %140)
  %142 = load i32, i32* @stdout, align 4
  %143 = call i32 @fflush(i32 %142)
  br label %121

144:                                              ; preds = %136, %119, %110, %99, %90, %82, %60, %52
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* @EXIT_SUCCESS, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load i32, i32* @stderr, align 4
  %150 = call i32 @ERR_print_errors_fp(i32 %149)
  br label %151

151:                                              ; preds = %148, %144
  %152 = load i32*, i32** %12, align 8
  %153 = call i32 @BIO_free(i32* %152)
  %154 = load i32, i32* %13, align 4
  ret i32 %154
}

declare dso_local i32* @SSL_CTX_new(i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32* @SSL_CONF_CTX_new(...) #1

declare dso_local i32 @SSL_CONF_CTX_set_flags(i32*, i32) #1

declare dso_local i32 @SSL_CONF_CTX_set_ssl_ctx(i32*, i32*) #1

declare dso_local i32 @SSL_CONF_cmd_argv(i32*, i32*, i8***) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @ERR_print_errors_fp(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @SSL_CONF_CTX_finish(i32*) #1

declare dso_local i32* @BIO_new_ssl(i32*, i32) #1

declare dso_local i32* @BIO_new_accept(i8*) #1

declare dso_local i32 @BIO_set_accept_bios(i32*, i32*) #1

declare dso_local i64 @BIO_do_accept(i32*) #1

declare dso_local i32 @BIO_read(i32*, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32* @BIO_pop(i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
