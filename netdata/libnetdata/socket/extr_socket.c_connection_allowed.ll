; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/socket/extr_socket.c_connection_allowed.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/socket/extr_socket.c_connection_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.addrinfo = type { %struct.addrinfo*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@D_LISTENER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"checking %s... (allow_dns=%d)\00", align 1
@NI_NAMEREQD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [94 x i8] c"Incoming %s on '%s' does not match a numeric pattern, and host could not be resolved (err=%s)\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"LISTENER: cannot validate hostname '%s' from '%s' by resolving it\00", align 1
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [78 x i8] c"Incoming ip %s rev-resolved onto %s, validating against forward-resolution %s\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"LISTENER: Cannot validate '%s' as ip of '%s', not listed in DNS\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"Incoming connection on '%s' (%s) does not match allowed pattern for %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @connection_allowed(i32 %0, i8* %1, i8* %2, i64 %3, i32* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sockaddr_storage, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.addrinfo*, align 8
  %20 = alloca %struct.addrinfo*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %25 = load i32, i32* @D_LISTENER, align 4
  %26 = load i8*, i8** %14, align 8
  %27 = load i32, i32* %15, align 4
  %28 = call i32 (i32, i8*, i8*, ...) @debug(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %27)
  %29 = load i32*, i32** %13, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %7
  store i32 1, i32* %8, align 4
  br label %169

32:                                               ; preds = %7
  %33 = load i32*, i32** %13, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i64 @simple_pattern_matches(i32* %33, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 1, i32* %8, align 4
  br label %169

38:                                               ; preds = %32
  %39 = load i8*, i8** %11, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %157

44:                                               ; preds = %38
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %157

47:                                               ; preds = %44
  store i32 4, i32* %17, align 4
  %48 = load i32, i32* %9, align 4
  %49 = bitcast %struct.sockaddr_storage* %16 to %struct.sockaddr*
  %50 = call i32 @getpeername(i32 %48, %struct.sockaddr* %49, i32* %17)
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %18, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %47
  %54 = bitcast %struct.sockaddr_storage* %16 to %struct.sockaddr*
  %55 = load i32, i32* %17, align 4
  %56 = load i8*, i8** %11, align 8
  %57 = load i64, i64* %12, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* @NI_NAMEREQD, align 4
  %60 = call i32 @getnameinfo(%struct.sockaddr* %54, i32 %55, i8* %56, i32 %58, i32* null, i32 0, i32 %59)
  store i32 %60, i32* %18, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %53, %47
  %63 = load i8*, i8** %14, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* %18, align 4
  %66 = call i32 @gai_strerror(i32 %65)
  %67 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0), i8* %63, i8* %64, i32 %66)
  %68 = load i64, i64* %12, align 8
  %69 = icmp uge i64 %68, 8
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 @strcpy(i8* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %62
  store i32 0, i32* %8, align 4
  br label %169

74:                                               ; preds = %53
  store %struct.addrinfo* null, %struct.addrinfo** %19, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = call i64 @getaddrinfo(i8* %75, i32* null, i32* null, %struct.addrinfo** %19)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load i8*, i8** %11, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i8* %79, i8* %80)
  %82 = load i64, i64* %12, align 8
  %83 = icmp uge i64 %82, 8
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 @strcpy(i8* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %78
  store i32 0, i32* %8, align 4
  br label %169

88:                                               ; preds = %74
  %89 = load %struct.addrinfo*, %struct.addrinfo** %19, align 8
  store %struct.addrinfo* %89, %struct.addrinfo** %20, align 8
  store i32 0, i32* %21, align 4
  br label %90

90:                                               ; preds = %136, %88
  %91 = load %struct.addrinfo*, %struct.addrinfo** %20, align 8
  %92 = icmp ne %struct.addrinfo* %91, null
  br i1 %92, label %93, label %137

93:                                               ; preds = %90
  %94 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %95 = zext i32 %94 to i64
  %96 = call i8* @llvm.stacksave()
  store i8* %96, i8** %22, align 8
  %97 = alloca i8, i64 %95, align 16
  store i64 %95, i64* %23, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  store i8 0, i8* %98, align 16
  %99 = load %struct.addrinfo*, %struct.addrinfo** %20, align 8
  %100 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  switch i32 %103, label %120 [
    i32 129, label %104
    i32 128, label %112
  ]

104:                                              ; preds = %93
  %105 = load %struct.addrinfo*, %struct.addrinfo** %20, align 8
  %106 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = bitcast %struct.TYPE_2__* %107 to %struct.sockaddr_in*
  %109 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %108, i32 0, i32 0
  %110 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %111 = call i32 @inet_ntop(i32 129, i32* %109, i8* %97, i32 %110)
  br label %120

112:                                              ; preds = %93
  %113 = load %struct.addrinfo*, %struct.addrinfo** %20, align 8
  %114 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = bitcast %struct.TYPE_2__* %115 to %struct.sockaddr_in6*
  %117 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %116, i32 0, i32 0
  %118 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %119 = call i32 @inet_ntop(i32 128, i32* %117, i8* %97, i32 %118)
  br label %120

120:                                              ; preds = %93, %112, %104
  %121 = load i32, i32* @D_LISTENER, align 4
  %122 = load i8*, i8** %10, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = call i32 (i32, i8*, i8*, ...) @debug(i32 %121, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0), i8* %122, i8* %123, i8* %97)
  %125 = load i8*, i8** %10, align 8
  %126 = call i32 @strcmp(i8* %125, i8* %97)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %120
  store i32 1, i32* %21, align 4
  store i32 3, i32* %24, align 4
  br label %133

