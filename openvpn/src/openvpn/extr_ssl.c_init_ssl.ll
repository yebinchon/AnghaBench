; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_init_ssl.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_init_ssl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64*, i32, i32, i32, i32, i32, i32, i32 }
%struct.tls_root_ctx = type { i32 }

@SSLF_CRL_VERIFY_DIR = common dso_local global i32 0, align 4
@INLINE_FILE_TAG = common dso_local global i32 0, align 4
@MF_EXTERNAL_CERT = common dso_local global i32 0, align 4
@MF_EXTERNAL_KEY = common dso_local global i32 0, align 4
@M_WARN = common dso_local global i32 0, align 4
@management = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_ssl(%struct.options* %0, %struct.tls_root_ctx* %1) #0 {
  %3 = alloca %struct.options*, align 8
  %4 = alloca %struct.tls_root_ctx*, align 8
  store %struct.options* %0, %struct.options** %3, align 8
  store %struct.tls_root_ctx* %1, %struct.tls_root_ctx** %4, align 8
  %5 = load %struct.tls_root_ctx*, %struct.tls_root_ctx** %4, align 8
  %6 = icmp ne %struct.tls_root_ctx* null, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @ASSERT(i32 %7)
  %9 = call i32 (...) @tls_clear_error()
  %10 = load %struct.options*, %struct.options** %3, align 8
  %11 = getelementptr inbounds %struct.options, %struct.options* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load %struct.tls_root_ctx*, %struct.tls_root_ctx** %4, align 8
  %16 = call i32 @tls_ctx_server_new(%struct.tls_root_ctx* %15)
  %17 = load %struct.options*, %struct.options** %3, align 8
  %18 = getelementptr inbounds %struct.options, %struct.options* %17, i32 0, i32 26
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = load %struct.tls_root_ctx*, %struct.tls_root_ctx** %4, align 8
  %23 = load %struct.options*, %struct.options** %3, align 8
  %24 = getelementptr inbounds %struct.options, %struct.options* %23, i32 0, i32 26
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.options*, %struct.options** %3, align 8
  %27 = getelementptr inbounds %struct.options, %struct.options* %26, i32 0, i32 25
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @tls_ctx_load_dh_params(%struct.tls_root_ctx* %22, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %21, %14
  br label %34

31:                                               ; preds = %2
  %32 = load %struct.tls_root_ctx*, %struct.tls_root_ctx** %4, align 8
  %33 = call i32 @tls_ctx_client_new(%struct.tls_root_ctx* %32)
  br label %34

34:                                               ; preds = %31, %30
  %35 = load %struct.tls_root_ctx*, %struct.tls_root_ctx** %4, align 8
  %36 = load %struct.options*, %struct.options** %3, align 8
  %37 = getelementptr inbounds %struct.options, %struct.options* %36, i32 0, i32 24
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @tls_ctx_set_cert_profile(%struct.tls_root_ctx* %35, i32 %38)
  %40 = load %struct.tls_root_ctx*, %struct.tls_root_ctx** %4, align 8
  %41 = load %struct.options*, %struct.options** %3, align 8
  %42 = getelementptr inbounds %struct.options, %struct.options* %41, i32 0, i32 23
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @tls_ctx_restrict_ciphers(%struct.tls_root_ctx* %40, i32 %43)
  %45 = load %struct.tls_root_ctx*, %struct.tls_root_ctx** %4, align 8
  %46 = load %struct.options*, %struct.options** %3, align 8
  %47 = getelementptr inbounds %struct.options, %struct.options* %46, i32 0, i32 22
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @tls_ctx_restrict_ciphers_tls13(%struct.tls_root_ctx* %45, i32 %48)
  %50 = load %struct.tls_root_ctx*, %struct.tls_root_ctx** %4, align 8
  %51 = load %struct.options*, %struct.options** %3, align 8
  %52 = getelementptr inbounds %struct.options, %struct.options* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @tls_ctx_set_options(%struct.tls_root_ctx* %50, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %34
  br label %187

57:                                               ; preds = %34
  %58 = load %struct.options*, %struct.options** %3, align 8
  %59 = getelementptr inbounds %struct.options, %struct.options* %58, i32 0, i32 21
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %57
  %63 = load %struct.tls_root_ctx*, %struct.tls_root_ctx** %4, align 8
  %64 = load %struct.options*, %struct.options** %3, align 8
  %65 = getelementptr inbounds %struct.options, %struct.options* %64, i32 0, i32 21
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.options*, %struct.options** %3, align 8
  %68 = getelementptr inbounds %struct.options, %struct.options* %67, i32 0, i32 20
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.options*, %struct.options** %3, align 8
  %71 = getelementptr inbounds %struct.options, %struct.options* %70, i32 0, i32 11
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i64 @tls_ctx_load_pkcs12(%struct.tls_root_ctx* %63, i32 %66, i32 %69, i32 %75)
  %77 = icmp ne i64 0, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %62
  br label %187

79:                                               ; preds = %62
  br label %95

80:                                               ; preds = %57
  %81 = load %struct.options*, %struct.options** %3, align 8
  %82 = getelementptr inbounds %struct.options, %struct.options* %81, i32 0, i32 14
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load %struct.tls_root_ctx*, %struct.tls_root_ctx** %4, align 8
  %87 = load %struct.options*, %struct.options** %3, align 8
  %88 = getelementptr inbounds %struct.options, %struct.options* %87, i32 0, i32 14
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.options*, %struct.options** %3, align 8
  %91 = getelementptr inbounds %struct.options, %struct.options* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @tls_ctx_load_cert_file(%struct.tls_root_ctx* %86, i32 %89, i8* %92)
  br label %94

94:                                               ; preds = %85, %80
  br label %95

95:                                               ; preds = %94, %79
  %96 = load %struct.options*, %struct.options** %3, align 8
  %97 = getelementptr inbounds %struct.options, %struct.options* %96, i32 0, i32 13
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %95
  %101 = load %struct.tls_root_ctx*, %struct.tls_root_ctx** %4, align 8
  %102 = load %struct.options*, %struct.options** %3, align 8
  %103 = getelementptr inbounds %struct.options, %struct.options* %102, i32 0, i32 13
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.options*, %struct.options** %3, align 8
  %106 = getelementptr inbounds %struct.options, %struct.options* %105, i32 0, i32 12
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @tls_ctx_load_priv_file(%struct.tls_root_ctx* %101, i32 %104, i32 %107)
  %109 = icmp ne i64 0, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %100
  br label %187

111:                                              ; preds = %100
  br label %112

112:                                              ; preds = %111, %95
  %113 = load %struct.options*, %struct.options** %3, align 8
  %114 = getelementptr inbounds %struct.options, %struct.options* %113, i32 0, i32 11
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = load %struct.options*, %struct.options** %3, align 8
  %119 = getelementptr inbounds %struct.options, %struct.options* %118, i32 0, i32 9
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %117, %112
  %123 = load %struct.tls_root_ctx*, %struct.tls_root_ctx** %4, align 8
  %124 = load %struct.options*, %struct.options** %3, align 8
  %125 = getelementptr inbounds %struct.options, %struct.options* %124, i32 0, i32 11
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.options*, %struct.options** %3, align 8
  %128 = getelementptr inbounds %struct.options, %struct.options* %127, i32 0, i32 10
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.options*, %struct.options** %3, align 8
  %131 = getelementptr inbounds %struct.options, %struct.options* %130, i32 0, i32 9
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.options*, %struct.options** %3, align 8
  %134 = getelementptr inbounds %struct.options, %struct.options* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @tls_ctx_load_ca(%struct.tls_root_ctx* %123, i64 %126, i32 %129, i32 %132, i32 %135)
  br label %137

137:                                              ; preds = %122, %117
  %138 = load %struct.options*, %struct.options** %3, align 8
  %139 = getelementptr inbounds %struct.options, %struct.options* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %137
  %143 = load %struct.tls_root_ctx*, %struct.tls_root_ctx** %4, align 8
  %144 = load %struct.options*, %struct.options** %3, align 8
  %145 = getelementptr inbounds %struct.options, %struct.options* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.options*, %struct.options** %3, align 8
  %148 = getelementptr inbounds %struct.options, %struct.options* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @tls_ctx_load_extra_certs(%struct.tls_root_ctx* %143, i32 %146, i32 %149)
  br label %151

151:                                              ; preds = %142, %137
  %152 = load %struct.tls_root_ctx*, %struct.tls_root_ctx** %4, align 8
  %153 = call i32 @tls_ctx_check_cert_time(%struct.tls_root_ctx* %152)
  %154 = load %struct.options*, %struct.options** %3, align 8
  %155 = getelementptr inbounds %struct.options, %struct.options* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %174

158:                                              ; preds = %151
  %159 = load %struct.options*, %struct.options** %3, align 8
  %160 = getelementptr inbounds %struct.options, %struct.options* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @SSLF_CRL_VERIFY_DIR, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %174, label %165

165:                                              ; preds = %158
  %166 = load %struct.tls_root_ctx*, %struct.tls_root_ctx** %4, align 8
  %167 = load %struct.options*, %struct.options** %3, align 8
  %168 = getelementptr inbounds %struct.options, %struct.options* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.options*, %struct.options** %3, align 8
  %171 = getelementptr inbounds %struct.options, %struct.options* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @tls_ctx_reload_crl(%struct.tls_root_ctx* %166, i32 %169, i32 %172)
  br label %174

174:                                              ; preds = %165, %158, %151
  %175 = load %struct.options*, %struct.options** %3, align 8
  %176 = getelementptr inbounds %struct.options, %struct.options* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %174
  %180 = load %struct.tls_root_ctx*, %struct.tls_root_ctx** %4, align 8
  %181 = load %struct.options*, %struct.options** %3, align 8
  %182 = getelementptr inbounds %struct.options, %struct.options* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @tls_ctx_load_ecdh_params(%struct.tls_root_ctx* %180, i32 %183)
  br label %185

185:                                              ; preds = %179, %174
  %186 = call i32 (...) @tls_clear_error()
  br label %191

187:                                              ; preds = %110, %78, %56
  %188 = call i32 (...) @tls_clear_error()
  %189 = load %struct.tls_root_ctx*, %struct.tls_root_ctx** %4, align 8
  %190 = call i32 @tls_ctx_free(%struct.tls_root_ctx* %189)
  br label %191

191:                                              ; preds = %187, %185
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @tls_clear_error(...) #1

declare dso_local i32 @tls_ctx_server_new(%struct.tls_root_ctx*) #1

declare dso_local i32 @tls_ctx_load_dh_params(%struct.tls_root_ctx*, i32, i32) #1

declare dso_local i32 @tls_ctx_client_new(%struct.tls_root_ctx*) #1

declare dso_local i32 @tls_ctx_set_cert_profile(%struct.tls_root_ctx*, i32) #1

declare dso_local i32 @tls_ctx_restrict_ciphers(%struct.tls_root_ctx*, i32) #1

declare dso_local i32 @tls_ctx_restrict_ciphers_tls13(%struct.tls_root_ctx*, i32) #1

declare dso_local i32 @tls_ctx_set_options(%struct.tls_root_ctx*, i32) #1

declare dso_local i64 @tls_ctx_load_pkcs12(%struct.tls_root_ctx*, i32, i32, i32) #1

declare dso_local i32 @tls_ctx_load_cert_file(%struct.tls_root_ctx*, i32, i8*) #1

declare dso_local i64 @tls_ctx_load_priv_file(%struct.tls_root_ctx*, i32, i32) #1

declare dso_local i32 @tls_ctx_load_ca(%struct.tls_root_ctx*, i64, i32, i32, i32) #1

declare dso_local i32 @tls_ctx_load_extra_certs(%struct.tls_root_ctx*, i32, i32) #1

declare dso_local i32 @tls_ctx_check_cert_time(%struct.tls_root_ctx*) #1

declare dso_local i32 @tls_ctx_reload_crl(%struct.tls_root_ctx*, i32, i32) #1

declare dso_local i32 @tls_ctx_load_ecdh_params(%struct.tls_root_ctx*, i32) #1

declare dso_local i32 @tls_ctx_free(%struct.tls_root_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
