; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/utils/rssileds/src/extr_rssileds.c_init_led.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/utils/rssileds/src/extr_rssileds.c_init_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led = type { i8*, i32* }
%struct.stat = type { i32 }

@LEDS_BASEPATH = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"%s%s/brightness\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@LOG_CRIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"can't open LED %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_led(%struct.led** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.led**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.led*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct.led** %0, %struct.led*** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = load i8*, i8** @LEDS_BASEPATH, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = add nsw i32 %12, %14
  %16 = add nsw i32 %15, 12
  %17 = call i8* @calloc(i32 1, i32 %16)
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %73

21:                                               ; preds = %2
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** @LEDS_BASEPATH, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %24)
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @stat(i8* %26, %struct.stat* %7)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %70

31:                                               ; preds = %21
  %32 = load i8*, i8** %9, align 8
  %33 = call i32* @fopen(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %70

37:                                               ; preds = %31
  %38 = load i32*, i32** %10, align 8
  %39 = call i64 @ferror(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %67

42:                                               ; preds = %37
  %43 = call i8* @calloc(i32 16, i32 1)
  %44 = bitcast i8* %43 to %struct.led*
  store %struct.led* %44, %struct.led** %6, align 8
  %45 = load %struct.led*, %struct.led** %6, align 8
  %46 = icmp ne %struct.led* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %67

48:                                               ; preds = %42
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.led*, %struct.led** %6, align 8
  %51 = getelementptr inbounds %struct.led, %struct.led* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load %struct.led*, %struct.led** %6, align 8
  %54 = getelementptr inbounds %struct.led, %struct.led* %53, i32 0, i32 1
  store i32* %52, i32** %54, align 8
  %55 = load %struct.led*, %struct.led** %6, align 8
  %56 = load %struct.led**, %struct.led*** %4, align 8
  store %struct.led* %55, %struct.led** %56, align 8
  %57 = load %struct.led*, %struct.led** %6, align 8
  %58 = call i64 @set_led(%struct.led* %57, i32 255)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %67

61:                                               ; preds = %48
  %62 = load %struct.led*, %struct.led** %6, align 8
  %63 = call i64 @set_led(%struct.led* %62, i32 0)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %67

66:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %78

67:                                               ; preds = %65, %60, %47, %41
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @fclose(i32* %68)
  br label %70

70:                                               ; preds = %67, %36, %30
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @free(i8* %71)
  br label %73

73:                                               ; preds = %70, %20
  %74 = load i32, i32* @LOG_CRIT, align 4
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @syslog(i32 %74, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %75)
  %77 = load %struct.led**, %struct.led*** %4, align 8
  store %struct.led* null, %struct.led** %77, align 8
  store i32 -1, i32* %3, align 4
  br label %78

78:                                               ; preds = %73, %66
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i64 @set_led(%struct.led*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @syslog(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
