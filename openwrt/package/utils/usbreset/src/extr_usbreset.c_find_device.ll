; ModuleID = '/home/carl/AnghaBench/openwrt/package/utils/usbreset/src/extr_usbreset.c_find_device.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/utils/usbreset/src/extr_usbreset.c_find_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbentry = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"/sys/bus/usb/devices\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usbentry* @find_device(i32* %0, i32* %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.usbentry*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.usbentry*, align 8
  %14 = alloca %struct.usbentry*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = call i32* @opendir(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %12, align 8
  store %struct.usbentry* null, %struct.usbentry** %14, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store %struct.usbentry* null, %struct.usbentry** %6, align 8
  br label %75

19:                                               ; preds = %5
  br label %20

20:                                               ; preds = %70, %19
  %21 = load i32*, i32** %12, align 8
  %22 = call %struct.usbentry* @parse_devlist(i32* %21)
  store %struct.usbentry* %22, %struct.usbentry** %13, align 8
  %23 = icmp ne %struct.usbentry* %22, null
  br i1 %23, label %24, label %71

24:                                               ; preds = %20
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load %struct.usbentry*, %struct.usbentry** %13, align 8
  %29 = getelementptr inbounds %struct.usbentry, %struct.usbentry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.usbentry*, %struct.usbentry** %13, align 8
  %36 = getelementptr inbounds %struct.usbentry, %struct.usbentry* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %68, label %41

41:                                               ; preds = %34, %27, %24
  %42 = load i32*, i32** %9, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = load %struct.usbentry*, %struct.usbentry** %13, align 8
  %46 = getelementptr inbounds %struct.usbentry, %struct.usbentry* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load %struct.usbentry*, %struct.usbentry** %13, align 8
  %53 = getelementptr inbounds %struct.usbentry, %struct.usbentry* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %68, label %58

58:                                               ; preds = %51, %44, %41
  %59 = load i8*, i8** %11, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load %struct.usbentry*, %struct.usbentry** %13, align 8
  %63 = getelementptr inbounds %struct.usbentry, %struct.usbentry* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @strcasecmp(i32 %64, i8* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %61, %51, %34
  %69 = load %struct.usbentry*, %struct.usbentry** %13, align 8
  store %struct.usbentry* %69, %struct.usbentry** %14, align 8
  br label %71

70:                                               ; preds = %61, %58
  br label %20

71:                                               ; preds = %68, %20
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @closedir(i32* %72)
  %74 = load %struct.usbentry*, %struct.usbentry** %14, align 8
  store %struct.usbentry* %74, %struct.usbentry** %6, align 8
  br label %75

75:                                               ; preds = %71, %18
  %76 = load %struct.usbentry*, %struct.usbentry** %6, align 8
  ret %struct.usbentry* %76
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.usbentry* @parse_devlist(i32*) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
