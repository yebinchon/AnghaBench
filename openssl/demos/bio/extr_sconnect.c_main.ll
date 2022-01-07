; ModuleID = '/home/carl/AnghaBench/openssl/demos/bio/extr_sconnect.c_main.c'
source_filename = "/home/carl/AnghaBench/openssl/demos/bio/extr_sconnect.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HOSTPORT = common dso_local global i8* null, align 8
@CAFILE = common dso_local global i8* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4
@BIO_CLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"GET / HTTP/1.0\0D\0A\0D\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"write DELAY\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"read DELAY\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"errno=%d \00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [10240 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %20 = load i8*, i8** @HOSTPORT, align 8
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** @CAFILE, align 8
  store i8* %21, i8** %7, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %13, align 8
  %22 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %22, i32* %19, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %6, align 8
  br label %29

29:                                               ; preds = %25, %2
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %30, 2
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 2
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %7, align 8
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i8*, i8** %6, align 8
  %38 = call i8* @OPENSSL_strdup(i8* %37)
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 58)
  store i8* %40, i8** %9, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i8*, i8** %9, align 8
  store i8 0, i8* %43, align 1
  br label %44

44:                                               ; preds = %42, %36
  %45 = call i32 (...) @TLS_client_method()
  %46 = call i32* @SSL_CTX_new(i32 %45)
  store i32* %46, i32** %13, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %49 = call i32 @SSL_CTX_set_verify(i32* %47, i32 %48, i32* null)
  %50 = load i32*, i32** %13, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @SSL_CTX_load_verify_locations(i32* %50, i8* %51, i32* null)
  %53 = load i32*, i32** %13, align 8
  %54 = call i32* @SSL_new(i32* %53)
  store i32* %54, i32** %14, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = call i32 @SSL_set_connect_state(i32* %55)
  %57 = load i32*, i32** %14, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i64 @SSL_set1_host(i32* %57, i8* %58)
  %60 = icmp sle i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %44
  br label %138

62:                                               ; preds = %44
  %63 = call i32 (...) @BIO_f_ssl()
  %64 = call i32* @BIO_new(i32 %63)
  store i32* %64, i32** %15, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = load i32*, i32** %14, align 8
  %67 = load i32, i32* @BIO_CLOSE, align 4
  %68 = call i32 @BIO_set_ssl(i32* %65, i32* %66, i32 %67)
  %69 = call i32 (...) @BIO_s_connect()
  %70 = call i32* @BIO_new(i32 %69)
  store i32* %70, i32** %10, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @BIO_set_conn_hostname(i32* %71, i8* %72)
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @BIO_set_nbio(i32* %74, i32 1)
  %76 = load i32*, i32** %15, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = call i32* @BIO_push(i32* %76, i32* %77)
  store i32* %78, i32** %10, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = call i32 @strlen(i8* %79)
  store i32 %80, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %81

81:                                               ; preds = %110, %95, %62
  %82 = load i32*, i32** %10, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = load i32, i32* %18, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i32, i32* %17, align 4
  %88 = call i32 @BIO_write(i32* %82, i8* %86, i32 %87)
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %16, align 4
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %81
  %92 = load i32*, i32** %10, align 8
  %93 = call i64 @BIO_should_retry(i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i32, i32* @stderr, align 4
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %98 = call i32 @sleep(i32 1)
  br label %81

99:                                               ; preds = %91
  br label %138

100:                                              ; preds = %81
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %18, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %17, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %17, align 4
  %107 = load i32, i32* %17, align 4
  %108 = icmp sle i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  br label %111

110:                                              ; preds = %100
  br label %81

111:                                              ; preds = %109
  br label %112

112:                                              ; preds = %131, %126, %111
  %113 = load i32*, i32** %10, align 8
  %114 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 0
  %115 = call i32 @BIO_read(i32* %113, i8* %114, i32 10240)
  store i32 %115, i32* %16, align 4
  %116 = load i32, i32* %16, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %136

119:                                              ; preds = %112
  %120 = load i32, i32* %16, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %119
  %123 = load i32*, i32** %10, align 8
  %124 = call i64 @BIO_should_retry(i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32, i32* @stderr, align 4
  %128 = call i32 (i32, i8*, ...) @fprintf(i32 %127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %129 = call i32 @sleep(i32 1)
  br label %112

130:                                              ; preds = %122
  br label %138

131:                                              ; preds = %119
  %132 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 0
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* @stdout, align 4
  %135 = call i32 @fwrite(i8* %132, i32 1, i32 %133, i32 %134)
  br label %112

136:                                              ; preds = %118
  %137 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %137, i32* %19, align 4
  br label %150

138:                                              ; preds = %130, %99, %61
  %139 = call i64 (...) @ERR_peek_error()
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load i32, i32* @stderr, align 4
  %143 = load i32, i32* @errno, align 4
  %144 = call i32 (i32, i8*, ...) @fprintf(i32 %142, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %143)
  %145 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %149

146:                                              ; preds = %138
  %147 = load i32, i32* @stderr, align 4
  %148 = call i32 @ERR_print_errors_fp(i32 %147)
  br label %149

149:                                              ; preds = %146, %141
  br label %150

150:                                              ; preds = %149, %136
  %151 = load i32*, i32** %10, align 8
  %152 = call i32 @BIO_free_all(i32* %151)
  %153 = load i32*, i32** %13, align 8
  %154 = call i32 @SSL_CTX_free(i32* %153)
  %155 = load i32, i32* %19, align 4
  ret i32 %155
}

declare dso_local i8* @OPENSSL_strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32* @SSL_CTX_new(i32) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @SSL_CTX_set_verify(i32*, i32, i32*) #1

declare dso_local i32 @SSL_CTX_load_verify_locations(i32*, i8*, i32*) #1

declare dso_local i32* @SSL_new(i32*) #1

declare dso_local i32 @SSL_set_connect_state(i32*) #1

declare dso_local i64 @SSL_set1_host(i32*, i8*) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_f_ssl(...) #1

declare dso_local i32 @BIO_set_ssl(i32*, i32*, i32) #1

declare dso_local i32 @BIO_s_connect(...) #1

declare dso_local i32 @BIO_set_conn_hostname(i32*, i8*) #1

declare dso_local i32 @BIO_set_nbio(i32*, i32) #1

declare dso_local i32* @BIO_push(i32*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i64 @BIO_should_retry(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @BIO_read(i32*, i8*, i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

declare dso_local i64 @ERR_peek_error(...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @ERR_print_errors_fp(i32) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
