; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/utils/rssileds/src/extr_rssileds.c_set_led.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/utils/rssileds/src/extr_rssileds.c_set_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led = type { i8, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_led(%struct.led* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.led*, align 8
  %5 = alloca i8, align 1
  %6 = alloca [8 x i8], align 1
  store %struct.led* %0, %struct.led** %4, align 8
  store i8 %1, i8* %5, align 1
  %7 = load %struct.led*, %struct.led** %4, align 8
  %8 = icmp ne %struct.led* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %50

10:                                               ; preds = %2
  %11 = load %struct.led*, %struct.led** %4, align 8
  %12 = getelementptr inbounds %struct.led, %struct.led* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i32 -1, i32* %3, align 4
  br label %50

16:                                               ; preds = %10
  %17 = load %struct.led*, %struct.led** %4, align 8
  %18 = getelementptr inbounds %struct.led, %struct.led* %17, i32 0, i32 0
  %19 = load i8, i8* %18, align 4
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* %5, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %50

25:                                               ; preds = %16
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %27 = load i8, i8* %5, align 1
  %28 = call i32 @snprintf(i8* %26, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 zeroext %27)
  %29 = load %struct.led*, %struct.led** %4, align 8
  %30 = getelementptr inbounds %struct.led, %struct.led* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @rewind(i32 %31)
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %35 = call i32 @strlen(i8* %34)
  %36 = load %struct.led*, %struct.led** %4, align 8
  %37 = getelementptr inbounds %struct.led, %struct.led* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @fwrite(i8* %33, i32 1, i32 %35, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %25
  store i32 -2, i32* %3, align 4
  br label %50

42:                                               ; preds = %25
  %43 = load %struct.led*, %struct.led** %4, align 8
  %44 = getelementptr inbounds %struct.led, %struct.led* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @fflush(i32 %45)
  %47 = load i8, i8* %5, align 1
  %48 = load %struct.led*, %struct.led** %4, align 8
  %49 = getelementptr inbounds %struct.led, %struct.led* %48, i32 0, i32 0
  store i8 %47, i8* %49, align 4
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %42, %41, %24, %15, %9
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 zeroext) #1

declare dso_local i32 @rewind(i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
