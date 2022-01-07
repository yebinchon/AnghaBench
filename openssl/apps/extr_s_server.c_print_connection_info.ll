; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_s_server.c_print_connection_info.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_s_server.c_print_connection_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@s_brief = common dso_local global i64 0, align 8
@bio_s_out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Client certificate\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Shared ciphers:%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"CIPHER is %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"(NONE)\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"NEXTPROTO is \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"SRTP Extension negotiated, profile=%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Reused session-id\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Secure Renegotiation IS%s supported\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [5 x i8] c" NOT\00", align 1
@SSL_OP_NO_RENEGOTIATION = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"Renegotiation is DISABLED\0A\00", align 1
@keymatexportlabel = common dso_local global i32* null, align 8
@.str.12 = private unnamed_addr constant [27 x i8] c"Keying material exporter:\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"    Label: '%s'\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"    Length: %i bytes\0A\00", align 1
@keymatexportlen = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"export key\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"    Error\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"    Keying material: \00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@bio_err = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [30 x i8] c"Using Kernel TLS for sending\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"Using Kernel TLS for receiving\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @print_connection_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_connection_info(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %2, align 8
  %12 = load i32, i32* @BUFSIZ, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i64, i64* @s_brief, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @print_ssl_summary(i32* %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load i32, i32* @bio_s_out, align 4
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @SSL_get_session(i32* %23)
  %25 = call i32 @PEM_write_bio_SSL_SESSION(i32 %22, i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32* @SSL_get_peer_certificate(i32* %26)
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %21
  %31 = load i32, i32* @bio_s_out, align 4
  %32 = call i32 (i32, i8*, ...) @BIO_printf(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @bio_s_out, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @PEM_write_bio_X509(i32 %33, i32* %34)
  %36 = load i32, i32* @bio_s_out, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @dump_cert_text(i32 %36, i32* %37)
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @X509_free(i32* %39)
  store i32* null, i32** %4, align 8
  br label %41

41:                                               ; preds = %30, %21
  %42 = load i32*, i32** %2, align 8
  %43 = trunc i64 %13 to i32
  %44 = call i32* @SSL_get_shared_ciphers(i32* %42, i8* %15, i32 %43)
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @bio_s_out, align 4
  %48 = call i32 (i32, i8*, ...) @BIO_printf(i32 %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @SSL_get_current_cipher(i32* %50)
  %52 = call i8* @SSL_CIPHER_get_name(i32 %51)
  store i8* %52, i8** %3, align 8
  %53 = load i32, i32* @bio_s_out, align 4
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @ssl_print_sigalgs(i32 %53, i32* %54)
  %56 = load i32, i32* @bio_s_out, align 4
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @ssl_print_point_formats(i32 %56, i32* %57)
  %59 = load i32, i32* @bio_s_out, align 4
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @ssl_print_groups(i32 %59, i32* %60, i32 0)
  %62 = load i32, i32* @bio_s_out, align 4
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @print_ca_names(i32 %62, i32* %63)
  %65 = load i32, i32* @bio_s_out, align 4
  %66 = load i8*, i8** %3, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %49
  %69 = load i8*, i8** %3, align 8
  br label %71

70:                                               ; preds = %49
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i8* [ %69, %68 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %70 ]
  %73 = call i32 (i32, i8*, ...) @BIO_printf(i32 %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %72)
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 @SSL_get0_next_proto_negotiated(i32* %74, i8** %7, i32* %8)
  %76 = load i8*, i8** %7, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %71
  %79 = load i32, i32* @bio_s_out, align 4
  %80 = call i32 (i32, i8*, ...) @BIO_printf(i32 %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %81 = load i32, i32* @bio_s_out, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @BIO_write(i32 %81, i8* %82, i32 %83)
  %85 = load i32, i32* @bio_s_out, align 4
  %86 = call i32 (i32, i8*, ...) @BIO_printf(i32 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %87

87:                                               ; preds = %78, %71
  %88 = load i32*, i32** %2, align 8
  %89 = call %struct.TYPE_3__* @SSL_get_selected_srtp_profile(i32* %88)
  store %struct.TYPE_3__* %89, %struct.TYPE_3__** %11, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %91 = icmp ne %struct.TYPE_3__* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load i32, i32* @bio_s_out, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i32, i8*, ...) @BIO_printf(i32 %93, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %92, %87
  %99 = load i32*, i32** %2, align 8
  %100 = call i64 @SSL_session_reused(i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, i32* @bio_s_out, align 4
  %104 = call i32 (i32, i8*, ...) @BIO_printf(i32 %103, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %98
  %106 = load i32, i32* @bio_s_out, align 4
  %107 = load i32*, i32** %2, align 8
  %108 = call i64 @SSL_get_secure_renegotiation_support(i32* %107)
  %109 = icmp ne i64 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %112 = call i32 (i32, i8*, ...) @BIO_printf(i32 %106, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8* %111)
  %113 = load i32*, i32** %2, align 8
  %114 = call i32 @SSL_get_options(i32* %113)
  %115 = load i32, i32* @SSL_OP_NO_RENEGOTIATION, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %105
  %119 = load i32, i32* @bio_s_out, align 4
  %120 = call i32 (i32, i8*, ...) @BIO_printf(i32 %119, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %105
  %122 = load i32*, i32** @keymatexportlabel, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %171

124:                                              ; preds = %121
  %125 = load i32, i32* @bio_s_out, align 4
  %126 = call i32 (i32, i8*, ...) @BIO_printf(i32 %125, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %127 = load i32, i32* @bio_s_out, align 4
  %128 = load i32*, i32** @keymatexportlabel, align 8
  %129 = call i32 (i32, i8*, ...) @BIO_printf(i32 %127, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32* %128)
  %130 = load i32, i32* @bio_s_out, align 4
  %131 = load i32, i32* @keymatexportlen, align 4
  %132 = call i32 (i32, i8*, ...) @BIO_printf(i32 %130, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @keymatexportlen, align 4
  %134 = call i8* @app_malloc(i32 %133, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  store i8* %134, i8** %9, align 8
  %135 = load i32*, i32** %2, align 8
  %136 = load i8*, i8** %9, align 8
  %137 = load i32, i32* @keymatexportlen, align 4
  %138 = load i32*, i32** @keymatexportlabel, align 8
  %139 = load i32*, i32** @keymatexportlabel, align 8
  %140 = call i32 @strlen(i32* %139)
  %141 = call i32 @SSL_export_keying_material(i32* %135, i8* %136, i32 %137, i32* %138, i32 %140, i32* null, i32 0, i32 0)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %124
  %144 = load i32, i32* @bio_s_out, align 4
  %145 = call i32 (i32, i8*, ...) @BIO_printf(i32 %144, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  br label %168

146:                                              ; preds = %124
  %147 = load i32, i32* @bio_s_out, align 4
  %148 = call i32 (i32, i8*, ...) @BIO_printf(i32 %147, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %149

149:                                              ; preds = %162, %146
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* @keymatexportlen, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %165

153:                                              ; preds = %149
  %154 = load i32, i32* @bio_s_out, align 4
  %155 = load i8*, i8** %9, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = call i32 (i32, i8*, ...) @BIO_printf(i32 %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i32 %160)
  br label %162

162:                                              ; preds = %153
  %163 = load i32, i32* %10, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %10, align 4
  br label %149

165:                                              ; preds = %149
  %166 = load i32, i32* @bio_s_out, align 4
  %167 = call i32 (i32, i8*, ...) @BIO_printf(i32 %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %168

168:                                              ; preds = %165, %143
  %169 = load i8*, i8** %9, align 8
  %170 = call i32 @OPENSSL_free(i8* %169)
  br label %171

171:                                              ; preds = %168, %121
  %172 = load i32*, i32** %2, align 8
  %173 = call i32 @SSL_get_wbio(i32* %172)
  %174 = call i64 @BIO_get_ktls_send(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load i32, i32* @bio_err, align 4
  %178 = call i32 (i32, i8*, ...) @BIO_printf(i32 %177, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0))
  br label %179

179:                                              ; preds = %176, %171
  %180 = load i32*, i32** %2, align 8
  %181 = call i32 @SSL_get_rbio(i32* %180)
  %182 = call i64 @BIO_get_ktls_recv(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load i32, i32* @bio_err, align 4
  %186 = call i32 (i32, i8*, ...) @BIO_printf(i32 %185, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0))
  br label %187

187:                                              ; preds = %184, %179
  %188 = load i32, i32* @bio_s_out, align 4
  %189 = call i32 @BIO_flush(i32 %188)
  %190 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %190)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @print_ssl_summary(i32*) #2

declare dso_local i32 @PEM_write_bio_SSL_SESSION(i32, i32) #2

declare dso_local i32 @SSL_get_session(i32*) #2

declare dso_local i32* @SSL_get_peer_certificate(i32*) #2

declare dso_local i32 @BIO_printf(i32, i8*, ...) #2

declare dso_local i32 @PEM_write_bio_X509(i32, i32*) #2

declare dso_local i32 @dump_cert_text(i32, i32*) #2

declare dso_local i32 @X509_free(i32*) #2

declare dso_local i32* @SSL_get_shared_ciphers(i32*, i8*, i32) #2

declare dso_local i8* @SSL_CIPHER_get_name(i32) #2

declare dso_local i32 @SSL_get_current_cipher(i32*) #2

declare dso_local i32 @ssl_print_sigalgs(i32, i32*) #2

declare dso_local i32 @ssl_print_point_formats(i32, i32*) #2

declare dso_local i32 @ssl_print_groups(i32, i32*, i32) #2

declare dso_local i32 @print_ca_names(i32, i32*) #2

declare dso_local i32 @SSL_get0_next_proto_negotiated(i32*, i8**, i32*) #2

declare dso_local i32 @BIO_write(i32, i8*, i32) #2

declare dso_local %struct.TYPE_3__* @SSL_get_selected_srtp_profile(i32*) #2

declare dso_local i64 @SSL_session_reused(i32*) #2

declare dso_local i64 @SSL_get_secure_renegotiation_support(i32*) #2

declare dso_local i32 @SSL_get_options(i32*) #2

declare dso_local i8* @app_malloc(i32, i8*) #2

declare dso_local i32 @SSL_export_keying_material(i32*, i8*, i32, i32*, i32, i32*, i32, i32) #2

declare dso_local i32 @strlen(i32*) #2

declare dso_local i32 @OPENSSL_free(i8*) #2

declare dso_local i64 @BIO_get_ktls_send(i32) #2

declare dso_local i32 @SSL_get_wbio(i32*) #2

declare dso_local i64 @BIO_get_ktls_recv(i32) #2

declare dso_local i32 @SSL_get_rbio(i32*) #2

declare dso_local i32 @BIO_flush(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
