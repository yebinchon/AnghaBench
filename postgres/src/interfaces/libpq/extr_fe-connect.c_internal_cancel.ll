; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_internal_cancel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_internal_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.anon = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8*, i64 }
%struct.sockaddr = type { i32 }

@SOCK_ERRNO = common dso_local global i32 0, align 4
@PGINVALID_SOCKET = common dso_local global i64 0, align 8
@PG_STRERROR_R_BUFLEN = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"PQcancel() -- socket() failed: \00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"PQcancel() -- connect() failed: \00", align 1
@CANCEL_REQUEST_CODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"PQcancel() -- send() failed: \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i8*, i32)* @internal_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @internal_cancel(%struct.TYPE_6__* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.anon, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* @SOCK_ERRNO, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i64, i64* @PGINVALID_SOCKET, align 8
  store i64 %20, i64* %13, align 8
  %21 = load i32, i32* @PG_STRERROR_R_BUFLEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SOCK_STREAM, align 4
  %30 = call i64 @socket(i32 %28, i32 %29, i32 0)
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* @PGINVALID_SOCKET, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %5
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @strlcpy(i8* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %105

37:                                               ; preds = %5
  br label %38

38:                                               ; preds = %52, %37
  %39 = load i64, i64* %13, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = bitcast %struct.TYPE_5__* %41 to %struct.sockaddr*
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @connect(i64 %39, %struct.sockaddr* %42, i32 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %38
  %49 = load i32, i32* @SOCK_ERRNO, align 4
  %50 = load i32, i32* @EINTR, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %38

53:                                               ; preds = %48
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @strlcpy(i8* %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %105

57:                                               ; preds = %38
  %58 = call i8* @pg_hton32(i32 32)
  %59 = ptrtoint i8* %58 to i32
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = load i32, i32* @CANCEL_REQUEST_CODE, align 4
  %62 = call i8* @pg_hton32(i32 %61)
  %63 = ptrtoint i8* %62 to i64
  %64 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i8* @pg_hton32(i32 %66)
  %68 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i8* @pg_hton32(i32 %70)
  %72 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %83, %57
  %75 = load i64, i64* %13, align 8
  %76 = bitcast %struct.anon* %17 to i8*
  %77 = call i32 @send(i64 %75, i8* %76, i32 32, i32 0)
  %78 = icmp ne i32 %77, 32
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load i32, i32* @SOCK_ERRNO, align 4
  %81 = load i32, i32* @EINTR, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %74

84:                                               ; preds = %79
  %85 = load i8*, i8** %10, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @strlcpy(i8* %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  br label %105

88:                                               ; preds = %74
  br label %89

89:                                               ; preds = %98, %88
  %90 = load i64, i64* %13, align 8
  %91 = bitcast %struct.anon* %17 to i8*
  %92 = call i64 @recv(i64 %90, i8* %91, i32 1, i32 0)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i32, i32* @SOCK_ERRNO, align 4
  %96 = load i32, i32* @EINTR, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %89

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99, %89
  %101 = load i64, i64* %13, align 8
  %102 = call i32 @closesocket(i64 %101)
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @SOCK_ERRNO_SET(i32 %103)
  store i32 1, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %132

105:                                              ; preds = %84, %53, %33
  %106 = load i32, i32* %11, align 4
  %107 = load i8*, i8** %10, align 8
  %108 = call i32 @strlen(i8* %107)
  %109 = sub nsw i32 %106, %108
  %110 = sub nsw i32 %109, 2
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %105
  %114 = load i8*, i8** %10, align 8
  %115 = load i32, i32* @SOCK_ERRNO, align 4
  %116 = trunc i64 %22 to i32
  %117 = call i32 @SOCK_STRERROR(i32 %115, i8* %24, i32 %116)
  %118 = load i32, i32* %16, align 4
  %119 = call i32 @strncat(i8* %114, i32 %117, i32 %118)
  %120 = load i8*, i8** %10, align 8
  %121 = call i32 @strcat(i8* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %122

122:                                              ; preds = %113, %105
  %123 = load i64, i64* %13, align 8
  %124 = load i64, i64* @PGINVALID_SOCKET, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i64, i64* %13, align 8
  %128 = call i32 @closesocket(i64 %127)
  br label %129

129:                                              ; preds = %126, %122
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @SOCK_ERRNO_SET(i32 %130)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %132

132:                                              ; preds = %129, %100
  %133 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %133)
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @socket(i32, i32, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @connect(i64, %struct.sockaddr*, i32) #2

declare dso_local i8* @pg_hton32(i32) #2

declare dso_local i32 @send(i64, i8*, i32, i32) #2

declare dso_local i64 @recv(i64, i8*, i32, i32) #2

declare dso_local i32 @closesocket(i64) #2

declare dso_local i32 @SOCK_ERRNO_SET(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strncat(i8*, i32, i32) #2

declare dso_local i32 @SOCK_STRERROR(i32, i8*, i32) #2

declare dso_local i32 @strcat(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
