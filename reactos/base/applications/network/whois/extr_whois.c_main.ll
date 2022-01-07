; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/whois/extr_whois.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/whois/extr_whois.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32, i32 }
%struct.hostent = type { i8*, i32, i32, i32 }
%struct.servent = type { i32 }
%struct.sockaddr = type { i32 }

@optset = common dso_local global i64 0, align 8
@host = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"whois: WSAStartup failed\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"whois: %s: \00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"whois: socket\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"whois: bind\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"nicname\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"whois: nicname/tcp: unknown service\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"whois: connect error = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca %struct.hostent*, align 8
  %9 = alloca %struct.servent*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getwhoisserver(i32 %14, i8** %15)
  %17 = load i64, i64* @optset, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = sub nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %4, align 4
  %22 = load i64, i64* @optset, align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 %22
  store i8** %24, i8*** %5, align 8
  %25 = load i8*, i8** @host, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27, %2
  %31 = call i32 (...) @usage()
  br label %32

32:                                               ; preds = %30, %27
  %33 = call i32 @MAKEWORD(i32 1, i32 1)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @WSAStartup(i32 %34, i32* %12)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = call i32 @perror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 @cleanup(i32 1)
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i8*, i8** @host, align 8
  %43 = call %struct.hostent* @gethostbyname(i8* %42)
  store %struct.hostent* %43, %struct.hostent** %8, align 8
  %44 = load %struct.hostent*, %struct.hostent** %8, align 8
  %45 = icmp eq %struct.hostent* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* @stderr, align 4
  %48 = load i8*, i8** @host, align 8
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  %50 = call i32 @cleanup(i32 1)
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.hostent*, %struct.hostent** %8, align 8
  %53 = getelementptr inbounds %struct.hostent, %struct.hostent* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** @host, align 8
  %55 = load %struct.hostent*, %struct.hostent** %8, align 8
  %56 = getelementptr inbounds %struct.hostent, %struct.hostent* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SOCK_STREAM, align 4
  %59 = call i64 @socket(i32 %57, i32 %58, i32 0)
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @INVALID_SOCKET, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %51
  %64 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %65 = call i32 @cleanup(i32 1)
  br label %66

66:                                               ; preds = %63, %51
  %67 = call i32 @memset(%struct.sockaddr_in* %7, i32 0, i32 12)
  %68 = load %struct.hostent*, %struct.hostent** %8, align 8
  %69 = getelementptr inbounds %struct.hostent, %struct.hostent* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  store i32 %70, i32* %71, align 4
  %72 = load i64, i64* %10, align 8
  %73 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %74 = call i64 @bind(i64 %72, %struct.sockaddr* %73, i32 12)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %66
  %77 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %78 = call i32 @cleanup(i32 1)
  br label %79

79:                                               ; preds = %76, %66
  %80 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  %81 = bitcast i32* %80 to i8*
  %82 = load %struct.hostent*, %struct.hostent** %8, align 8
  %83 = getelementptr inbounds %struct.hostent, %struct.hostent* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.hostent*, %struct.hostent** %8, align 8
  %86 = getelementptr inbounds %struct.hostent, %struct.hostent* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @memcpy(i8* %81, i32 %84, i32 %87)
  %89 = call %struct.servent* @getservbyname(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store %struct.servent* %89, %struct.servent** %9, align 8
  %90 = load %struct.servent*, %struct.servent** %9, align 8
  %91 = icmp eq %struct.servent* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %79
  %93 = load i32, i32* @stderr, align 4
  %94 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %95 = call i32 @cleanup(i32 1)
  br label %96

96:                                               ; preds = %92, %79
  %97 = load %struct.servent*, %struct.servent** %9, align 8
  %98 = getelementptr inbounds %struct.servent, %struct.servent* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i32 %99, i32* %100, align 4
  %101 = load %struct.hostent*, %struct.hostent** %8, align 8
  %102 = getelementptr inbounds %struct.hostent, %struct.hostent* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %103)
  %105 = load i64, i64* %10, align 8
  %106 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %107 = call i64 @connect(i64 %105, %struct.sockaddr* %106, i32 12)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %96
  %110 = load i32, i32* @stderr, align 4
  %111 = call i32 (...) @WSAGetLastError()
  %112 = call i32 (i32, i8*, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %111)
  %113 = call i32 @cleanup(i32 1)
  br label %114

114:                                              ; preds = %109, %96
  br label %115

115:                                              ; preds = %119, %114
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %4, align 4
  %118 = icmp sgt i32 %116, 1
  br i1 %118, label %119, label %131

119:                                              ; preds = %115
  %120 = load i64, i64* %10, align 8
  %121 = load i8**, i8*** %5, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = load i8**, i8*** %5, align 8
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @strlen(i8* %124)
  %126 = call i32 @send(i64 %120, i8* %122, i32 %125, i32 0)
  %127 = load i64, i64* %10, align 8
  %128 = call i32 @send(i64 %127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 1, i32 0)
  %129 = load i8**, i8*** %5, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i32 1
  store i8** %130, i8*** %5, align 8
  br label %115

131:                                              ; preds = %115
  %132 = load i64, i64* %10, align 8
  %133 = load i8**, i8*** %5, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = load i8**, i8*** %5, align 8
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @strlen(i8* %136)
  %138 = call i32 @send(i64 %132, i8* %134, i32 %137, i32 0)
  %139 = load i64, i64* %10, align 8
  %140 = call i32 @send(i64 %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 2, i32 0)
  br label %141

141:                                              ; preds = %145, %131
  %142 = load i64, i64* %10, align 8
  %143 = call i32 @recv(i64 %142, i8* %6, i32 1, i32 0)
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load i8, i8* %6, align 1
  %147 = call i32 @putchar(i8 signext %146)
  br label %141

148:                                              ; preds = %141
  %149 = call i32 @cleanup(i32 0)
  ret i32 0
}

declare dso_local i32 @getwhoisserver(i32, i8**) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @MAKEWORD(i32, i32) #1

declare dso_local i32 @WSAStartup(i32, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @cleanup(i32) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i64 @bind(i64, %struct.sockaddr*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local %struct.servent* @getservbyname(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @connect(i64, %struct.sockaddr*, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @send(i64, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @recv(i64, i8*, i32, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
