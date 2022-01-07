; ModuleID = '/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_php_network_listen_socket.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_php_network_listen_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i8* }

@SOCK_ERR = common dso_local global i32 0, align 4
@SOCK_CONN_ERR = common dso_local global i64 0, align 8
@SOCK_EINVAL = common dso_local global i32 0, align 4
@SOCK_EADDRINUSE = common dso_local global i32 0, align 4
@SOMAXCONN = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@SO_REUSEPORT = common dso_local global i32 0, align 4
@php_cli_server_workers_max = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i32*, i32*, i32**)* @php_network_listen_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_network_listen_socket(i8* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sockaddr*, align 8
  %17 = alloca %struct.sockaddr**, align 8
  %18 = alloca %struct.sockaddr**, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32** %5, i32*** %13, align 8
  %20 = load i32, i32* @SOCK_ERR, align 4
  store i32 %20, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store %struct.sockaddr* null, %struct.sockaddr** %16, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32**, i32*** %13, align 8
  %24 = call i32 @php_network_getaddresses(i8* %21, i32 %22, %struct.sockaddr*** %18, i32** %23)
  store i32 %24, i32* %19, align 4
  %25 = load i32, i32* %19, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %176

28:                                               ; preds = %6
  %29 = load %struct.sockaddr**, %struct.sockaddr*** %18, align 8
  store %struct.sockaddr** %29, %struct.sockaddr*** %17, align 8
  br label %30

30:                                               ; preds = %127, %28
  %31 = load %struct.sockaddr**, %struct.sockaddr*** %17, align 8
  %32 = load %struct.sockaddr*, %struct.sockaddr** %31, align 8
  %33 = icmp ne %struct.sockaddr* %32, null
  br i1 %33, label %34, label %130

34:                                               ; preds = %30
  %35 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %36 = icmp ne %struct.sockaddr* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %39 = call i32 @pefree(%struct.sockaddr* %38, i32 1)
  store %struct.sockaddr* null, %struct.sockaddr** %16, align 8
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.sockaddr**, %struct.sockaddr*** %17, align 8
  %42 = load %struct.sockaddr*, %struct.sockaddr** %41, align 8
  %43 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @socket(i32 %44, i32 %45, i32 0)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @SOCK_ERR, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %127

51:                                               ; preds = %40
  %52 = load %struct.sockaddr**, %struct.sockaddr*** %17, align 8
  %53 = load %struct.sockaddr*, %struct.sockaddr** %52, align 8
  %54 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %72 [
    i32 129, label %56
  ]

56:                                               ; preds = %51
  %57 = call %struct.sockaddr* @pemalloc(i32 8, i32 1)
  store %struct.sockaddr* %57, %struct.sockaddr** %16, align 8
  %58 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %59 = bitcast %struct.sockaddr* %58 to %struct.sockaddr_in*
  %60 = load %struct.sockaddr**, %struct.sockaddr*** %17, align 8
  %61 = load %struct.sockaddr*, %struct.sockaddr** %60, align 8
  %62 = bitcast %struct.sockaddr* %61 to %struct.sockaddr_in*
  %63 = bitcast %struct.sockaddr_in* %59 to i8*
  %64 = bitcast %struct.sockaddr_in* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 8, i1 false)
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @htons(i32 %66)
  %68 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %69 = bitcast %struct.sockaddr* %68 to %struct.sockaddr_in*
  %70 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %69, i32 0, i32 0
  store i8* %67, i8** %70, align 8
  %71 = load i32*, i32** %12, align 8
  store i32 8, i32* %71, align 4
  br label %76

72:                                               ; preds = %51
  %73 = load i32*, i32** %12, align 8
  store i32 0, i32* %73, align 4
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @closesocket(i32 %74)
  br label %127

76:                                               ; preds = %56
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @bind(i32 %77, %struct.sockaddr* %78, i32 %80)
  %82 = load i64, i64* @SOCK_CONN_ERR, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %76
  %85 = call i32 (...) @php_socket_errno()
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* @SOCK_EINVAL, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* @SOCK_EADDRINUSE, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89, %84
  br label %143

