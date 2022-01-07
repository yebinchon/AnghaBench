; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_lookuphost.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_lookuphost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32 }

@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@NI_MAXSERV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EAI_SYSTEM = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"getaddrinfo(): %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"getaddrinfo()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.addrinfo* (i8*, i32)* @lookuphost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.addrinfo* @lookuphost(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca %struct.addrinfo, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.addrinfo* null, %struct.addrinfo** %5, align 8
  %10 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 0
  %11 = load i32, i32* @SOCK_STREAM, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 1
  %13 = load i32, i32* @IPPROTO_TCP, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 2
  %15 = load i32, i32* @AF_UNSPEC, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* @NI_MAXSERV, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load i32, i32* @NI_MAXSERV, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @snprintf(i8* %19, i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @getaddrinfo(i8* %23, i8* %19, %struct.addrinfo* %6, %struct.addrinfo** %5)
  store i32 %24, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %2
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @EAI_SYSTEM, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* @stderr, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i8* @gai_strerror(i32 %32)
  %34 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  br label %37

35:                                               ; preds = %26
  %36 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %40 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %40)
  ret %struct.addrinfo* %39
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i8* @gai_strerror(i32) #2

declare dso_local i32 @perror(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
