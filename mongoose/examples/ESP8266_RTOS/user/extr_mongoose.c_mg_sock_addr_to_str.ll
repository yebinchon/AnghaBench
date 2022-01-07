; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_sock_addr_to_str.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_sock_addr_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.socket_address = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }

@MG_SOCK_STRINGIFY_IP = common dso_local global i32 0, align 4
@MG_SOCK_STRINGIFY_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_sock_addr_to_str(%union.socket_address* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.socket_address*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %union.socket_address* %0, %union.socket_address** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %8, align 8
  %18 = icmp ule i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %4
  store i32 0, i32* %5, align 4
  br label %92

20:                                               ; preds = %16
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @memset(i8* %21, i32 0, i64 %22)
  store i32 0, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @MG_SOCK_STRINGIFY_IP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %20
  %29 = load %union.socket_address*, %union.socket_address** %6, align 8
  %30 = bitcast %union.socket_address* %29 to %struct.TYPE_6__*
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @inet_ntoa(i32 %32)
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %28
  %37 = load i8*, i8** %7, align 8
  %38 = load %union.socket_address*, %union.socket_address** %6, align 8
  %39 = bitcast %union.socket_address* %38 to %struct.TYPE_6__*
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @inet_ntoa(i32 %41)
  %43 = load i64, i64* %8, align 8
  %44 = sub i64 %43, 1
  %45 = call i32 @strncpy(i8* %37, i8* %42, i64 %44)
  br label %47

46:                                               ; preds = %28
  br label %90

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %20
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @MG_SOCK_STRINGIFY_PORT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %87

53:                                               ; preds = %48
  %54 = load %union.socket_address*, %union.socket_address** %6, align 8
  %55 = bitcast %union.socket_address* %54 to %struct.TYPE_6__*
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ntohs(i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @MG_SOCK_STRINGIFY_IP, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %53
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @strlen(i8* %64)
  store i32 %65, i32* %13, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i64, i64* %8, align 8
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = sub i64 %70, %73
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %79 = load i32, i32* %12, align 4
  %80 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %69, i64 %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %78, i32 %79)
  br label %86

81:                                               ; preds = %53
  %82 = load i8*, i8** %7, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %82, i64 %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %81, %63
  br label %87

87:                                               ; preds = %86, %48
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @strlen(i8* %88)
  store i32 %89, i32* %5, align 4
  br label %92

90:                                               ; preds = %46
  %91 = load i8*, i8** %7, align 8
  store i8 0, i8* %91, align 1
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %87, %19
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
