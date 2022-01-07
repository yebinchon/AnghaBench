; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/nslookup/extr_utility.c_SendRequest.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/nslookup/extr_utility.c_SendRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i8*, i8* }
%struct.TYPE_5__ = type { i32 }

@State = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@AF_INET = common dso_local global i8* null, align 8
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@INADDR_ANY = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"sendto() failed with WSANOTINITIALIZED\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"sendto() failed with WSAENETDOWN\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"sendto() failed with WSAEACCES\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"sendto() failed with WSAEINVAL\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"sendto() failed with WSAEINTR\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"sendto() failed with WSAEINPROGRESS\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"sendto() failed with WSAEFAULT\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"sendto() failed with WSAENETRESET\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"sendto() failed with WSAENOBUFS\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"sendto() failed with WSAENOTCONN\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"sendto() failed with WSAENOTSOCK\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"sendto() failed with WSAEOPNOTSUPP\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"sendto() failed with WSAESHUTDOWN\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"sendto() failed with WSAEWOULDBLOCK\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"sendto() failed with WSAEMSGSIZE\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"sendto() failed with WSAEHOSTUNREACH\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"sendto() failed with WSAECONNABORTED\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"sendto() failed with WSAECONNRESET\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"sendto() failed with WSAEADDRNOTAVAIL\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"sendto() failed with WSAEAFNOSUPPORT\0A\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"sendto() failed with WSAEDESTADDRREQ\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"sendto() failed with WSAENETUNREACH\0A\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"sendto() failed with WSAETIMEDOUT\0A\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"sendto() failed with unknown error\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [42 x i8] c"recvfrom() failed with WSANOTINITIALIZED\0A\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"recvfrom() failed with WSAENETDOWN\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"recvfrom() failed with WSAEACCES\0A\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"recvfrom() failed with WSAEINVAL\0A\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"recvfrom() failed with WSAEINTR\0A\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"recvfrom() failed with WSAEINPROGRESS\0A\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"recvfrom() failed with WSAEFAULT\0A\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"recvfrom() failed with WSAENETRESET\0A\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"recvfrom() failed with WSAENOBUFS\0A\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"recvfrom() failed with WSAENOTCONN\0A\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"recvfrom() failed with WSAENOTSOCK\0A\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"recvfrom() failed with WSAEOPNOTSUPP\0A\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"recvfrom() failed with WSAESHUTDOWN\0A\00", align 1
@.str.37 = private unnamed_addr constant [39 x i8] c"recvfrom() failed with WSAEWOULDBLOCK\0A\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"recvfrom() failed with WSAEMSGSIZE\0A\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"recvfrom() failed with WSAEHOSTUNREACH\0A\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"recvfrom() failed with WSAECONNABORTED\0A\00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c"recvfrom() failed with WSAECONNRESET\0A\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"recvfrom() failed with WSAEADDRNOTAVAIL\0A\00", align 1
@.str.43 = private unnamed_addr constant [40 x i8] c"recvfrom() failed with WSAEAFNOSUPPORT\0A\00", align 1
@.str.44 = private unnamed_addr constant [40 x i8] c"recvfrom() failed with WSAEDESTADDRREQ\0A\00", align 1
@.str.45 = private unnamed_addr constant [39 x i8] c"recvfrom() failed with WSAENETUNREACH\0A\00", align 1
@.str.46 = private unnamed_addr constant [37 x i8] c"recvfrom() failed with WSAETIMEDOUT\0A\00", align 1
@.str.47 = private unnamed_addr constant [38 x i8] c"recvfrom() failed with unknown error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SendRequest(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_6__, align 8
  %16 = alloca %struct.TYPE_6__, align 8
  %17 = alloca %struct.TYPE_6__, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 24, i32* %18, align 4
  %19 = call i32 @RtlZeroMemory(%struct.TYPE_6__* %15, i32 24)
  %20 = call i32 @RtlZeroMemory(%struct.TYPE_6__* %16, i32 24)
  %21 = call i32 @RtlZeroMemory(%struct.TYPE_6__* %17, i32 24)
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @ntohs(i32 %25)
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @State, i32 0, i32 3), align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @PrintD2(i32* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %4
  %34 = load i8*, i8** @AF_INET, align 8
  %35 = load i32, i32* @SOCK_DGRAM, align 4
  %36 = load i32, i32* @IPPROTO_UDP, align 4
  %37 = call i64 @socket(i8* %34, i32 %35, i32 %36)
  store i64 %37, i64* %14, align 8
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* @INVALID_SOCKET, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i64, i64* @FALSE, align 8
  store i64 %42, i64* %5, align 8
  br label %269

43:                                               ; preds = %33
  %44 = load i8*, i8** @AF_INET, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  store i8* %44, i8** %45, align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @State, i32 0, i32 1), align 8
  %47 = call i8* @htons(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i8* %47, i8** %48, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @State, i32 0, i32 2), align 4
  %50 = call i32 @inet_addr(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** @AF_INET, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  store i8* %53, i8** %54, align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @State, i32 0, i32 1), align 8
  %56 = call i8* @htons(i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = load i32, i32* @INADDR_ANY, align 4
  %59 = call i32 @htonl(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i64, i64* %14, align 8
  %63 = bitcast %struct.TYPE_6__* %16 to i32*
  %64 = call i32 @bind(i64 %62, i32* %63, i32 24)
  %65 = load i64, i64* %14, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = bitcast %struct.TYPE_6__* %15 to i32*
  %69 = call i32 @sendto(i64 %65, i32* %66, i32 %67, i32 0, i32* %68, i32 24)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @SOCKET_ERROR, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %151

73:                                               ; preds = %43
  %74 = call i32 (...) @WSAGetLastError()
  switch i32 %74, label %144 [
    i32 128, label %75
    i32 138, label %78
    i32 150, label %81
    i32 140, label %84
    i32 141, label %87
    i32 142, label %90
    i32 144, label %93
    i32 137, label %96
    i32 135, label %99
    i32 134, label %102
    i32 133, label %105
    i32 132, label %108
    i32 131, label %111
    i32 129, label %114
    i32 139, label %117
    i32 143, label %120
    i32 147, label %123
    i32 146, label %126
    i32 149, label %129
    i32 148, label %132
    i32 145, label %135
    i32 136, label %138
    i32 130, label %141
  ]

75:                                               ; preds = %73
  %76 = call i32 @_T(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %77 = call i32 @_tprintf(i32 %76)
  br label %147

78:                                               ; preds = %73
  %79 = call i32 @_T(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %80 = call i32 @_tprintf(i32 %79)
  br label %147

81:                                               ; preds = %73
  %82 = call i32 @_T(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %83 = call i32 @_tprintf(i32 %82)
  br label %147

84:                                               ; preds = %73
  %85 = call i32 @_T(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %86 = call i32 @_tprintf(i32 %85)
  br label %147

87:                                               ; preds = %73
  %88 = call i32 @_T(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %89 = call i32 @_tprintf(i32 %88)
  br label %147

90:                                               ; preds = %73
  %91 = call i32 @_T(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %92 = call i32 @_tprintf(i32 %91)
  br label %147

93:                                               ; preds = %73
  %94 = call i32 @_T(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %95 = call i32 @_tprintf(i32 %94)
  br label %147

96:                                               ; preds = %73
  %97 = call i32 @_T(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %98 = call i32 @_tprintf(i32 %97)
  br label %147

99:                                               ; preds = %73
  %100 = call i32 @_T(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %101 = call i32 @_tprintf(i32 %100)
  br label %147

102:                                              ; preds = %73
  %103 = call i32 @_T(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %104 = call i32 @_tprintf(i32 %103)
  br label %147

105:                                              ; preds = %73
  %106 = call i32 @_T(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %107 = call i32 @_tprintf(i32 %106)
  br label %147

108:                                              ; preds = %73
  %109 = call i32 @_T(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  %110 = call i32 @_tprintf(i32 %109)
  br label %147

111:                                              ; preds = %73
  %112 = call i32 @_T(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %113 = call i32 @_tprintf(i32 %112)
  br label %147

114:                                              ; preds = %73
  %115 = call i32 @_T(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  %116 = call i32 @_tprintf(i32 %115)
  br label %147

117:                                              ; preds = %73
  %118 = call i32 @_T(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  %119 = call i32 @_tprintf(i32 %118)
  br label %147

120:                                              ; preds = %73
  %121 = call i32 @_T(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  %122 = call i32 @_tprintf(i32 %121)
  br label %147

123:                                              ; preds = %73
  %124 = call i32 @_T(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0))
  %125 = call i32 @_tprintf(i32 %124)
  br label %147

126:                                              ; preds = %73
  %127 = call i32 @_T(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0))
  %128 = call i32 @_tprintf(i32 %127)
  br label %147

129:                                              ; preds = %73
  %130 = call i32 @_T(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0))
  %131 = call i32 @_tprintf(i32 %130)
  br label %147

132:                                              ; preds = %73
  %133 = call i32 @_T(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0))
  %134 = call i32 @_tprintf(i32 %133)
  br label %147

135:                                              ; preds = %73
  %136 = call i32 @_T(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0))
  %137 = call i32 @_tprintf(i32 %136)
  br label %147

138:                                              ; preds = %73
  %139 = call i32 @_T(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0))
  %140 = call i32 @_tprintf(i32 %139)
  br label %147

141:                                              ; preds = %73
  %142 = call i32 @_T(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0))
  %143 = call i32 @_tprintf(i32 %142)
  br label %147

144:                                              ; preds = %73
  %145 = call i32 @_T(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0))
  %146 = call i32 @_tprintf(i32 %145)
  br label %147

147:                                              ; preds = %144, %141, %138, %135, %132, %129, %126, %123, %120, %117, %114, %111, %108, %105, %102, %99, %96, %93, %90, %87, %84, %81, %78, %75
  %148 = load i64, i64* %14, align 8
  %149 = call i32 @closesocket(i64 %148)
  %150 = load i64, i64* @FALSE, align 8
  store i64 %150, i64* %5, align 8
  br label %269

151:                                              ; preds = %43
  %152 = load i64, i64* @TRUE, align 8
  store i64 %152, i64* %13, align 8
  br label %153

153:                                              ; preds = %255, %151
  %154 = load i64, i64* %13, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %256

156:                                              ; preds = %153
  %157 = load i64, i64* %14, align 8
  %158 = load i32*, i32** %8, align 8
  %159 = load i32*, i32** %9, align 8
  %160 = load i32, i32* %159, align 4
  %161 = bitcast %struct.TYPE_6__* %17 to i32*
  %162 = call i32 @recvfrom(i64 %157, i32* %158, i32 %160, i32 0, i32* %161, i32* %18)
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* @SOCKET_ERROR, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %244

166:                                              ; preds = %156
  %167 = call i32 (...) @WSAGetLastError()
  switch i32 %167, label %237 [
    i32 128, label %168
    i32 138, label %171
    i32 150, label %174
    i32 140, label %177
    i32 141, label %180
    i32 142, label %183
    i32 144, label %186
    i32 137, label %189
    i32 135, label %192
    i32 134, label %195
    i32 133, label %198
    i32 132, label %201
    i32 131, label %204
    i32 129, label %207
    i32 139, label %210
    i32 143, label %213
    i32 147, label %216
    i32 146, label %219
    i32 149, label %222
    i32 148, label %225
    i32 145, label %228
    i32 136, label %231
    i32 130, label %234
  ]

168:                                              ; preds = %166
  %169 = call i32 @_T(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i64 0, i64 0))
  %170 = call i32 @_tprintf(i32 %169)
  br label %240

171:                                              ; preds = %166
  %172 = call i32 @_T(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0))
  %173 = call i32 @_tprintf(i32 %172)
  br label %240

174:                                              ; preds = %166
  %175 = call i32 @_T(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0))
  %176 = call i32 @_tprintf(i32 %175)
  br label %240

177:                                              ; preds = %166
  %178 = call i32 @_T(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i64 0, i64 0))
  %179 = call i32 @_tprintf(i32 %178)
  br label %240

180:                                              ; preds = %166
  %181 = call i32 @_T(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i64 0, i64 0))
  %182 = call i32 @_tprintf(i32 %181)
  br label %240

183:                                              ; preds = %166
  %184 = call i32 @_T(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0))
  %185 = call i32 @_tprintf(i32 %184)
  br label %240

186:                                              ; preds = %166
  %187 = call i32 @_T(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i64 0, i64 0))
  %188 = call i32 @_tprintf(i32 %187)
  br label %240

189:                                              ; preds = %166
  %190 = call i32 @_T(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i64 0, i64 0))
  %191 = call i32 @_tprintf(i32 %190)
  br label %240

192:                                              ; preds = %166
  %193 = call i32 @_T(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i64 0, i64 0))
  %194 = call i32 @_tprintf(i32 %193)
  br label %240

195:                                              ; preds = %166
  %196 = call i32 @_T(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0))
  %197 = call i32 @_tprintf(i32 %196)
  br label %240