129:                                              ; preds = %120
  %130 = load %struct.addrinfo*, %struct.addrinfo** %20, align 8
  %131 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %130, i32 0, i32 0
  %132 = load %struct.addrinfo*, %struct.addrinfo** %131, align 8
  store %struct.addrinfo* %132, %struct.addrinfo** %20, align 8
  store i32 0, i32* %24, align 4
  br label %133

133:                                              ; preds = %129, %128
  %134 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %134)
  %135 = load i32, i32* %24, align 4
  switch i32 %135, label %171 [
    i32 0, label %136
    i32 3, label %137
  ]

136:                                              ; preds = %133
  br label %90

137:                                              ; preds = %133, %90
  %138 = load i32, i32* %21, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %150, label %140

140:                                              ; preds = %137
  %141 = load i8*, i8** %10, align 8
  %142 = load i8*, i8** %11, align 8
  %143 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i8* %141, i8* %142)
  %144 = load i64, i64* %12, align 8
  %145 = icmp uge i64 %144, 8
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load i8*, i8** %11, align 8
  %148 = call i32 @strcpy(i8* %147, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %149

149:                                              ; preds = %146, %140
  br label %150

150:                                              ; preds = %149, %137
  %151 = load %struct.addrinfo*, %struct.addrinfo** %19, align 8
  %152 = icmp ne %struct.addrinfo* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load %struct.addrinfo*, %struct.addrinfo** %19, align 8
  %155 = call i32 @freeaddrinfo(%struct.addrinfo* %154)
  br label %156

156:                                              ; preds = %153, %150
  br label %157

157:                                              ; preds = %156, %44, %38
  %158 = load i32*, i32** %13, align 8
  %159 = load i8*, i8** %11, align 8
  %160 = call i64 @simple_pattern_matches(i32* %158, i8* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %157
  %163 = load i32, i32* @D_LISTENER, align 4
  %164 = load i8*, i8** %10, align 8
  %165 = load i8*, i8** %11, align 8
  %166 = load i8*, i8** %14, align 8
  %167 = call i32 (i32, i8*, i8*, ...) @debug(i32 %163, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0), i8* %164, i8* %165, i8* %166)
  store i32 0, i32* %8, align 4
  br label %169

168:                                              ; preds = %157
  store i32 1, i32* %8, align 4
  br label %169

169:                                              ; preds = %168, %162, %87, %73, %37, %31
  %170 = load i32, i32* %8, align 4
  ret i32 %170

171:                                              ; preds = %133
  unreachable
}

declare dso_local i32 @debug(i32, i8*, i8*, ...) #1

declare dso_local i64 @simple_pattern_matches(i32*, i8*) #1

declare dso_local i32 @getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @error(i8*, i8*, i8*, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @getaddrinfo(i8*, i32*, i32*, %struct.addrinfo**) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @inet_ntop(i32, i32*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
