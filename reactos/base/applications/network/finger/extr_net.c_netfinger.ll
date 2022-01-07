; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/finger/extr_net.c_netfinger.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/finger/extr_net.c_netfinger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i64 }
%struct.hostent = type { i8*, i8**, i8*, i32, i32, i64 }
%struct.servent = type { i32 }
%struct.sockaddr_in = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"finger: unknown host: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"finger\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"finger: tcp/finger: unknown service\0A\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"finger: socket\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"finger: connect rc = %d\00", align 1
@lflag = external dso_local global i32, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"/W \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netfinger(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca %struct.in_addr, align 8
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca %struct.hostent, align 8
  %8 = alloca %struct.servent*, align 8
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca i32, align 4
  %11 = alloca [1 x i8*], align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = call i8* @rindex(i8* %13, i8 signext 64)
  store i8* %14, i8** %12, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %167

17:                                               ; preds = %1
  %18 = load i8*, i8** %12, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %12, align 8
  store i8 0, i8* %18, align 1
  %20 = load i8*, i8** %12, align 8
  %21 = load i8, i8* %20, align 1
  %22 = call i64 @isdigit(i8 signext %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %17
  %25 = load i8*, i8** %12, align 8
  %26 = call i64 @inet_addr(i8* %25)
  %27 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = icmp ne i64 %26, -1
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load i8*, i8** %12, align 8
  %31 = getelementptr inbounds %struct.hostent, %struct.hostent* %7, i32 0, i32 0
  store i8* %30, i8** %31, align 8
  %32 = getelementptr inbounds [1 x i8*], [1 x i8*]* %11, i64 0, i64 0
  %33 = getelementptr inbounds %struct.hostent, %struct.hostent* %7, i32 0, i32 1
  store i8** %32, i8*** %33, align 8
  %34 = bitcast %struct.in_addr* %5 to i8*
  %35 = getelementptr inbounds %struct.hostent, %struct.hostent* %7, i32 0, i32 2
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds %struct.hostent, %struct.hostent* %7, i32 0, i32 3
  store i32 8, i32* %36, align 8
  %37 = load i32, i32* @AF_INET, align 4
  %38 = getelementptr inbounds %struct.hostent, %struct.hostent* %7, i32 0, i32 4
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.hostent, %struct.hostent* %7, i32 0, i32 5
  store i64 0, i64* %39, align 8
  store %struct.hostent* %7, %struct.hostent** %6, align 8
  br label %49

40:                                               ; preds = %24, %17
  %41 = load i8*, i8** %12, align 8
  %42 = call %struct.hostent* @gethostbyname(i8* %41)
  store %struct.hostent* %42, %struct.hostent** %6, align 8
  %43 = icmp ne %struct.hostent* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8*, i8** %12, align 8
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %46)
  br label %167

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %29
  %50 = call %struct.servent* @getservbyname(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.servent* %50, %struct.servent** %8, align 8
  %51 = icmp ne %struct.servent* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %167

55:                                               ; preds = %49
  %56 = load %struct.hostent*, %struct.hostent** %6, align 8
  %57 = getelementptr inbounds %struct.hostent, %struct.hostent* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  store i32 %58, i32* %59, align 4
  %60 = load %struct.hostent*, %struct.hostent** %6, align 8
  %61 = getelementptr inbounds %struct.hostent, %struct.hostent* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  %64 = bitcast i32* %63 to i8*
  %65 = load %struct.hostent*, %struct.hostent** %6, align 8
  %66 = getelementptr inbounds %struct.hostent, %struct.hostent* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @bcopy(i8* %62, i8* %64, i32 %67)
  %69 = load %struct.servent*, %struct.servent** %8, align 8
  %70 = getelementptr inbounds %struct.servent, %struct.servent* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = load %struct.hostent*, %struct.hostent** %6, align 8
  %74 = getelementptr inbounds %struct.hostent, %struct.hostent* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SOCK_STREAM, align 4
  %77 = call i32 @socket(i32 %75, i32 %76, i32 0)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* @INVALID_SOCKET, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %55
  %81 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %167

82:                                               ; preds = %55
  %83 = load %struct.hostent*, %struct.hostent** %6, align 8
  %84 = getelementptr inbounds %struct.hostent, %struct.hostent* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %85)
  %87 = load i32, i32* %10, align 4
  %88 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %89 = call i64 @connect(i32 %87, %struct.sockaddr* %88, i32 12)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %82
  %92 = load i32, i32* @stderr, align 4
  %93 = call i32 (...) @WSAGetLastError()
  %94 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @closesocket(i32 %95)
  br label %167

97:                                               ; preds = %82
  %98 = load i32, i32* @lflag, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @send(i32 %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 3, i32 0)
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i32, i32* %10, align 4
  %105 = load i8*, i8** %2, align 8
  %106 = load i8*, i8** %2, align 8
  %107 = call i32 @strlen(i8* %106)
  %108 = call i32 @send(i32 %104, i8* %105, i32 %107, i32 0)
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @send(i32 %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 2, i32 0)
  store i8 0, i8* %4, align 1
  br label %111

111:                                              ; preds = %154, %152, %127, %103
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @recv(i32 %112, i8* %3, i32 1, i32 0)
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %157

115:                                              ; preds = %111
  %116 = load i8, i8* %3, align 1
  %117 = sext i8 %116 to i32
  %118 = and i32 %117, 127
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %3, align 1
  %120 = load i8, i8* %3, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 13
  br i1 %122, label %123, label %129

123:                                              ; preds = %115
  %124 = load i8, i8* %4, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 13
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %111

128:                                              ; preds = %123
  store i8 10, i8* %3, align 1
  store i8 13, i8* %4, align 1
  br label %154

129:                                              ; preds = %115
  %130 = load i8, i8* %3, align 1
  %131 = call i32 @isprint(i8 signext %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %142, label %133

133:                                              ; preds = %129
  %134 = load i8, i8* %3, align 1
  %135 = call i32 @isspace(i8 signext %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %133
  %138 = load i8, i8* %3, align 1
  %139 = sext i8 %138 to i32
  %140 = or i32 %139, 64
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %3, align 1
  br label %142

142:                                              ; preds = %137, %133, %129
  %143 = load i8, i8* %4, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 13
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = load i8, i8* %3, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 10
  br i1 %149, label %150, label %152

150:                                              ; preds = %146, %142
  %151 = load i8, i8* %3, align 1
  store i8 %151, i8* %4, align 1
  br label %153

152:                                              ; preds = %146
  store i8 10, i8* %4, align 1
  br label %111

153:                                              ; preds = %150
  br label %154

154:                                              ; preds = %153, %128
  %155 = load i8, i8* %3, align 1
  %156 = call i32 @putchar(i8 signext %155)
  br label %111

157:                                              ; preds = %111
  %158 = load i8, i8* %4, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 10
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = call i32 @putchar(i8 signext 10)
  br label %163

163:                                              ; preds = %161, %157
  %164 = call i32 @putchar(i8 signext 10)
  %165 = load i32, i32* %10, align 4
  %166 = call i32 @closesocket(i32 %165)
  br label %167

167:                                              ; preds = %163, %91, %80, %52, %44, %16
  ret void
}

declare dso_local i8* @rindex(i8*, i8 signext) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @inet_addr(i8*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.servent* @getservbyname(i8*, i8*) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @closesocket(i32) #1

declare dso_local i32 @send(i32, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @isprint(i8 signext) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
