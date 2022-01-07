; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_clnt_generic.c_clnt_tli_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_clnt_generic.c_clnt_tli_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.netconfig = type { i64, i32, i32, i32 }
%struct.netbuf = type { i64 }
%struct.__rpc_sockinfo = type { i64, i32 }
%struct.sockaddr = type { i64 }

@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@RPC_ANYFD = common dso_local global i32 0, align 4
@RPC_UNKNOWNPROTO = common dso_local global i8* null, align 8
@rpc_createerr = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@INVALID_SOCKET = common dso_local global i32 0, align 4
@RPC_UNKNOWNHOST = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"inet\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"inet6\00", align 1
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CLSET_FD_CLOSE = common dso_local global i32 0, align 4
@RPC_SYSTEMERROR = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @clnt_tli_create(i32 %0, %struct.netconfig* %1, %struct.netbuf* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 (i8*, i8*)* %7, i32 (i8*, i8*, i8**)* %8, i8* %9) #0 {
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.netconfig*, align 8
  %14 = alloca %struct.netbuf*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32 (i8*, i8*)*, align 8
  %20 = alloca i32 (i8*, i8*, i8**)*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_9__*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.__rpc_sockinfo, align 8
  %27 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store %struct.netconfig* %1, %struct.netconfig** %13, align 8
  store %struct.netbuf* %2, %struct.netbuf** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 (i8*, i8*)* %7, i32 (i8*, i8*)** %19, align 8
  store i32 (i8*, i8*, i8**)* %8, i32 (i8*, i8*, i8**)** %20, align 8
  store i8* %9, i8** %21, align 8
  %28 = load i8*, i8** @FALSE, align 8
  store i8* %28, i8** %23, align 8
  %29 = load i8*, i8** @TRUE, align 8
  store i8* %29, i8** %25, align 8
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %27, align 4
  %31 = load i32, i32* %27, align 4
  %32 = load i32, i32* @RPC_ANYFD, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %10
  %35 = load %struct.netconfig*, %struct.netconfig** %13, align 8
  %36 = icmp eq %struct.netconfig* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i8*, i8** @RPC_UNKNOWNPROTO, align 8
  store i8* %38, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rpc_createerr, i32 0, i32 1), align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %11, align 8
  br label %182

39:                                               ; preds = %34
  %40 = load %struct.netconfig*, %struct.netconfig** %13, align 8
  %41 = call i32 @__rpc_nconf2fd(%struct.netconfig* %40)
  store i32 %41, i32* %27, align 4
  %42 = load i32, i32* %27, align 4
  %43 = load i32, i32* @INVALID_SOCKET, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %172

46:                                               ; preds = %39
  %47 = load i8*, i8** @TRUE, align 8
  store i8* %47, i8** %23, align 8
  %48 = load %struct.netconfig*, %struct.netconfig** %13, align 8
  %49 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %24, align 8
  %51 = load i32, i32* %27, align 4
  %52 = call i32 @bindresvport(i32 %51, i32* null)
  %53 = load i32, i32* %27, align 4
  %54 = call i32 @__rpc_fd2sockinfo(i32 %53, %struct.__rpc_sockinfo* %26)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %46
  br label %172

57:                                               ; preds = %46
  br label %72

58:                                               ; preds = %10
  %59 = load i32, i32* %27, align 4
  %60 = call i32 @__rpc_fd2sockinfo(i32 %59, %struct.__rpc_sockinfo* %26)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  br label %172

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %26, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @__rpc_socktype2seman(i32 %65)
  store i64 %66, i64* %24, align 8
  %67 = load i64, i64* %24, align 8
  %68 = icmp eq i64 %67, -1
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i8*, i8** @RPC_UNKNOWNPROTO, align 8
  store i8* %70, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rpc_createerr, i32 0, i32 1), align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %11, align 8
  br label %182

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %57
  %73 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %26, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.netbuf*, %struct.netbuf** %14, align 8
  %76 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.sockaddr*
  %79 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %74, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load i8*, i8** @RPC_UNKNOWNHOST, align 8
  store i8* %83, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rpc_createerr, i32 0, i32 1), align 8
  br label %175

84:                                               ; preds = %72
  %85 = load i64, i64* %24, align 8
  switch i64 %85, label %137 [
    i64 129, label %86
    i64 128, label %97
    i64 130, label %129
  ]

86:                                               ; preds = %84
  %87 = load i32, i32* %27, align 4
  %88 = load %struct.netbuf*, %struct.netbuf** %14, align 8
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %18, align 4
  %93 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %19, align 8
  %94 = load i32 (i8*, i8*, i8**)*, i32 (i8*, i8*, i8**)** %20, align 8
  %95 = load i8*, i8** %21, align 8
  %96 = call %struct.TYPE_9__* @clnt_vc_create(i32 %87, %struct.netbuf* %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 (i8*, i8*)* %93, i32 (i8*, i8*, i8**)* %94, i8* %95)
  store %struct.TYPE_9__* %96, %struct.TYPE_9__** %22, align 8
  br label %138

