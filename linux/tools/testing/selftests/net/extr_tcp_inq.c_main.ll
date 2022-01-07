; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_tcp_inq.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_tcp_inq.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.iovec = type { i8*, i32 }
%struct.cmsghdr = type { i64, i64 }
%struct.msghdr = type { i32, i8*, i32, i32, %struct.iovec*, i64, i32* }
%struct.sockaddr = type { i32 }

@CMSG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"46p:\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@family = common dso_local global i32 0, align 4
@addr_len = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"server socket\00", align 1
@SOL_SOCKET = common dso_local global i64 0, align 8
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"setsockopt(SO_REUSEADDR)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@start_server = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"pthread_create\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"client socket\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@SOL_TCP = common dso_local global i64 0, align 8
@TCP_INQ = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"setsockopt(TCP_INQ)\00", align 1
@BUF_SIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"recvmsg\00", align 1
@MSG_CTRUNC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"control message is truncated\00", align 1
@TCP_CM_INQ = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"unexpected inq: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"PASSED\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sockaddr_storage, align 4
  %7 = alloca %struct.sockaddr_storage, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [1 x %struct.iovec], align 16
  %15 = alloca %struct.cmsghdr*, align 8
  %16 = alloca %struct.msghdr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %20 = load i32, i32* @CMSG_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  br label %24

