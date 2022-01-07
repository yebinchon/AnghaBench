; ModuleID = '/home/carl/AnghaBench/php-src/ext/sockets/extr_sockaddr_conv.c_php_set_inet_addr.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/sockets/extr_sockaddr_conv.c_php_set_inet_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.in_addr = type { i32 }
%struct.hostent = type { i64, i32, i32* }

@MAXFQDNLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Host lookup failed\00", align 1
@h_errno = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@E_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"Host lookup failed: Non AF_INET domain returned on AF_INET socket\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @php_set_inet_addr(%struct.sockaddr_in* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.in_addr, align 4
  %9 = alloca %struct.hostent*, align 8
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @inet_aton(i8* %10, %struct.in_addr* %8)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  br label %55

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strlen(i8* %20)
  %22 = load i64, i64* @MAXFQDNLEN, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = call %struct.hostent* @php_network_gethostbyname(i8* %25)
  store %struct.hostent* %26, %struct.hostent** %9, align 8
  %27 = icmp ne %struct.hostent* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24, %19
  %29 = load i32*, i32** %7, align 8
  %30 = load i64, i64* @h_errno, align 8
  %31 = sub nsw i64 -10000, %30
  %32 = call i32 @PHP_SOCKET_ERROR(i32* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %31)
  store i32 0, i32* %4, align 4
  br label %56

33:                                               ; preds = %24
  %34 = load %struct.hostent*, %struct.hostent** %9, align 8
  %35 = getelementptr inbounds %struct.hostent, %struct.hostent* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AF_INET, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @E_WARNING, align 4
  %41 = call i32 @php_error_docref(i32* null, i32 %40, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %56

42:                                               ; preds = %33
  %43 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.hostent*, %struct.hostent** %9, align 8
  %47 = getelementptr inbounds %struct.hostent, %struct.hostent* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.hostent*, %struct.hostent** %9, align 8
  %52 = getelementptr inbounds %struct.hostent, %struct.hostent* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @memcpy(i32* %45, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %42, %13
  store i32 1, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %39, %28
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @inet_aton(i8*, %struct.in_addr*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.hostent* @php_network_gethostbyname(i8*) #1

declare dso_local i32 @PHP_SOCKET_ERROR(i32*, i8*, i64) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
