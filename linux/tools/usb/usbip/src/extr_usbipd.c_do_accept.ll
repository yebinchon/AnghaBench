; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbipd.c_do_accept.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbipd.c_do_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_MAXSERV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to accept connection\00", align 1
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"getnameinfo: %s\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"connection from %s:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @do_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_accept(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_storage, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 4, i32* %6, align 4
  %12 = load i32, i32* @NI_MAXHOST, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @NI_MAXSERV, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %19 = call i32 @memset(%struct.sockaddr_storage* %5, i32 0, i32 4)
  %20 = load i32, i32* %3, align 4
  %21 = bitcast %struct.sockaddr_storage* %5 to %struct.sockaddr*
  %22 = call i32 @accept(i32 %20, %struct.sockaddr* %21, i32* %6)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %45

27:                                               ; preds = %1
  %28 = bitcast %struct.sockaddr_storage* %5 to %struct.sockaddr*
  %29 = load i32, i32* %6, align 4
  %30 = trunc i64 %13 to i32
  %31 = trunc i64 %17 to i32
  %32 = load i32, i32* @NI_NUMERICHOST, align 4
  %33 = load i32, i32* @NI_NUMERICSERV, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @getnameinfo(%struct.sockaddr* %28, i32 %29, i8* %15, i32 %30, i8* %18, i32 %31, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @gai_strerror(i32 %39)
  %41 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %27
  %43 = call i32 (i8*, i8*, ...) @info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %15, i8* %18)
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %45

45:                                               ; preds = %42, %25
  %46 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #2

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #2

declare dso_local i32 @err(i8*, ...) #2

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @gai_strerror(i32) #2

declare dso_local i32 @info(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