97:                                               ; preds = %84
  %98 = load %struct.netconfig*, %struct.netconfig** %13, align 8
  %99 = icmp ne %struct.netconfig* %98, null
  br i1 %99, label %100, label %118

100:                                              ; preds = %97
  %101 = load %struct.netconfig*, %struct.netconfig** %13, align 8
  %102 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @strcmp(i32 %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %100
  %107 = load %struct.netconfig*, %struct.netconfig** %13, align 8
  %108 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @strcmp(i32 %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %106, %100
  %113 = load i32, i32* %27, align 4
  %114 = load i32, i32* @IPPROTO_TCP, align 4
  %115 = load i32, i32* @TCP_NODELAY, align 4
  %116 = bitcast i8** %25 to i8*
  %117 = call i32 @setsockopt(i32 %113, i32 %114, i32 %115, i8* %116, i32 8)
  br label %118

118:                                              ; preds = %112, %106, %97
  %119 = load i32, i32* %27, align 4
  %120 = load %struct.netbuf*, %struct.netbuf** %14, align 8
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* %18, align 4
  %125 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %19, align 8
  %126 = load i32 (i8*, i8*, i8**)*, i32 (i8*, i8*, i8**)** %20, align 8
  %127 = load i8*, i8** %21, align 8
  %128 = call %struct.TYPE_9__* @clnt_vc_create(i32 %119, %struct.netbuf* %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 (i8*, i8*)* %125, i32 (i8*, i8*, i8**)* %126, i8* %127)
  store %struct.TYPE_9__* %128, %struct.TYPE_9__** %22, align 8
  br label %138

129:                                              ; preds = %84
  %130 = load i32, i32* %27, align 4
  %131 = load %struct.netbuf*, %struct.netbuf** %14, align 8
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* %18, align 4
  %136 = call %struct.TYPE_9__* @clnt_dg_create(i32 %130, %struct.netbuf* %131, i32 %132, i32 %133, i32 %134, i32 %135)
  store %struct.TYPE_9__* %136, %struct.TYPE_9__** %22, align 8
  br label %138

137:                                              ; preds = %84
  br label %172

138:                                              ; preds = %129, %118, %86
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %140 = icmp eq %struct.TYPE_9__* %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  br label %175

142:                                              ; preds = %138
  %143 = load %struct.netconfig*, %struct.netconfig** %13, align 8
  %144 = icmp ne %struct.netconfig* %143, null
  br i1 %144, label %145, label %158

145:                                              ; preds = %142
  %146 = load %struct.netconfig*, %struct.netconfig** %13, align 8
  %147 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i8* @strdup(i32 %148)
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  store i8* %149, i8** %151, align 8
  %152 = load %struct.netconfig*, %struct.netconfig** %13, align 8
  %153 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i8* @strdup(i32 %154)
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  store i8* %155, i8** %157, align 8
  br label %163

158:                                              ; preds = %142
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %160, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %162, align 8
  br label %163

163:                                              ; preds = %158, %145
  %164 = load i8*, i8** %23, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %168 = load i32, i32* @CLSET_FD_CLOSE, align 4
  %169 = call i32 @CLNT_CONTROL(%struct.TYPE_9__* %167, i32 %168, i32* null)
  br label %170

170:                                              ; preds = %166, %163
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  store %struct.TYPE_9__* %171, %struct.TYPE_9__** %11, align 8
  br label %182

172:                                              ; preds = %137, %62, %56, %45
  %173 = load i8*, i8** @RPC_SYSTEMERROR, align 8
  store i8* %173, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rpc_createerr, i32 0, i32 1), align 8
  %174 = load i32, i32* @errno, align 4
  store i32 %174, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rpc_createerr, i32 0, i32 0, i32 0), align 8
  br label %175

175:                                              ; preds = %172, %141, %82
  %176 = load i8*, i8** %23, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32, i32* %27, align 4
  %180 = call i32 @closesocket(i32 %179)
  br label %181

181:                                              ; preds = %178, %175
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %11, align 8
  br label %182

182:                                              ; preds = %181, %170, %69, %37
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  ret %struct.TYPE_9__* %183
}

declare dso_local i32 @__rpc_nconf2fd(%struct.netconfig*) #1

declare dso_local i32 @bindresvport(i32, i32*) #1

declare dso_local i32 @__rpc_fd2sockinfo(i32, %struct.__rpc_sockinfo*) #1

declare dso_local i64 @__rpc_socktype2seman(i32) #1

declare dso_local %struct.TYPE_9__* @clnt_vc_create(i32, %struct.netbuf*, i32, i32, i32, i32, i32 (i8*, i8*)*, i32 (i8*, i8*, i8**)*, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local %struct.TYPE_9__* @clnt_dg_create(i32, %struct.netbuf*, i32, i32, i32, i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @CLNT_CONTROL(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @closesocket(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