24:                                               ; preds = %38, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = call i32 @getopt(i32 %25, i8** %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %8, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %38 [
    i32 52, label %31
    i32 54, label %33
    i32 112, label %35
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* @PF_INET, align 4
  store i32 %32, i32* @family, align 4
  store i32 4, i32* @addr_len, align 4
  br label %38

33:                                               ; preds = %29
  %34 = load i32, i32* @PF_INET6, align 4
  store i32 %34, i32* @family, align 4
  store i32 4, i32* @addr_len, align 4
  br label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @optarg, align 4
  %37 = call i32 @atoi(i32 %36)
  store i32 %37, i32* @port, align 4
  br label %38

38:                                               ; preds = %29, %35, %33, %31
  br label %24

39:                                               ; preds = %24
  %40 = load i32, i32* @family, align 4
  %41 = load i32, i32* @SOCK_STREAM, align 4
  %42 = call i32 @socket(i32 %40, i32 %41, i32 0)
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @errno, align 4
  %47 = call i32 @error(i32 1, i32 %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %39
  %49 = load i32, i32* @family, align 4
  %50 = call i32 @setup_loopback_addr(i32 %49, %struct.sockaddr_storage* %6)
  %51 = load i32, i32* %17, align 4
  %52 = load i64, i64* @SOL_SOCKET, align 8
  %53 = load i32, i32* @SO_REUSEADDR, align 4
  %54 = call i64 @setsockopt(i32 %51, i64 %52, i32 %53, i32* %9, i32 4)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* @errno, align 4
  %58 = call i32 @error(i32 1, i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %48
  %60 = load i32, i32* %17, align 4
  %61 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr*
  %62 = load i32, i32* @addr_len, align 4
  %63 = call i32 @bind(i32 %60, %struct.sockaddr* %61, i32 %62)
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @errno, align 4
  %67 = call i32 @error(i32 1, i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %59
  %69 = load i32, i32* %17, align 4
  %70 = call i32 @listen(i32 %69, i32 128)
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @errno, align 4
  %74 = call i32 @error(i32 1, i32 %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %68
  %76 = load i32, i32* @start_server, align 4
  %77 = load i32, i32* %17, align 4
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  %80 = call i64 @pthread_create(i32* %11, i32* null, i32 %76, i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load i32, i32* @errno, align 4
  %84 = call i32 @error(i32 1, i32 %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %75
  %86 = load i32, i32* @family, align 4
  %87 = load i32, i32* @SOCK_STREAM, align 4
  %88 = call i32 @socket(i32 %86, i32 %87, i32 0)
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %18, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* @errno, align 4
  %93 = call i32 @error(i32 1, i32 %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %85
  %95 = load i32, i32* @family, align 4
  %96 = call i32 @setup_loopback_addr(i32 %95, %struct.sockaddr_storage* %7)
  %97 = load i32, i32* %18, align 4
  %98 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr*
  %99 = load i32, i32* @addr_len, align 4
  %100 = call i32 @connect(i32 %97, %struct.sockaddr* %98, i32 %99)
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load i32, i32* @errno, align 4
  %104 = call i32 @error(i32 1, i32 %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %94
  %106 = load i32, i32* %18, align 4
  %107 = load i64, i64* @SOL_TCP, align 8
  %108 = load i32, i32* @TCP_INQ, align 4
  %109 = call i64 @setsockopt(i32 %106, i64 %107, i32 %108, i32* %9, i32 4)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i32, i32* @errno, align 4
  %113 = call i32 @error(i32 1, i32 %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %105
  %115 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 6
  store i32* null, i32** %115, align 8
  %116 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 5
  store i64 0, i64* %116, align 8
  %117 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %14, i64 0, i64 0
  %118 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 4
  store %struct.iovec* %117, %struct.iovec** %118, align 8
  %119 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 1
  store i8* %23, i8** %120, align 8
  %121 = trunc i64 %21 to i32
  %122 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 2
  store i32 %121, i32* %122, align 8
  %123 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 3
  store i32 0, i32* %123, align 4
  %124 = load i32, i32* @BUF_SIZE, align 4
  %125 = call i8* @malloc(i32 %124)
  store i8* %125, i8** %19, align 8
  %126 = load i8*, i8** %19, align 8
  %127 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %14, i64 0, i64 0
  %128 = getelementptr inbounds %struct.iovec, %struct.iovec* %127, i32 0, i32 0
  store i8* %126, i8** %128, align 16
  %129 = load i32, i32* @BUF_SIZE, align 4
  %130 = sdiv i32 %129, 2
  %131 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %14, i64 0, i64 0
  %132 = getelementptr inbounds %struct.iovec, %struct.iovec* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* %18, align 4
  %134 = call i32 @recvmsg(i32 %133, %struct.msghdr* %16, i32 0)
  %135 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %14, i64 0, i64 0
  %136 = getelementptr inbounds %struct.iovec, %struct.iovec* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %134, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %114
  %140 = load i32, i32* @errno, align 4
  %141 = call i32 @error(i32 1, i32 %140, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %114
  %143 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @MSG_CTRUNC, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %142
  %151 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %16)
  store %struct.cmsghdr* %151, %struct.cmsghdr** %15, align 8
  br label %152

152:                                              ; preds = %173, %150
  %153 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %154 = icmp ne %struct.cmsghdr* %153, null
  br i1 %154, label %155, label %176

155:                                              ; preds = %152
  %156 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %157 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @SOL_TCP, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %172

161:                                              ; preds = %155
  %162 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %163 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @TCP_CM_INQ, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %161
  %168 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %169 = call i64 @CMSG_DATA(%struct.cmsghdr* %168)
  %170 = inttoptr i64 %169 to i32*
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %10, align 4
  br label %172

172:                                              ; preds = %167, %161, %155
  br label %173

173:                                              ; preds = %172
  %174 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %175 = call %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr* %16, %struct.cmsghdr* %174)
  store %struct.cmsghdr* %175, %struct.cmsghdr** %15, align 8
  br label %152

176:                                              ; preds = %152
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* @BUF_SIZE, align 4
  %179 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %14, i64 0, i64 0
  %180 = getelementptr inbounds %struct.iovec, %struct.iovec* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = sub nsw i32 %178, %181
  %183 = icmp ne i32 %177, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %176
  %185 = load i32, i32* @stderr, align 4
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @fprintf(i32 %185, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %186)
  %188 = call i32 @exit(i32 1) #4
  unreachable

189:                                              ; preds = %176
  %190 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %191 = load i8*, i8** %19, align 8
  %192 = call i32 @free(i8* %191)
  %193 = load i32, i32* %18, align 4
  %194 = call i32 @close(i32 %193)
  store i32 0, i32* %3, align 4
  %195 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %195)
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @atoi(i32) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @error(i32, i32, i8*) #2

declare dso_local i32 @setup_loopback_addr(i32, %struct.sockaddr_storage*) #2

declare dso_local i64 @setsockopt(i32, i64, i32, i32*, i32) #2

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @listen(i32, i32) #2

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i8*) #2

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @recvmsg(i32, %struct.msghdr*, i32) #2

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #2

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #2

declare dso_local %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #2

declare dso_local i32 @fprintf(i32, i8*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
