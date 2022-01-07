; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_LSAPI_ParseSockAddr.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_LSAPI_ParseSockAddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.addrinfo = type { i64, i32, i32, i32, i32 }
%struct.sockaddr_un = type { i8* }
%struct.sockaddr_in = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.sockaddr_in6 = type { i8* }

@AF_UNIX = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"::\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@INADDR_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@INADDR_BROADCAST = common dso_local global i8* null, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LSAPI_ParseSockAddr(i8* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  store i8* %13, i8** %7, align 8
  store i32 0, i32* %11, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %182

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %23, %17
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i64 @isspace(i8 signext %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %4, align 8
  br label %18

26:                                               ; preds = %18
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @strncpy(i8* %27, i8* %28, i32 256)
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  switch i32 %32, label %66 [
    i32 47, label %33
    i32 91, label %43
  ]

33:                                               ; preds = %26
  %34 = load i64, i64* @AF_UNIX, align 8
  %35 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %36 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %38 = bitcast %struct.sockaddr* %37 to %struct.sockaddr_un*
  %39 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @strncpy(i8* %40, i8* %41, i32 8)
  store i32 0, i32* %3, align 4
  br label %182

43:                                               ; preds = %26
  %44 = load i64, i64* @AF_INET6, align 8
  %45 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %46 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %7, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i8* @strchr(i8* %49, i8 signext 93)
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %43
  store i32 -1, i32* %3, align 4
  br label %182

54:                                               ; preds = %43
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %8, align 8
  store i8 0, i8* %55, align 1
  %57 = load i8*, i8** %7, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 42
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %63 = call i32 @strcpy(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  store i8* %64, i8** %7, align 8
  br label %65

65:                                               ; preds = %61, %54
  store i32 1, i32* %11, align 4
  br label %118

66:                                               ; preds = %26
  %67 = load i64, i64* @AF_INET, align 8
  %68 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %69 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i8* @strchr(i8* %70, i8 signext 58)
  store i8* %71, i8** %8, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %66
  store i32 -1, i32* %3, align 4
  br label %182

75:                                               ; preds = %66
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %8, align 8
  store i8 0, i8* %76, align 1
  store i32 0, i32* %11, align 4
  %78 = load i8*, i8** %7, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 42
  br i1 %81, label %82, label %89

82:                                               ; preds = %75
  %83 = load i32, i32* @INADDR_ANY, align 4
  %84 = call i8* @htonl(i32 %83)
  %85 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %86 = bitcast %struct.sockaddr* %85 to %struct.sockaddr_in*
  %87 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i8* %84, i8** %88, align 8
  br label %117

89:                                               ; preds = %75
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @strcasecmp(i8* %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* @INADDR_LOOPBACK, align 4
  %95 = call i8* @htonl(i32 %94)
  %96 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %97 = bitcast %struct.sockaddr* %96 to %struct.sockaddr_in*
  %98 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i8* %95, i8** %99, align 8
  br label %116

100:                                              ; preds = %89
  %101 = load i8*, i8** %7, align 8
  %102 = call i8* @inet_addr(i8* %101)
  %103 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %104 = bitcast %struct.sockaddr* %103 to %struct.sockaddr_in*
  %105 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i8* %102, i8** %106, align 8
  %107 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %108 = bitcast %struct.sockaddr* %107 to %struct.sockaddr_in*
  %109 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load i8*, i8** @INADDR_BROADCAST, align 8
  %113 = icmp eq i8* %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %100
  store i32 1, i32* %11, align 4
  br label %115

115:                                              ; preds = %114, %100
  br label %116

116:                                              ; preds = %115, %93
  br label %117

117:                                              ; preds = %116, %82
  br label %118

118:                                              ; preds = %117, %65
  %119 = load i8*, i8** %8, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 58
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i8*, i8** %8, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %8, align 8
  br label %126

126:                                              ; preds = %123, %118
  %127 = load i8*, i8** %8, align 8
  %128 = call i32 @atoi(i8* %127)
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp sle i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = load i32, i32* %12, align 4
  %133 = icmp sgt i32 %132, 65535
  br i1 %133, label %134, label %135

134:                                              ; preds = %131, %126
  store i32 -1, i32* %3, align 4
  br label %182

135:                                              ; preds = %131
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %163

138:                                              ; preds = %135
  %139 = call i32 @memset(%struct.addrinfo* %10, i32 0, i32 24)
  %140 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %141 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 0
  store i64 %142, i64* %143, align 8
  %144 = load i32, i32* @SOCK_STREAM, align 4
  %145 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 4
  store i32 %144, i32* %145, align 4
  %146 = load i32, i32* @IPPROTO_TCP, align 4
  %147 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 3
  store i32 %146, i32* %147, align 8
  %148 = load i8*, i8** %7, align 8
  %149 = call i64 @getaddrinfo(i8* %148, i32* null, %struct.addrinfo* %10, %struct.addrinfo** %9)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %138
  store i32 -1, i32* %3, align 4
  br label %182

152:                                              ; preds = %138
  %153 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %154 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %155 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %158 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @memcpy(%struct.sockaddr* %153, i32 %156, i32 %159)
  %161 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %162 = call i32 @freeaddrinfo(%struct.addrinfo* %161)
  br label %163

163:                                              ; preds = %152, %135
  %164 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %165 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @AF_INET, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %163
  %170 = load i32, i32* %12, align 4
  %171 = call i8* @htons(i32 %170)
  %172 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %173 = bitcast %struct.sockaddr* %172 to %struct.sockaddr_in*
  %174 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %173, i32 0, i32 0
  store i8* %171, i8** %174, align 8
  br label %181

175:                                              ; preds = %163
  %176 = load i32, i32* %12, align 4
  %177 = call i8* @htons(i32 %176)
  %178 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %179 = bitcast %struct.sockaddr* %178 to %struct.sockaddr_in6*
  %180 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %179, i32 0, i32 0
  store i8* %177, i8** %180, align 8
  br label %181

181:                                              ; preds = %175, %169
  store i32 0, i32* %3, align 4
  br label %182

182:                                              ; preds = %181, %151, %134, %74, %53, %33, %16
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @inet_addr(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i64 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i8* @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
