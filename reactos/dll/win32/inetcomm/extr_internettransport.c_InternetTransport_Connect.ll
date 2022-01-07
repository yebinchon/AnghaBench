; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inetcomm/extr_internettransport.c_InternetTransport_Connect.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inetcomm/extr_internettransport.c_InternetTransport_Connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.addrinfo = type { i64, i32*, i32, i32, i32, %struct.addrinfo*, i32*, i64 }

@IXP_DISCONNECTED = common dso_local global i64 0, align 8
@IXP_E_ALREADY_CONNECTED = common dso_local global i32 0, align 4
@wszClassName = common dso_local global i32 0, align 4
@GWLP_USERDATA = common dso_local global i32 0, align 4
@PF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@IXP_FINDINGHOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"getaddrinfo failed: %d\0A\00", align 1
@IXP_E_CANT_FIND_HOST = common dso_local global i32 0, align 4
@inetcomm = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"trying %s:%s\0A\00", align 1
@IXP_CONNECTING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"socket() failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"connect() failed\0A\00", align 1
@IXP_CONNECTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"connected\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InternetTransport_Connect(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca %struct.addrinfo*, align 8
  %12 = alloca %struct.addrinfo, align 8
  %13 = alloca i32, align 4
  %14 = alloca [10 x i8], align 1
  %15 = alloca i32, align 4
  %16 = alloca [256 x i8], align 16
  %17 = alloca [256 x i8], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IXP_DISCONNECTED, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @IXP_E_ALREADY_CONNECTED, align 4
  store i32 %24, i32* %5, align 4
  br label %165

25:                                               ; preds = %4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = bitcast %struct.TYPE_6__* %27 to i8*
  %30 = bitcast %struct.TYPE_6__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 16, i1 false)
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @wszClassName, align 4
  %35 = load i32, i32* @wszClassName, align 4
  %36 = call i32 @CreateWindowW(i32 %34, i32 %35, i32 0, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null, i32* null, i32 0)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %25
  %44 = call i32 (...) @GetLastError()
  %45 = call i32 @HRESULT_FROM_WIN32(i32 %44)
  store i32 %45, i32* %5, align 4
  br label %165

46:                                               ; preds = %25
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @GWLP_USERDATA, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = ptrtoint %struct.TYPE_7__* %51 to i32
  %53 = call i32 @SetWindowLongPtrW(i32 %49, i32 %50, i32 %52)
  %54 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 7
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* @PF_UNSPEC, align 4
  %56 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 4
  store i32 %55, i32* %56, align 8
  %57 = load i32, i32* @SOCK_STREAM, align 4
  %58 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 3
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @IPPROTO_TCP, align 4
  %60 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 2
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 1
  store i32* null, i32** %62, align 8
  %63 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 6
  store i32* null, i32** %63, align 8
  %64 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 5
  store %struct.addrinfo* null, %struct.addrinfo** %64, align 8
  %65 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i16
  %70 = call i32 @snprintf(i8* %65, i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i16 zeroext %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %72 = load i32, i32* @IXP_FINDINGHOST, align 4
  %73 = call i32 @InternetTransport_ChangeStatus(%struct.TYPE_7__* %71, i32 %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0
  %78 = call i32 @getaddrinfo(i32 %76, i8* %77, %struct.addrinfo* %12, %struct.addrinfo** %10)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %46
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @IXP_E_CANT_FIND_HOST, align 4
  store i32 %84, i32* %5, align 4
  br label %165

85:                                               ; preds = %46
  %86 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  store %struct.addrinfo* %86, %struct.addrinfo** %11, align 8
  br label %87

87:                                               ; preds = %157, %85
  %88 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %89 = icmp ne %struct.addrinfo* %88, null
  br i1 %89, label %90, label %161

90:                                               ; preds = %87
  %91 = load i32, i32* @inetcomm, align 4
  %92 = call i64 @TRACE_ON(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %90
  %95 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %96 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %99 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %102 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %103 = load i32, i32* @NI_NUMERICHOST, align 4
  %104 = load i32, i32* @NI_NUMERICSERV, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @getnameinfo(i32* %97, i64 %100, i8* %101, i32 256, i8* %102, i32 256, i32 %105)
  %107 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %108 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %109 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %107, i8* %108)
  br label %110

110:                                              ; preds = %94, %90
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %112 = load i32, i32* @IXP_CONNECTING, align 4
  %113 = call i32 @InternetTransport_ChangeStatus(%struct.TYPE_7__* %111, i32 %112)
  %114 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %115 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %118 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %121 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @socket(i32 %116, i32 %119, i32 %122)
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %15, align 4
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %128

126:                                              ; preds = %110
  %127 = call i32 @WARN(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %157

128:                                              ; preds = %110
  %129 = load i32, i32* %15, align 4
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %136 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %139 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i64 @connect(i32 %134, i32* %137, i64 %140)
  %142 = icmp sgt i64 0, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %128
  %144 = call i32 @WARN(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @closesocket(i32 %147)
  br label %157

149:                                              ; preds = %128
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %151 = load i32, i32* @IXP_CONNECTED, align 4
  %152 = call i32 @InternetTransport_ChangeStatus(%struct.TYPE_7__* %150, i32 %151)
  %153 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %154 = call i32 @freeaddrinfo(%struct.addrinfo* %153)
  %155 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %156 = load i32, i32* @S_OK, align 4
  store i32 %156, i32* %5, align 4
  br label %165

157:                                              ; preds = %143, %126
  %158 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %159 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %158, i32 0, i32 5
  %160 = load %struct.addrinfo*, %struct.addrinfo** %159, align 8
  store %struct.addrinfo* %160, %struct.addrinfo** %11, align 8
  br label %87

161:                                              ; preds = %87
  %162 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %163 = call i32 @freeaddrinfo(%struct.addrinfo* %162)
  %164 = load i32, i32* @IXP_E_CANT_FIND_HOST, align 4
  store i32 %164, i32* %5, align 4
  br label %165

165:                                              ; preds = %161, %149, %81, %43, %23
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @CreateWindowW(i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32) #2

declare dso_local i32 @HRESULT_FROM_WIN32(i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @SetWindowLongPtrW(i32, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i16 zeroext) #2

declare dso_local i32 @InternetTransport_ChangeStatus(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @getaddrinfo(i32, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @ERR(i8*, i32) #2

declare dso_local i64 @TRACE_ON(i32) #2

declare dso_local i32 @getnameinfo(i32*, i64, i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @TRACE(i8*, ...) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @WARN(i8*) #2

declare dso_local i64 @connect(i32, i32*, i64) #2

declare dso_local i32 @closesocket(i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
