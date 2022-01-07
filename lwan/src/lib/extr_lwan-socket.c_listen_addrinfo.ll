; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-socket.c_listen_addrinfo.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-socket.c_listen_addrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_MAXSERV = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"getnameinfo: %s\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Listening on http://[%s]:%s\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Listening on http://%s:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.addrinfo*)* @listen_addrinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @listen_addrinfo(i32 %0, %struct.addrinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.addrinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.addrinfo* %1, %struct.addrinfo** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 (...) @get_backlog_size()
  %11 = call i64 @listen(i32 %9, i32 %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @lwan_status_critical_perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i32, i32* @NI_MAXHOST, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %5, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %20 = load i32, i32* @NI_MAXSERV, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  %23 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %24 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = trunc i64 %17 to i32
  %30 = trunc i64 %21 to i32
  %31 = load i32, i32* @NI_NUMERICHOST, align 4
  %32 = load i32, i32* @NI_NUMERICSERV, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @getnameinfo(i32 %25, i32 %28, i8* %19, i32 %29, i8* %22, i32 %30, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %15
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @gai_strerror(i32 %38)
  %40 = call i32 @lwan_status_critical(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %15
  %42 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %43 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AF_INET6, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = call i32 @lwan_status_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %19, i8* %22)
  br label %51

49:                                               ; preds = %41
  %50 = call i32 @lwan_status_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %19, i8* %22)
  br label %51

51:                                               ; preds = %49, %47
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @set_socket_flags(i32 %52)
  %54 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %54)
  ret i32 %53
}

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @get_backlog_size(...) #1

declare dso_local i32 @lwan_status_critical_perror(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @getnameinfo(i32, i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @lwan_status_critical(i8*, i32) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @lwan_status_info(i8*, i8*, i8*) #1

declare dso_local i32 @set_socket_flags(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
