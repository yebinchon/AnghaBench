; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_acpt.c_acpt_state.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_acpt.c_acpt_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32*, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32*, i32*, i32*, i32, i32, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32 }
%union.BIO_sock_info_u = type { i32* }

@BIO_F_ACPT_STATE = common dso_local global i32 0, align 4
@BIO_R_NO_ACCEPT_ADDR_OR_SERVICE_SPECIFIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"hostname=\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" service=\00", align 1
@AF_UNSPEC = common dso_local global i32 0, align 4
@BIO_R_UNAVAILABLE_IP_FAMILY = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@BIO_R_UNSUPPORTED_IP_FAMILY = common dso_local global i32 0, align 4
@BIO_LOOKUP_SERVER = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@BIO_R_LOOKUP_RETURNED_NOTHING = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@ERR_LIB_SYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"calling socket(%s, %s)\00", align 1
@BIO_R_UNABLE_TO_CREATE_SOCKET = common dso_local global i32 0, align 4
@BIO_SOCK_INFO_ADDRESS = common dso_local global i32 0, align 4
@BIO_RR_ACCEPT = common dso_local global i32 0, align 4
@BIO_CLOSE = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @acpt_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpt_state(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.BIO_sock_info_u, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  br label %11

11:                                               ; preds = %318, %2
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %317 [
    i32 135, label %15
    i32 133, label %63
    i32 134, label %112
    i32 132, label %152
    i32 136, label %200
    i32 131, label %308
  ]

15:                                               ; preds = %11
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 13
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 12
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load i32, i32* @BIO_F_ACPT_STATE, align 4
  %27 = load i32, i32* @BIO_R_NO_ACCEPT_ADDR_OR_SERVICE_SPECIFIED, align 4
  %28 = call i32 @BIOerr(i32 %26, i32 %27)
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 13
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 12
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @ERR_add_error_data(i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %34)
  br label %319

36:                                               ; preds = %20, %15
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 9
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @OPENSSL_free(i32* %39)
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 9
  store i32* null, i32** %42, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 8
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @OPENSSL_free(i32* %45)
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 8
  store i32* null, i32** %48, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @OPENSSL_free(i32* %51)
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 4
  store i32* null, i32** %54, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @OPENSSL_free(i32* %57)
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 3
  store i32* null, i32** %60, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  store i32 133, i32* %62, align 8
  br label %318

63:                                               ; preds = %11
  %64 = load i32, i32* @AF_UNSPEC, align 4
  store i32 %64, i32* %9, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 15
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %76 [
    i32 128, label %68
    i32 129, label %72
    i32 130, label %74
  ]

68:                                               ; preds = %63
  %69 = load i32, i32* @BIO_F_ACPT_STATE, align 4
  %70 = load i32, i32* @BIO_R_UNAVAILABLE_IP_FAMILY, align 4
  %71 = call i32 @BIOerr(i32 %69, i32 %70)
  br label %319

72:                                               ; preds = %63
  %73 = load i32, i32* @AF_INET, align 4
  store i32 %73, i32* %9, align 4
  br label %80

74:                                               ; preds = %63
  %75 = load i32, i32* @AF_UNSPEC, align 4
  store i32 %75, i32* %9, align 4
  br label %80

76:                                               ; preds = %63
  %77 = load i32, i32* @BIO_F_ACPT_STATE, align 4
  %78 = load i32, i32* @BIO_R_UNSUPPORTED_IP_FAMILY, align 4
  %79 = call i32 @BIOerr(i32 %77, i32 %78)
  br label %319

80:                                               ; preds = %74, %72
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 13
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 12
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* @BIO_LOOKUP_SERVER, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @SOCK_STREAM, align 4
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 14
  %92 = call i32 @BIO_lookup(i32* %83, i32* %86, i32 %87, i32 %88, i32 %89, i32** %91)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %80
  br label %319

95:                                               ; preds = %80
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 14
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i32, i32* @BIO_F_ACPT_STATE, align 4
  %102 = load i32, i32* @BIO_R_LOOKUP_RETURNED_NOTHING, align 4
  %103 = call i32 @BIOerr(i32 %101, i32 %102)
  br label %319

104:                                              ; preds = %95
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 14
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 11
  store i32* %107, i32** %109, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  store i32 134, i32* %111, align 8
  br label %318

112:                                              ; preds = %11
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 11
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @BIO_ADDRINFO_family(i32* %115)
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 11
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @BIO_ADDRINFO_socktype(i32* %119)
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 11
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @BIO_ADDRINFO_protocol(i32* %123)
  %125 = call i32 @BIO_socket(i32 %116, i32 %120, i32 %124, i32 0)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i64, i64* @INVALID_SOCKET, align 8
  %128 = trunc i64 %127 to i32
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %143

130:                                              ; preds = %112
  %131 = load i32, i32* @ERR_LIB_SYS, align 4
  %132 = call i32 (...) @get_last_socket_error()
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 13
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 12
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @ERR_raise_data(i32 %131, i32 %132, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* %135, i32* %138)
  %140 = load i32, i32* @BIO_F_ACPT_STATE, align 4
  %141 = load i32, i32* @BIO_R_UNABLE_TO_CREATE_SOCKET, align 4
  %142 = call i32 @BIOerr(i32 %140, i32 %141)
  br label %319

143:                                              ; preds = %112
  %144 = load i32, i32* %8, align 4
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  store i32 132, i32* %151, align 8
  br label %318

152:                                              ; preds = %11
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 11
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 @BIO_ADDRINFO_address(i32* %158)
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 10
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @BIO_listen(i32 %155, i32 %159, i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %152
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @BIO_closesocket(i32 %168)
  br label %319

170:                                              ; preds = %152
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 7
  %173 = bitcast %union.BIO_sock_info_u* %10 to i32**
  store i32* %172, i32** %173, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @BIO_SOCK_INFO_ADDRESS, align 4
  %178 = call i32 @BIO_sock_info(i32 %176, i32 %177, %union.BIO_sock_info_u* %10)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %170
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @BIO_closesocket(i32 %183)
  br label %319

185:                                              ; preds = %170
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 7
  %188 = call i8* @BIO_ADDR_hostname_string(i32* %187, i32 1)
  %189 = bitcast i8* %188 to i32*
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 9
  store i32* %189, i32** %191, align 8
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 7
  %194 = call i8* @BIO_ADDR_service_string(i32* %193, i32 1)
  %195 = bitcast i8* %194 to i32*
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 8
  store i32* %195, i32** %197, align 8
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 0
  store i32 136, i32* %199, align 8
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %333

200:                                              ; preds = %11
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 0
  store i32 131, i32* %207, align 8
  br label %318

208:                                              ; preds = %200
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %210 = call i32 @BIO_clear_retry_flags(%struct.TYPE_17__* %209)
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 2
  store i32 0, i32* %212, align 8
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 4
  %215 = load i32*, i32** %214, align 8
  %216 = call i32 @OPENSSL_free(i32* %215)
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 4
  store i32* null, i32** %218, align 8
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 3
  %221 = load i32*, i32** %220, align 8
  %222 = call i32 @OPENSSL_free(i32* %221)
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 3
  store i32* null, i32** %224, align 8
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 2
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 6
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @BIO_accept_ex(i32 %227, i32* %229, i32 %232)
  store i32 %233, i32* %7, align 4
  %234 = load i32, i32* %7, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %247

236:                                              ; preds = %208
  %237 = load i32, i32* %7, align 4
  %238 = call i32 @BIO_sock_should_retry(i32 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %236
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %242 = call i32 @BIO_set_retry_special(%struct.TYPE_17__* %241)
  %243 = load i32, i32* @BIO_RR_ACCEPT, align 4
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 2
  store i32 %243, i32* %245, align 8
  br label %333

246:                                              ; preds = %236
  br label %247

247:                                              ; preds = %246, %208
  %248 = load i32, i32* %7, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %247
  %251 = load i32, i32* %7, align 4
  store i32 %251, i32* %8, align 4
  br label %319

252:                                              ; preds = %247
  %253 = load i32, i32* %7, align 4
  %254 = load i32, i32* @BIO_CLOSE, align 4
  %255 = call %struct.TYPE_17__* @BIO_new_socket(i32 %253, i32 %254)
  store %struct.TYPE_17__* %255, %struct.TYPE_17__** %5, align 8
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %257 = icmp eq %struct.TYPE_17__* %256, null
  br i1 %257, label %258, label %259

258:                                              ; preds = %252
  br label %319

259:                                              ; preds = %252
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %262 = call i32 @BIO_get_callback(%struct.TYPE_17__* %261)
  %263 = call i32 @BIO_set_callback(%struct.TYPE_17__* %260, i32 %262)
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %266 = call i32 @BIO_get_callback_arg(%struct.TYPE_17__* %265)
  %267 = call i32 @BIO_set_callback_arg(%struct.TYPE_17__* %264, i32 %266)
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 5
  %270 = load i32*, i32** %269, align 8
  %271 = icmp ne i32* %270, null
  br i1 %271, label %272, label %287

272:                                              ; preds = %259
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 5
  %275 = load i32*, i32** %274, align 8
  %276 = call %struct.TYPE_17__* @BIO_dup_chain(i32* %275)
  store %struct.TYPE_17__* %276, %struct.TYPE_17__** %6, align 8
  %277 = icmp eq %struct.TYPE_17__* %276, null
  br i1 %277, label %278, label %279

278:                                              ; preds = %272
  br label %319

279:                                              ; preds = %272
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %282 = call i32* @BIO_push(%struct.TYPE_17__* %280, %struct.TYPE_17__* %281)
  %283 = icmp ne i32* %282, null
  br i1 %283, label %285, label %284

284:                                              ; preds = %279
  br label %319

285:                                              ; preds = %279
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %286, %struct.TYPE_17__** %5, align 8
  br label %287

287:                                              ; preds = %285, %259
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %290 = call i32* @BIO_push(%struct.TYPE_17__* %288, %struct.TYPE_17__* %289)
  %291 = icmp eq i32* %290, null
  br i1 %291, label %292, label %293

292:                                              ; preds = %287
  br label %319

293:                                              ; preds = %287
  %294 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i32 0, i32 2
  %296 = call i8* @BIO_ADDR_hostname_string(i32* %295, i32 1)
  %297 = bitcast i8* %296 to i32*
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 4
  store i32* %297, i32** %299, align 8
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 2
  %302 = call i8* @BIO_ADDR_service_string(i32* %301, i32 1)
  %303 = bitcast i8* %302 to i32*
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 3
  store i32* %303, i32** %305, align 8
  %306 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %306, i32 0, i32 0
  store i32 131, i32* %307, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  store i32 1, i32* %8, align 4
  br label %333

308:                                              ; preds = %11
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 1
  %311 = load i32*, i32** %310, align 8
  %312 = icmp eq i32* %311, null
  br i1 %312, label %313, label %316

313:                                              ; preds = %308
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 0
  store i32 136, i32* %315, align 8
  br label %318

316:                                              ; preds = %308
  store i32 1, i32* %8, align 4
  br label %333

317:                                              ; preds = %11
  store i32 0, i32* %8, align 4
  br label %333

318:                                              ; preds = %313, %205, %143, %104, %36
  br label %11

319:                                              ; preds = %292, %284, %278, %258, %250, %180, %165, %130, %100, %94, %76, %68, %25
  %320 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %321 = icmp ne %struct.TYPE_17__* %320, null
  br i1 %321, label %322, label %325

322:                                              ; preds = %319
  %323 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %324 = call i32 @BIO_free(%struct.TYPE_17__* %323)
  br label %332

325:                                              ; preds = %319
  %326 = load i32, i32* %7, align 4
  %327 = icmp sge i32 %326, 0
  br i1 %327, label %328, label %331

328:                                              ; preds = %325
  %329 = load i32, i32* %7, align 4
  %330 = call i32 @BIO_closesocket(i32 %329)
  br label %331

331:                                              ; preds = %328, %325
  br label %332

332:                                              ; preds = %331, %322
  br label %333

333:                                              ; preds = %332, %317, %316, %293, %240, %185
  %334 = load i32, i32* %8, align 4
  ret i32 %334
}

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32 @BIO_lookup(i32*, i32*, i32, i32, i32, i32**) #1

declare dso_local i32 @BIO_socket(i32, i32, i32, i32) #1

declare dso_local i32 @BIO_ADDRINFO_family(i32*) #1

declare dso_local i32 @BIO_ADDRINFO_socktype(i32*) #1

declare dso_local i32 @BIO_ADDRINFO_protocol(i32*) #1

declare dso_local i32 @ERR_raise_data(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @get_last_socket_error(...) #1

declare dso_local i32 @BIO_listen(i32, i32, i32) #1

declare dso_local i32 @BIO_ADDRINFO_address(i32*) #1

declare dso_local i32 @BIO_closesocket(i32) #1

declare dso_local i32 @BIO_sock_info(i32, i32, %union.BIO_sock_info_u*) #1

declare dso_local i8* @BIO_ADDR_hostname_string(i32*, i32) #1

declare dso_local i8* @BIO_ADDR_service_string(i32*, i32) #1

declare dso_local i32 @BIO_clear_retry_flags(%struct.TYPE_17__*) #1

declare dso_local i32 @BIO_accept_ex(i32, i32*, i32) #1

declare dso_local i32 @BIO_sock_should_retry(i32) #1

declare dso_local i32 @BIO_set_retry_special(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @BIO_new_socket(i32, i32) #1

declare dso_local i32 @BIO_set_callback(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @BIO_get_callback(%struct.TYPE_17__*) #1

declare dso_local i32 @BIO_set_callback_arg(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @BIO_get_callback_arg(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @BIO_dup_chain(i32*) #1

declare dso_local i32* @BIO_push(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @BIO_free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