198:                                              ; preds = %166
  %199 = call i32 @_T(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i64 0, i64 0))
  %200 = call i32 @_tprintf(i32 %199)
  br label %240

201:                                              ; preds = %166
  %202 = call i32 @_T(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.35, i64 0, i64 0))
  %203 = call i32 @_tprintf(i32 %202)
  br label %240

204:                                              ; preds = %166
  %205 = call i32 @_T(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.36, i64 0, i64 0))
  %206 = call i32 @_tprintf(i32 %205)
  br label %240

207:                                              ; preds = %166
  %208 = call i32 @_T(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.37, i64 0, i64 0))
  %209 = call i32 @_tprintf(i32 %208)
  br label %240

210:                                              ; preds = %166
  %211 = call i32 @_T(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.38, i64 0, i64 0))
  %212 = call i32 @_tprintf(i32 %211)
  br label %240

213:                                              ; preds = %166
  %214 = call i32 @_T(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0))
  %215 = call i32 @_tprintf(i32 %214)
  br label %240

216:                                              ; preds = %166
  %217 = call i32 @_T(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i64 0, i64 0))
  %218 = call i32 @_tprintf(i32 %217)
  br label %240

219:                                              ; preds = %166
  %220 = call i32 @_T(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.41, i64 0, i64 0))
  %221 = call i32 @_tprintf(i32 %220)
  br label %240

