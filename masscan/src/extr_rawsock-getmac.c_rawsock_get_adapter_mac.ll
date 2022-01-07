; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rawsock-getmac.c_rawsock_get_adapter_mac.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rawsock-getmac.c_rawsock_get_adapter_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@IFNAMSIZ = common dso_local global i32 0, align 4
@SIOCGIFHWADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ioctl\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"if:%s: type=ethernet(1)\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"if:%s: type=0x%04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"%s: creating fake address\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rawsock_get_adapter_mac(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifreq, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @AF_INET, align 4
  %9 = load i32, i32* @SOCK_STREAM, align 4
  %10 = call i32 @socket(i32 %8, i32 %9, i32 0)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %66

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IFNAMSIZ, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @strcpy_s(i32 %17, i32 %18, i8* %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SIOCGIFHWADDR, align 4
  %23 = bitcast %struct.ifreq* %7 to i8*
  %24 = call i32 @ioctl(i32 %21, i32 %22, i8* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %66

29:                                               ; preds = %15
  %30 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %37 [
    i32 1, label %34
  ]

34:                                               ; preds = %29
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 (i32, i8*, i8*, ...) @LOG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  br label %44

37:                                               ; preds = %29
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, i8*, ...) @LOG(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %38, i32 %42)
  br label %44

44:                                               ; preds = %37, %34
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @memcpy(i8* %45, i32 %49, i32 6)
  %51 = load i8*, i8** %4, align 8
  %52 = call i64 @memcmp(i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 65534
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 (i32, i8*, i8*, ...) @LOG(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %61)
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 5
  store i8 1, i8* %64, align 1
  br label %65

65:                                               ; preds = %60, %54, %44
  br label %66

66:                                               ; preds = %65, %27, %13
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @close(i32 %67)
  ret i32 0
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @strcpy_s(i32, i32, i8*) #1

declare dso_local i32 @ioctl(i32, i32, i8*) #1

declare dso_local i32 @LOG(i32, i8*, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
