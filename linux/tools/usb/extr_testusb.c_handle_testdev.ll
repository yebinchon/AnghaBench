; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/extr_testusb.c_handle_testdev.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/extr_testusb.c_handle_testdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testdev = type { i8*, i32, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"can't open dev file r/w\00", align 1
@TEST_CASES = common dso_local global i32 0, align 4
@USBTEST_REQUEST = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"error %d\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%s test %d --> %d (%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%s test %d, %4d.%.06d secs\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @handle_testdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @handle_testdev(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.testdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [80 x i8], align 16
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.testdev*
  store %struct.testdev* %11, %struct.testdev** %4, align 8
  %12 = load %struct.testdev*, %struct.testdev** %4, align 8
  %13 = getelementptr inbounds %struct.testdev, %struct.testdev* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* @O_RDWR, align 4
  %16 = call i32 @open(i8* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %114

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %109, %20
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %101, %21
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @TEST_CASES, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %104

26:                                               ; preds = %22
  %27 = load %struct.testdev*, %struct.testdev** %4, align 8
  %28 = getelementptr inbounds %struct.testdev, %struct.testdev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.testdev*, %struct.testdev** %4, align 8
  %33 = getelementptr inbounds %struct.testdev, %struct.testdev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %101

38:                                               ; preds = %31, %26
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.testdev*, %struct.testdev** %4, align 8
  %41 = getelementptr inbounds %struct.testdev, %struct.testdev* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.testdev*, %struct.testdev** %4, align 8
  %45 = getelementptr inbounds %struct.testdev, %struct.testdev* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @USBTEST_REQUEST, align 4
  %48 = load %struct.testdev*, %struct.testdev** %4, align 8
  %49 = getelementptr inbounds %struct.testdev, %struct.testdev* %48, i32 0, i32 3
  %50 = call i32 @usbdev_ioctl(i32 %43, i32 %46, i32 %47, %struct.TYPE_4__* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %38
  %54 = load i32, i32* @errno, align 4
  %55 = load i32, i32* @EOPNOTSUPP, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %101

58:                                               ; preds = %53, %38
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %58
  %62 = load i32, i32* @errno, align 4
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* @errno, align 4
  %64 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %65 = call i64 @strerror_r(i32 %63, i8* %64, i32 80)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @snprintf(i8* %68, i32 80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* @errno, align 4
  br label %72

72:                                               ; preds = %67, %61
  %73 = load %struct.testdev*, %struct.testdev** %4, align 8
  %74 = getelementptr inbounds %struct.testdev, %struct.testdev* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @errno, align 4
  %78 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %79 = call i32 (i8*, i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %75, i32 %76, i32 %77, i8* %78)
  br label %98

80:                                               ; preds = %58
  %81 = load %struct.testdev*, %struct.testdev** %4, align 8
  %82 = getelementptr inbounds %struct.testdev, %struct.testdev* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.testdev*, %struct.testdev** %4, align 8
  %86 = getelementptr inbounds %struct.testdev, %struct.testdev* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = load %struct.testdev*, %struct.testdev** %4, align 8
  %92 = getelementptr inbounds %struct.testdev, %struct.testdev* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = call i32 (i8*, i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %83, i32 %84, i32 %90, i32 %96)
  br label %98

98:                                               ; preds = %80, %72
  %99 = load i32, i32* @stdout, align 4
  %100 = call i32 @fflush(i32 %99)
  br label %101

101:                                              ; preds = %98, %57, %37
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %22

104:                                              ; preds = %22
  %105 = load %struct.testdev*, %struct.testdev** %4, align 8
  %106 = getelementptr inbounds %struct.testdev, %struct.testdev* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %21

110:                                              ; preds = %104
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @close(i32 %111)
  %113 = load i8*, i8** %3, align 8
  store i8* %113, i8** %2, align 8
  br label %114

114:                                              ; preds = %110, %18
  %115 = load i8*, i8** %2, align 8
  ret i8* %115
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @usbdev_ioctl(i32, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i64 @strerror_r(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
