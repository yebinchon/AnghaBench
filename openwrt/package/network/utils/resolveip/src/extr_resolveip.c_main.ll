; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/utils/resolveip/src/extr_resolveip.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/utils/resolveip/src/extr_resolveip.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32* }
%struct.addrinfo = type { i64, i64, %struct.addrinfo*, i32, i32, i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@abort_query = common dso_local global i32 0, align 4
@__const.main.sa = private unnamed_addr constant %struct.sigaction { i32* @abort_query }, align 8
@AF_UNSPEC = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"46t:h\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@optarg = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@SIGALRM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.addrinfo*, align 8
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca %struct.sigaction, align 8
  %14 = alloca %struct.addrinfo, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 3, i32* %6, align 4
  %15 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = bitcast %struct.sigaction* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.sigaction* @__const.main.sa to i8*), i64 8, i1 false)
  %20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 0
  %21 = load i64, i64* @AF_UNSPEC, align 8
  store i64 %21, i64* %20, align 8
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 2
  store %struct.addrinfo* null, %struct.addrinfo** %23, align 8
  %24 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 3
  store i32 0, i32* %24, align 8
  %25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 4
  %26 = load i32, i32* @IPPROTO_TCP, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 5
  %28 = load i32, i32* @SOCK_STREAM, align 4
  store i32 %28, i32* %27, align 8
  br label %29

29:                                               ; preds = %54, %2
  %30 = load i32, i32* %4, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = call i32 @getopt(i32 %30, i8** %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %7, align 4
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %34, label %55

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = trunc i32 %35 to i8
  %37 = sext i8 %36 to i32
  switch i32 %37, label %54 [
    i32 52, label %38
    i32 54, label %41
    i32 116, label %44
    i32 104, label %52
  ]

38:                                               ; preds = %34
  %39 = load i64, i64* @AF_INET, align 8
  %40 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  br label %54

41:                                               ; preds = %34
  %42 = load i64, i64* @AF_INET6, align 8
  %43 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 0
  store i64 %42, i64* %43, align 8
  br label %54

44:                                               ; preds = %34
  %45 = load i32, i32* @optarg, align 4
  %46 = call i32 @atoi(i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 (...) @show_usage()
  br label %51

51:                                               ; preds = %49, %44
  br label %54

52:                                               ; preds = %34
  %53 = call i32 (...) @show_usage()
  br label %54

54:                                               ; preds = %34, %52, %51, %41, %38
  br label %29

55:                                               ; preds = %29
  %56 = load i8**, i8*** %5, align 8
  %57 = load i64, i64* @optind, align 8
  %58 = getelementptr inbounds i8*, i8** %56, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = call i32 (...) @show_usage()
  br label %63

63:                                               ; preds = %61, %55
  %64 = load i32, i32* @SIGALRM, align 4
  %65 = call i32 @sigaction(i32 %64, %struct.sigaction* %13, i32* null)
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @alarm(i32 %66)
  %68 = load i8**, i8*** %5, align 8
  %69 = load i64, i64* @optind, align 8
  %70 = getelementptr inbounds i8*, i8** %68, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @getaddrinfo(i8* %71, i32* null, %struct.addrinfo* %14, %struct.addrinfo** %11)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = call i32 @exit(i32 2) #5
  unreachable

76:                                               ; preds = %63
  %77 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  store %struct.addrinfo* %77, %struct.addrinfo** %12, align 8
  br label %78

78:                                               ; preds = %115, %76
  %79 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %80 = icmp ne %struct.addrinfo* %79, null
  br i1 %80, label %81, label %119

81:                                               ; preds = %78
  %82 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %83 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @AF_INET, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %89 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to %struct.sockaddr_in*
  %92 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %91, i32 0, i32 0
  %93 = bitcast i32* %92 to i8*
  br label %101

94:                                               ; preds = %81
  %95 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %96 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to %struct.sockaddr_in6*
  %99 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %98, i32 0, i32 0
  %100 = bitcast i32* %99 to i8*
  br label %101

101:                                              ; preds = %94, %87
  %102 = phi i8* [ %93, %87 ], [ %100, %94 ]
  store i8* %102, i8** %10, align 8
  %103 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %104 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %108 = sub nsw i32 %107, 1
  %109 = call i32 @inet_ntop(i64 %105, i8* %106, i8* %18, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %101
  %112 = call i32 @exit(i32 3) #5
  unreachable

113:                                              ; preds = %101
  %114 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  br label %115

115:                                              ; preds = %113
  %116 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %117 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %116, i32 0, i32 2
  %118 = load %struct.addrinfo*, %struct.addrinfo** %117, align 8
  store %struct.addrinfo* %118, %struct.addrinfo** %12, align 8
  br label %78

119:                                              ; preds = %78
  %120 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %121 = call i32 @freeaddrinfo(%struct.addrinfo* %120)
  %122 = call i32 @exit(i32 0) #5
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #3

declare dso_local i32 @atoi(i32) #3

declare dso_local i32 @show_usage(...) #3

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #3

declare dso_local i32 @alarm(i32) #3

declare dso_local i64 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #3

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #4

declare dso_local i32 @inet_ntop(i64, i8*, i8*, i32) #3

declare dso_local i32 @printf(i8*, i8*) #3

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
