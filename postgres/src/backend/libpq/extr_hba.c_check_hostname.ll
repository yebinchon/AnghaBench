; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_hba.c_check_hostname.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_hba.c_check_hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.addrinfo = type { %struct.TYPE_6__*, %struct.addrinfo* }
%struct.TYPE_6__ = type { i64 }
%struct.sockaddr_in = type { i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_NAMEREQD = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [112 x i8] c"pg_hba.conf host name \22%s\22 rejected because address resolution did not return a match with IP address of client\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*)* @check_hostname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_hostname(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %146

18:                                               ; preds = %2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %54, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @NI_MAXHOST, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %10, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = trunc i64 %25 to i32
  %36 = load i32, i32* @NI_NAMEREQD, align 4
  %37 = call i32 @pg_getnameinfo_all(%struct.TYPE_9__* %30, i32 %34, i8* %27, i32 %35, i32* null, i32 0, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %23
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32 -2, i32* %42, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %50

46:                                               ; preds = %23
  %47 = call i32 @pstrdup(i8* %27)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %46, %40
  %51 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %51)
  %52 = load i32, i32* %12, align 4
  switch i32 %52, label %148 [
    i32 0, label %53
    i32 1, label %146
  ]

53:                                               ; preds = %50
  br label %54

54:                                               ; preds = %53, %18
  %55 = load i8*, i8** %5, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @hostname_match(i8* %55, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %146

62:                                               ; preds = %54
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 1, i32* %3, align 4
  br label %146

68:                                               ; preds = %62
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @getaddrinfo(i32 %71, i32* null, i32* null, %struct.addrinfo** %6)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store i32 -2, i32* %77, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  store i32 0, i32* %3, align 4
  br label %146

81:                                               ; preds = %68
  store i32 0, i32* %9, align 4
  %82 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  store %struct.addrinfo* %82, %struct.addrinfo** %7, align 8
  br label %83

83:                                               ; preds = %121, %81
  %84 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %85 = icmp ne %struct.addrinfo* %84, null
  br i1 %85, label %86, label %125

86:                                               ; preds = %83
  %87 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %88 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %91, %96
  br i1 %97, label %98, label %120

98:                                               ; preds = %86
  %99 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %100 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @AF_INET, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %98
  %107 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %108 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = bitcast %struct.TYPE_6__* %109 to %struct.sockaddr_in*
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = bitcast %struct.TYPE_9__* %113 to %struct.sockaddr_in*
  %115 = call i64 @ipv4eq(%struct.sockaddr_in* %110, %struct.sockaddr_in* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %106
  store i32 1, i32* %9, align 4
  br label %125

118:                                              ; preds = %106
  br label %119

119:                                              ; preds = %118, %98
  br label %120

120:                                              ; preds = %119, %86
  br label %121

121:                                              ; preds = %120
  %122 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %123 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %122, i32 0, i32 1
  %124 = load %struct.addrinfo*, %struct.addrinfo** %123, align 8
  store %struct.addrinfo* %124, %struct.addrinfo** %7, align 8
  br label %83

125:                                              ; preds = %117, %83
  %126 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %127 = icmp ne %struct.addrinfo* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %130 = call i32 @freeaddrinfo(%struct.addrinfo* %129)
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* @DEBUG2, align 4
  %136 = load i8*, i8** %5, align 8
  %137 = call i32 @elog(i32 %135, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str, i64 0, i64 0), i8* %136)
  br label %138

138:                                              ; preds = %134, %131
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 1, i32 -1
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* %9, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %138, %75, %67, %61, %50, %17
  %147 = load i32, i32* %3, align 4
  ret i32 %147

148:                                              ; preds = %50
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pg_getnameinfo_all(%struct.TYPE_9__*, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i32 @pstrdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @hostname_match(i8*, i32) #2

declare dso_local i32 @getaddrinfo(i32, i32*, i32*, %struct.addrinfo**) #2

declare dso_local i64 @ipv4eq(%struct.sockaddr_in*, %struct.sockaddr_in*) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

declare dso_local i32 @elog(i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
