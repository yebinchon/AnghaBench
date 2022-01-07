; ModuleID = '/home/carl/AnghaBench/openssl/demos/bio/extr_client-arg.c_main.c'
source_filename = "/home/carl/AnghaBench/openssl/demos/bio/extr_client-arg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"localhost:4433\00", align 1
@SSL_CONF_FLAG_CLIENT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Missing argument for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Error in command %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"-connect\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Missing -connect argument\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Unknown argument %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Finish error\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Can't locate SSL pointer\0A\00", align 1
@SSL_MODE_AUTO_RETRY = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@BIO_NOCLOSE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"Error connecting to server\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Error establishing SSL connection\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"GET / HTTP/1.0\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  store i8** %18, i8*** %13, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %15, align 4
  %21 = call i32 (...) @TLS_client_method()
  %22 = call i32* @SSL_CTX_new(i32 %21)
  store i32* %22, i32** %10, align 8
  %23 = call i32* (...) @SSL_CONF_CTX_new()
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* @SSL_CONF_FLAG_CLIENT, align 4
  %26 = call i32 @SSL_CONF_CTX_set_flags(i32* %24, i32 %25)
  %27 = load i32*, i32** %11, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @SSL_CONF_CTX_set_ssl_ctx(i32* %27, i32* %28)
  br label %30

30:                                               ; preds = %80, %65, %2
  %31 = load i8**, i8*** %13, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i8**, i8*** %13, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 45
  br label %40

40:                                               ; preds = %34, %30
  %41 = phi i1 [ false, %30 ], [ %39, %34 ]
  br i1 %41, label %42, label %90

42:                                               ; preds = %40
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @SSL_CONF_cmd_argv(i32* %43, i32* %15, i8*** %13)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp eq i32 %45, -3
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32, i32* @stderr, align 4
  %49 = load i8**, i8*** %13, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  br label %152

52:                                               ; preds = %42
  %53 = load i32, i32* %16, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i32, i32* @stderr, align 4
  %57 = load i8**, i8*** %13, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 @ERR_print_errors_fp(i32 %60)
  br label %152

62:                                               ; preds = %52
  %63 = load i32, i32* %16, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %30

66:                                               ; preds = %62
  %67 = load i8**, i8*** %13, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = load i8**, i8*** %13, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 1
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %14, align 8
  %75 = load i8*, i8** %14, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @stderr, align 4
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %152

80:                                               ; preds = %71
  %81 = load i8**, i8*** %13, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 2
  store i8** %82, i8*** %13, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sub nsw i32 %83, 2
  store i32 %84, i32* %15, align 4
  br label %30

85:                                               ; preds = %66
  %86 = load i32, i32* @stderr, align 4
  %87 = load i8**, i8*** %13, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %88)
  br label %152

90:                                               ; preds = %40
  %91 = load i32*, i32** %11, align 8
  %92 = call i32 @SSL_CONF_CTX_finish(i32* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* @stderr, align 4
  %96 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %97 = load i32, i32* @stderr, align 4
  %98 = call i32 @ERR_print_errors_fp(i32 %97)
  br label %152

99:                                               ; preds = %90
  %100 = load i32*, i32** %10, align 8
  %101 = call i32* @BIO_new_ssl_connect(i32* %100)
  store i32* %101, i32** %6, align 8
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @BIO_get_ssl(i32* %102, i32** %12)
  %104 = load i32*, i32** %12, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %99
  %107 = load i32, i32* @stderr, align 4
  %108 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %152

109:                                              ; preds = %99
  %110 = load i32*, i32** %12, align 8
  %111 = load i32, i32* @SSL_MODE_AUTO_RETRY, align 4
  %112 = call i32 @SSL_set_mode(i32* %110, i32 %111)
  %113 = load i32*, i32** %6, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = call i32 @BIO_set_conn_hostname(i32* %113, i8* %114)
  %116 = load i32, i32* @stdout, align 4
  %117 = load i32, i32* @BIO_NOCLOSE, align 4
  %118 = call i32* @BIO_new_fp(i32 %116, i32 %117)
  store i32* %118, i32** %7, align 8
  %119 = load i32*, i32** %6, align 8
  %120 = call i64 @BIO_do_connect(i32* %119)
  %121 = icmp sle i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %109
  %123 = load i32, i32* @stderr, align 4
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %125 = load i32, i32* @stderr, align 4
  %126 = call i32 @ERR_print_errors_fp(i32 %125)
  br label %152

127:                                              ; preds = %109
  %128 = load i32*, i32** %6, align 8
  %129 = call i64 @BIO_do_handshake(i32* %128)
  %130 = icmp sle i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = load i32, i32* @stderr, align 4
  %133 = call i32 (i32, i8*, ...) @fprintf(i32 %132, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %134 = load i32, i32* @stderr, align 4
  %135 = call i32 @ERR_print_errors_fp(i32 %134)
  br label %152

136:                                              ; preds = %127
  %137 = load i32*, i32** %6, align 8
  %138 = call i32 @BIO_puts(i32* %137, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %139

139:                                              ; preds = %146, %136
  %140 = load i32*, i32** %6, align 8
  %141 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %142 = call i32 @BIO_read(i32* %140, i8* %141, i32 1024)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp sle i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %151

146:                                              ; preds = %139
  %147 = load i32*, i32** %7, align 8
  %148 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @BIO_write(i32* %147, i8* %148, i32 %149)
  br label %139

151:                                              ; preds = %145
  br label %152

152:                                              ; preds = %151, %131, %122, %106, %94, %85, %77, %55, %47
  %153 = load i32*, i32** %11, align 8
  %154 = call i32 @SSL_CONF_CTX_free(i32* %153)
  %155 = load i32*, i32** %6, align 8
  %156 = call i32 @BIO_free_all(i32* %155)
  %157 = load i32*, i32** %7, align 8
  %158 = call i32 @BIO_free(i32* %157)
  ret i32 0
}

declare dso_local i32* @SSL_CTX_new(i32) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32* @SSL_CONF_CTX_new(...) #1

declare dso_local i32 @SSL_CONF_CTX_set_flags(i32*, i32) #1

declare dso_local i32 @SSL_CONF_CTX_set_ssl_ctx(i32*, i32*) #1

declare dso_local i32 @SSL_CONF_cmd_argv(i32*, i32*, i8***) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @ERR_print_errors_fp(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @SSL_CONF_CTX_finish(i32*) #1

declare dso_local i32* @BIO_new_ssl_connect(i32*) #1

declare dso_local i32 @BIO_get_ssl(i32*, i32**) #1

declare dso_local i32 @SSL_set_mode(i32*, i32) #1

declare dso_local i32 @BIO_set_conn_hostname(i32*, i8*) #1

declare dso_local i32* @BIO_new_fp(i32, i32) #1

declare dso_local i64 @BIO_do_connect(i32*) #1

declare dso_local i64 @BIO_do_handshake(i32*) #1

declare dso_local i32 @BIO_puts(i32*, i8*) #1

declare dso_local i32 @BIO_read(i32*, i8*, i32) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32 @SSL_CONF_CTX_free(i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