222:                                              ; preds = %166
  %223 = call i32 @_T(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i64 0, i64 0))
  %224 = call i32 @_tprintf(i32 %223)
  br label %240

225:                                              ; preds = %166
  %226 = call i32 @_T(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0))
  %227 = call i32 @_tprintf(i32 %226)
  br label %240

228:                                              ; preds = %166
  %229 = call i32 @_T(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.44, i64 0, i64 0))
  %230 = call i32 @_tprintf(i32 %229)
  br label %240

231:                                              ; preds = %166
  %232 = call i32 @_T(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.45, i64 0, i64 0))
  %233 = call i32 @_tprintf(i32 %232)
  br label %240

234:                                              ; preds = %166
  %235 = call i32 @_T(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i64 0, i64 0))
  %236 = call i32 @_tprintf(i32 %235)
  br label %240

237:                                              ; preds = %166
  %238 = call i32 @_T(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.47, i64 0, i64 0))
  %239 = call i32 @_tprintf(i32 %238)
  br label %240

240:                                              ; preds = %237, %234, %231, %228, %225, %222, %219, %216, %213, %210, %207, %204, %201, %198, %195, %192, %189, %186, %183, %180, %177, %174, %171, %168
  %241 = load i64, i64* %14, align 8
  %242 = call i32 @closesocket(i64 %241)
  %243 = load i64, i64* @FALSE, align 8
  store i64 %243, i64* %5, align 8
  br label %269

