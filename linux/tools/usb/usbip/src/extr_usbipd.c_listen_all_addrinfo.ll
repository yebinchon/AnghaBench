; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbipd.c_listen_all_addrinfo.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbipd.c_listen_all_addrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo* }

@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_MAXSERV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"opening %s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"socket: %s: %d (%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"bind: %s: %d (%s)\00", align 1
@SOMAXCONN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"listen: %s: %d (%s)\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"listening on %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.addrinfo*, i32*, i32)* @listen_all_addrinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @listen_all_addrinfo(%struct.addrinfo* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.addrinfo*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.addrinfo* %0, %struct.addrinfo** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @NI_MAXHOST, align 4
  %15 = load i32, i32* @NI_MAXSERV, align 4
  %16 = add nsw i32 %14, %15
  %17 = add nsw i32 %16, 2
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  store %struct.addrinfo* %22, %struct.addrinfo** %7, align 8
  br label %23

23:                                               ; preds = %99, %3
  %24 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %25 = icmp ne %struct.addrinfo* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i1 [ false, %23 ], [ %29, %26 ]
  br i1 %31, label %32, label %103

32:                                               ; preds = %30
  %33 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @addrinfo_to_text(%struct.addrinfo* %33, i8* %21, i64 %34)
  %36 = call i32 @dbg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %21)
  %37 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %38 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %41 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %44 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @socket(i32 %39, i32 %42, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %32
  %50 = load i32, i32* @errno, align 4
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 @strerror(i32 %51)
  %53 = call i32 @err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %21, i32 %50, i32 %52)
  br label %99

54:                                               ; preds = %32
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @usbip_net_set_reuseaddr(i32 %55)
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @usbip_net_set_nodelay(i32 %57)
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @usbip_net_set_v6only(i32 %59)
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %63 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %66 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @bind(i32 %61, i32 %64, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %54
  %72 = load i32, i32* @errno, align 4
  %73 = load i32, i32* @errno, align 4
  %74 = call i32 @strerror(i32 %73)
  %75 = call i32 @err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %21, i32 %72, i32 %74)
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @close(i32 %76)
  br label %99

78:                                               ; preds = %54
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @SOMAXCONN, align 4
  %81 = call i32 @listen(i32 %79, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load i32, i32* @errno, align 4
  %86 = load i32, i32* @errno, align 4
  %87 = call i32 @strerror(i32 %86)
  %88 = call i32 @err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %21, i32 %85, i32 %87)
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @close(i32 %89)
  br label %99

91:                                               ; preds = %78
  %92 = call i32 @info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %21)
  %93 = load i32, i32* %13, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32 %93, i32* %98, align 4
  br label %99

99:                                               ; preds = %91, %84, %71, %49
  %100 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %101 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %100, i32 0, i32 5
  %102 = load %struct.addrinfo*, %struct.addrinfo** %101, align 8
  store %struct.addrinfo* %102, %struct.addrinfo** %7, align 8
  br label %23

103:                                              ; preds = %30
  %104 = load i32, i32* %9, align 4
  %105 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %105)
  ret i32 %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @addrinfo_to_text(%struct.addrinfo*, i8*, i64) #2

declare dso_local i32 @dbg(i8*, i8*) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @err(i8*, i8*, i32, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @usbip_net_set_reuseaddr(i32) #2

declare dso_local i32 @usbip_net_set_nodelay(i32) #2

declare dso_local i32 @usbip_net_set_v6only(i32) #2

declare dso_local i32 @bind(i32, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @listen(i32, i32) #2

declare dso_local i32 @info(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
