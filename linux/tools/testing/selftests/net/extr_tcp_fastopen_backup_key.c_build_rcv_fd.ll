; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_tcp_fastopen_backup_key.c_build_rcv_fd.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_tcp_fastopen_backup_key.c_build_rcv_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i8*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i8*, i32, i32 }
%struct.sockaddr = type { i32 }

@INADDR_ANY = common dso_local global i32 0, align 4
@PORT = common dso_local global i32 0, align 4
@in6addr_any = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unsupported family %d\00", align 1
@N_LISTEN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to create receive socket\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to set SO_REUSEPORT\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to bind receive socket\00", align 1
@SOL_TCP = common dso_local global i32 0, align 4
@TCP_FASTOPEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to set TCP_FASTOPEN\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to listen on receive port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*)* @build_rcv_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_rcv_fd(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockaddr_in, align 8
  %8 = alloca %struct.sockaddr_in6, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [8 x i32], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %15 = bitcast %struct.sockaddr_in* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  %16 = bitcast %struct.sockaddr_in6* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 24, i1 false)
  store i32 1, i32* %10, align 4
  store i32 100, i32* %13, align 4
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %37 [
    i32 129, label %18
    i32 128, label %29
  ]

18:                                               ; preds = %3
  %19 = load i32, i32* %4, align 4
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* @INADDR_ANY, align 4
  %22 = call i32 @htonl(i32 %21)
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @PORT, align 4
  %26 = call i8* @htons(i32 %25)
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i8* %26, i8** %27, align 8
  store i32 24, i32* %12, align 4
  %28 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  store %struct.sockaddr* %28, %struct.sockaddr** %9, align 8
  br label %40

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 0
  store i32 128, i32* %30, align 8
  %31 = load i32, i32* @in6addr_any, align 4
  %32 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* @PORT, align 4
  %34 = call i8* @htons(i32 %33)
  %35 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 1
  store i8* %34, i8** %35, align 8
  store i32 24, i32* %12, align 4
  %36 = bitcast %struct.sockaddr_in6* %8 to %struct.sockaddr*
  store %struct.sockaddr* %36, %struct.sockaddr** %9, align 8
  br label %40

37:                                               ; preds = %3
  %38 = load i32, i32* %4, align 4
  %39 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %141

40:                                               ; preds = %29, %18
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %51, %40
  %42 = load i32, i32* %11, align 4
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %44 = call i32 @ARRAY_SIZE(i32* %43)
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = call i32 (...) @rand()
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 %49
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %41

54:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %138, %54
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @N_LISTEN, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %141

59:                                               ; preds = %55
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @socket(i32 %60, i32 %61, i32 0)
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %62, i32* %66, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %59
  %74 = load i32, i32* @errno, align 4
  %75 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %59
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @SOL_SOCKET, align 4
  %83 = load i32, i32* @SO_REUSEPORT, align 4
  %84 = call i64 @setsockopt(i32 %81, i32 %82, i32 %83, i32* %10, i32 4)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = load i32, i32* @errno, align 4
  %88 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %76
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i64 @bind(i32 %94, %struct.sockaddr* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %89
  %100 = load i32, i32* @errno, align 4
  %101 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %89
  %103 = load i32*, i32** %6, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @SOL_TCP, align 4
  %109 = load i32, i32* @TCP_FASTOPEN, align 4
  %110 = call i64 @setsockopt(i32 %107, i32 %108, i32 %109, i32* %13, i32 4)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %102
  %113 = load i32, i32* @errno, align 4
  %114 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %113, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %102
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %122 = call i32 @set_keys(i32 %120, i32* %121)
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @SOCK_STREAM, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %137

126:                                              ; preds = %115
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @listen(i32 %131, i32 10)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %126
  %135 = load i32, i32* @errno, align 4
  %136 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %135, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %137

137:                                              ; preds = %134, %126, %115
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %11, align 4
  br label %55

141:                                              ; preds = %37, %55
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @htonl(i32) #2

declare dso_local i8* @htons(i32) #2

declare dso_local i32 @error(i32, i32, i8*, ...) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @rand(...) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #2

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @set_keys(i32, i32*) #2

declare dso_local i64 @listen(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
