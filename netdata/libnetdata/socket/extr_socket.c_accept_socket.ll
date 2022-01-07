; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/socket/extr_socket.c_accept_socket.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/socket/extr_socket.c_accept_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"LISTENER: cannot getnameinfo() on received client connection.\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"::1\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@D_LISTENER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"New UNIX domain web client from %s on socket %d.\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"UNIX\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"New IPv4 web client from %s port %s on socket %d.\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"::ffff:\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"New IPv6 web client from %s port %s on socket %d.\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"New UNKNOWN web client from %s port %s on socket %d.\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"connection\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [45 x i8] c"Permission denied for client '%s', port '%s'\00", align 1
@EPERM = common dso_local global i64 0, align 8
@AF_LOCAL = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @accept_socket(i32 %0, i32 %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i64 %7, i32* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.sockaddr_storage, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i8* %2, i8** %13, align 8
  store i64 %3, i64* %14, align 8
  store i8* %4, i8** %15, align 8
  store i64 %5, i64* %16, align 8
  store i8* %6, i8** %17, align 8
  store i64 %7, i64* %18, align 8
  store i32* %8, i32** %19, align 8
  store i32 %9, i32* %20, align 4
  store i32 4, i32* %22, align 4
  %24 = load i32, i32* %11, align 4
  %25 = bitcast %struct.sockaddr_storage* %21 to %struct.sockaddr*
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @accept4(i32 %24, %struct.sockaddr* %25, i32* %22, i32 %26)
  store i32 %27, i32* %23, align 4
  %28 = load i32, i32* %23, align 4
  %29 = icmp sge i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i64 @likely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %151

33:                                               ; preds = %10
  %34 = bitcast %struct.sockaddr_storage* %21 to %struct.sockaddr*
  %35 = load i32, i32* %22, align 4
  %36 = load i8*, i8** %13, align 8
  %37 = load i64, i64* %14, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i8*, i8** %15, align 8
  %40 = load i64, i64* %16, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* @NI_NUMERICHOST, align 4
  %43 = load i32, i32* @NI_NUMERICSERV, align 4
  %44 = or i32 %42, %43
  %45 = call i64 @getnameinfo(%struct.sockaddr* %34, i32 %35, i8* %36, i32 %38, i8* %39, i32 %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %33
  %48 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %49 = load i8*, i8** %13, align 8
  %50 = load i64, i64* %14, align 8
  %51 = sub i64 %50, 1
  %52 = call i32 @strncpyz(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load i8*, i8** %15, align 8
  %54 = load i64, i64* %16, align 8
  %55 = sub i64 %54, 1
  %56 = call i32 @strncpyz(i8* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  br label %57

57:                                               ; preds = %47, %33
  %58 = load i8*, i8** %13, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i8*, i8** %13, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %61, %57
  %66 = load i8*, i8** %13, align 8
  %67 = load i64, i64* %14, align 8
  %68 = call i32 @strncpy(i8* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 %67)
  %69 = load i8*, i8** %13, align 8
  %70 = load i64, i64* %14, align 8
  %71 = sub i64 %70, 1
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8 0, i8* %72, align 1
  br label %73

73:                                               ; preds = %65, %61
  %74 = load i8*, i8** %13, align 8
  %75 = load i64, i64* %14, align 8
  %76 = sub i64 %75, 1
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8 0, i8* %77, align 1
  %78 = load i8*, i8** %15, align 8
  %79 = load i64, i64* %16, align 8
  %80 = sub i64 %79, 1
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8 0, i8* %81, align 1
  %82 = bitcast %struct.sockaddr_storage* %21 to %struct.sockaddr*
  %83 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %128 [
    i32 128, label %85
    i32 130, label %97
    i32 129, label %103
  ]

85:                                               ; preds = %73
  %86 = load i32, i32* @D_LISTENER, align 4
  %87 = load i8*, i8** %13, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 (i32, i8*, i8*, ...) @debug(i32 %86, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8* %87, i32 %88)
  %90 = load i8*, i8** %15, align 8
  %91 = load i64, i64* %16, align 8
  %92 = call i32 @strncpy(i8* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 %91)
  %93 = load i8*, i8** %15, align 8
  %94 = load i64, i64* %16, align 8
  %95 = sub i64 %94, 1
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  store i8 0, i8* %96, align 1
  br label %134

97:                                               ; preds = %73
  %98 = load i32, i32* @D_LISTENER, align 4
  %99 = load i8*, i8** %13, align 8
  %100 = load i8*, i8** %15, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i32 (i32, i8*, i8*, ...) @debug(i32 %98, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i8* %99, i8* %100, i32 %101)
  br label %134

103:                                              ; preds = %73
  %104 = load i8*, i8** %13, align 8
  %105 = call i32 @strncmp(i8* %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 7)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %103
  %108 = load i8*, i8** %13, align 8
  %109 = load i8*, i8** %13, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 7
  %111 = load i8*, i8** %13, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 7
  %113 = call i32 @strlen(i8* %112)
  %114 = add nsw i32 %113, 1
  %115 = call i32 @memmove(i8* %108, i8* %110, i32 %114)
  %116 = load i32, i32* @D_LISTENER, align 4
  %117 = load i8*, i8** %13, align 8
  %118 = load i8*, i8** %15, align 8
  %119 = load i32, i32* %11, align 4
  %120 = call i32 (i32, i8*, i8*, ...) @debug(i32 %116, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i8* %117, i8* %118, i32 %119)
  br label %127

121:                                              ; preds = %103
  %122 = load i32, i32* @D_LISTENER, align 4
  %123 = load i8*, i8** %13, align 8
  %124 = load i8*, i8** %15, align 8
  %125 = load i32, i32* %11, align 4
  %126 = call i32 (i32, i8*, i8*, ...) @debug(i32 %122, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i8* %123, i8* %124, i32 %125)
  br label %127

127:                                              ; preds = %121, %107
  br label %134

128:                                              ; preds = %73
  %129 = load i32, i32* @D_LISTENER, align 4
  %130 = load i8*, i8** %13, align 8
  %131 = load i8*, i8** %15, align 8
  %132 = load i32, i32* %11, align 4
  %133 = call i32 (i32, i8*, i8*, ...) @debug(i32 %129, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i8* %130, i8* %131, i32 %132)
  br label %134

134:                                              ; preds = %128, %127, %97, %85
  %135 = load i32, i32* %23, align 4
  %136 = load i8*, i8** %13, align 8
  %137 = load i8*, i8** %17, align 8
  %138 = load i64, i64* %18, align 8
  %139 = load i32*, i32** %19, align 8
  %140 = load i32, i32* %20, align 4
  %141 = call i32 @connection_allowed(i32 %135, i8* %136, i8* %137, i64 %138, i32* %139, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %150, label %143

143:                                              ; preds = %134
  store i64 0, i64* @errno, align 8
  %144 = load i8*, i8** %13, align 8
  %145 = load i8*, i8** %15, align 8
  %146 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i8* %144, i8* %145)
  %147 = load i32, i32* %23, align 4
  %148 = call i32 @close(i32 %147)
  store i32 -1, i32* %23, align 4
  %149 = load i64, i64* @EPERM, align 8
  store i64 %149, i64* @errno, align 8
  br label %150

150:                                              ; preds = %143, %134
  br label %151

151:                                              ; preds = %150, %10
  %152 = load i32, i32* %23, align 4
  ret i32 %152
}

declare dso_local i32 @accept4(i32, %struct.sockaddr*, i32*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @strncpyz(i8*, i8*, i64) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @debug(i32, i8*, i8*, ...) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @connection_allowed(i32, i8*, i8*, i64, i32*, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
