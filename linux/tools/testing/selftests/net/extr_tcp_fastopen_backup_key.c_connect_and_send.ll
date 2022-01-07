; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_tcp_fastopen_backup_key.c_connect_and_send.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_tcp_fastopen_backup_key.c_connect_and_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i8*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i8*, i32, i32 }
%struct.sockaddr = type { i32 }

@INADDR_ANY = common dso_local global i32 0, align 4
@IP4_ADDR = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"inet_pton failed: %s\00", align 1
@PORT = common dso_local global i32 0, align 4
@in6addr_any = common dso_local global i32 0, align 4
@IP6_ADDR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Unsupported family %d\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to create send socket\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to bind send socket\00", align 1
@MSG_FASTOPEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"failed to sendto\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @connect_and_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_and_send(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in, align 8
  %7 = alloca %struct.sockaddr_in, align 8
  %8 = alloca %struct.sockaddr_in6, align 8
  %9 = alloca %struct.sockaddr_in6, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [1 x i8], align 1
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %16 = bitcast %struct.sockaddr_in* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 24, i1 false)
  %17 = bitcast %struct.sockaddr_in* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 24, i1 false)
  %18 = bitcast %struct.sockaddr_in6* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 24, i1 false)
  %19 = bitcast %struct.sockaddr_in6* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 24, i1 false)
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %65 [
    i32 129, label %21
    i32 128, label %45
  ]

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i32 129, i32* %22, align 8
  %23 = load i32, i32* @INADDR_ANY, align 4
  %24 = call i32 @htonl(i32 %23)
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  store i8* null, i8** %27, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i32 129, i32* %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i8*, i8** @IP4_ADDR, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @inet_pton(i32 %29, i8* %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %21
  %36 = load i32, i32* @errno, align 4
  %37 = load i8*, i8** @IP4_ADDR, align 8
  %38 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %35, %21
  %40 = load i32, i32* @PORT, align 4
  %41 = call i8* @htons(i32 %40)
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i8* %41, i8** %42, align 8
  store i32 24, i32* %13, align 4
  %43 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  store %struct.sockaddr* %43, %struct.sockaddr** %10, align 8
  %44 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  store %struct.sockaddr* %44, %struct.sockaddr** %11, align 8
  br label %68

45:                                               ; preds = %2
  %46 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 0
  store i32 128, i32* %46, align 8
  %47 = load i32, i32* @in6addr_any, align 4
  %48 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  %49 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 0
  store i32 128, i32* %49, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i8*, i8** @IP6_ADDR, align 8
  %52 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 2
  %53 = call i32 @inet_pton(i32 %50, i8* %51, i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %45
  %56 = load i32, i32* @errno, align 4
  %57 = load i8*, i8** @IP6_ADDR, align 8
  %58 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %55, %45
  %60 = load i32, i32* @PORT, align 4
  %61 = call i8* @htons(i32 %60)
  %62 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 1
  store i8* %61, i8** %62, align 8
  store i32 24, i32* %13, align 4
  %63 = bitcast %struct.sockaddr_in6* %8 to %struct.sockaddr*
  store %struct.sockaddr* %63, %struct.sockaddr** %10, align 8
  %64 = bitcast %struct.sockaddr_in6* %9 to %struct.sockaddr*
  store %struct.sockaddr* %64, %struct.sockaddr** %11, align 8
  br label %68

65:                                               ; preds = %2
  %66 = load i32, i32* %4, align 4
  %67 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  store i32 -1, i32* %3, align 4
  br label %101

68:                                               ; preds = %59, %39
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @socket(i32 %69, i32 %70, i32 0)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @errno, align 4
  %76 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %68
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i64 @bind(i32 %78, %struct.sockaddr* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* @errno, align 4
  %85 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %77
  %87 = getelementptr inbounds [1 x i8], [1 x i8]* %15, i64 0, i64 0
  store i8 97, i8* %87, align 1
  %88 = load i32, i32* %12, align 4
  %89 = getelementptr inbounds [1 x i8], [1 x i8]* %15, i64 0, i64 0
  %90 = load i32, i32* @MSG_FASTOPEN, align 4
  %91 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @sendto(i32 %88, i8* %89, i32 1, i32 %90, %struct.sockaddr* %91, i32 %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 1
  br i1 %95, label %96, label %99

96:                                               ; preds = %86
  %97 = load i32, i32* @errno, align 4
  %98 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %86
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %65
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @htonl(i32) #2

declare dso_local i32 @inet_pton(i32, i8*, i32*) #2

declare dso_local i32 @error(i32, i32, i8*, ...) #2

declare dso_local i8* @htons(i32) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