94:                                               ; preds = %89
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @closesocket(i32 %95)
  %97 = load i32, i32* @SOCK_ERR, align 4
  store i32 %97, i32* %14, align 4
  br label %127

98:                                               ; preds = %76
  store i32 0, i32* %15, align 4
  %99 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %100 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %11, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %126

106:                                              ; preds = %98
  %107 = load i32, i32* %14, align 4
  %108 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %109 = load i32*, i32** %12, align 8
  %110 = call i64 @getsockname(i32 %107, %struct.sockaddr* %108, i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = call i32 (...) @php_socket_errno()
  store i32 %113, i32* %15, align 4
  br label %143

114:                                              ; preds = %106
  %115 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %116 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  switch i32 %117, label %125 [
    i32 129, label %118
  ]

118:                                              ; preds = %114
  %119 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %120 = bitcast %struct.sockaddr* %119 to %struct.sockaddr_in*
  %121 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @ntohs(i8* %122)
  %124 = load i32*, i32** %9, align 8
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %114, %118
  br label %126

126:                                              ; preds = %125, %98
  br label %130

127:                                              ; preds = %94, %72, %50
  %128 = load %struct.sockaddr**, %struct.sockaddr*** %17, align 8
  %129 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %128, i32 1
  store %struct.sockaddr** %129, %struct.sockaddr*** %17, align 8
  br label %30

130:                                              ; preds = %126, %30
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* @SOCK_ERR, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %143

135:                                              ; preds = %130
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* @SOMAXCONN, align 4
  %138 = call i64 @listen(i32 %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = call i32 (...) @php_socket_errno()
  store i32 %141, i32* %15, align 4
  br label %143

142:                                              ; preds = %135
  br label %143

143:                                              ; preds = %142, %140, %134, %112, %93
  %144 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %145 = icmp ne %struct.sockaddr* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %148 = call i32 @pefree(%struct.sockaddr* %147, i32 1)
  br label %149

149:                                              ; preds = %146, %143
  %150 = load %struct.sockaddr**, %struct.sockaddr*** %18, align 8
  %151 = icmp ne %struct.sockaddr** %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.sockaddr**, %struct.sockaddr*** %18, align 8
  %154 = call i32 @php_network_freeaddresses(%struct.sockaddr** %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i32, i32* %15, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %174

158:                                              ; preds = %155
  %159 = load i32, i32* %14, align 4
  %160 = call i64 @ZEND_VALID_SOCKET(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = load i32, i32* %14, align 4
  %164 = call i32 @closesocket(i32 %163)
  br label %165

165:                                              ; preds = %162, %158
  %166 = load i32**, i32*** %13, align 8
  %167 = icmp ne i32** %166, null
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load i32, i32* %15, align 4
  %170 = call i32* @php_socket_error_str(i32 %169)
  %171 = load i32**, i32*** %13, align 8
  store i32* %170, i32** %171, align 8
  br label %172

172:                                              ; preds = %168, %165
  %173 = load i32, i32* @SOCK_ERR, align 4
  store i32 %173, i32* %7, align 4
  br label %176

174:                                              ; preds = %155
  %175 = load i32, i32* %14, align 4
  store i32 %175, i32* %7, align 4
  br label %176

176:                                              ; preds = %174, %172, %27
  %177 = load i32, i32* %7, align 4
  ret i32 %177
}

declare dso_local i32 @php_network_getaddresses(i8*, i32, %struct.sockaddr***, i32**) #1

declare dso_local i32 @pefree(%struct.sockaddr*, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local %struct.sockaddr* @pemalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @closesocket(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @php_socket_errno(...) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @ntohs(i8*) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @php_network_freeaddresses(%struct.sockaddr**) #1

declare dso_local i64 @ZEND_VALID_SOCKET(i32) #1

declare dso_local i32* @php_socket_error_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