244:                                              ; preds = %156
  %245 = load i32*, i32** %8, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 0
  %247 = getelementptr inbounds i32, i32* %246, i64 0
  %248 = load i32, i32* %247, align 4
  %249 = call i64 @ntohs(i32 %248)
  store i64 %249, i64* %12, align 8
  %250 = load i64, i64* %12, align 8
  %251 = load i64, i64* %11, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %255

253:                                              ; preds = %244
  %254 = load i64, i64* @FALSE, align 8
  store i64 %254, i64* %13, align 8
  br label %255

255:                                              ; preds = %253, %244
  br label %153

256:                                              ; preds = %153
  %257 = load i64, i64* %14, align 8
  %258 = call i32 @closesocket(i64 %257)
  %259 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @State, i32 0, i32 0), align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %256
  %262 = load i32*, i32** %8, align 8
  %263 = load i32, i32* %10, align 4
  %264 = call i32 @PrintDebug(i32* %262, i32 %263)
  br label %265

265:                                              ; preds = %261, %256
  %266 = load i32, i32* %10, align 4
  %267 = load i32*, i32** %9, align 8
  store i32 %266, i32* %267, align 4
  %268 = load i64, i64* @TRUE, align 8
  store i64 %268, i64* %5, align 8
  br label %269

269:                                              ; preds = %265, %240, %147, %41
  %270 = load i64, i64* %5, align 8
  ret i64 %270
}

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @PrintD2(i32*, i32) #1

declare dso_local i64 @socket(i8*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @inet_addr(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @bind(i64, i32*, i32) #1

declare dso_local i32 @sendto(i64, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @_tprintf(i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @closesocket(i64) #1

declare dso_local i32 @recvfrom(i64, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @PrintDebug(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
