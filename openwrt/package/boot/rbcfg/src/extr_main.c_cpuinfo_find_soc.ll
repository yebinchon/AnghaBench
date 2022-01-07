; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/rbcfg/src/extr_main.c_cpuinfo_find_soc.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/rbcfg/src/extr_main.c_cpuinfo_find_soc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@CPUINFO_BUFSIZE = common dso_local global i32 0, align 4
@RBCFG_SOC_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"/proc/cpuinfo\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"system type\00", align 1
@rbcfg_socs = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cpuinfo_find_soc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpuinfo_find_soc() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @CPUINFO_BUFSIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %2, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %3, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @RBCFG_SOC_UNKNOWN, align 4
  store i32 %13, i32* %8, align 4
  %14 = call i32* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %14, i32** %1, align 8
  %15 = load i32*, i32** %1, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %0
  br label %67

18:                                               ; preds = %0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %19

19:                                               ; preds = %31, %18
  %20 = load i32, i32* @CPUINFO_BUFSIZE, align 4
  %21 = load i32*, i32** %1, align 8
  %22 = call i64 @fgets(i8* %12, i32 %20, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = call i32 @strncmp(i8* %12, i8* %25, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32 1, i32* %7, align 4
  br label %32

31:                                               ; preds = %24
  br label %19

32:                                               ; preds = %30, %19
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @fclose(i32* %33)
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %67

38:                                               ; preds = %32
  %39 = call i8* @strchr(i8* %12, i8 signext 58)
  store i8* %39, i8** %4, align 8
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %63, %38
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rbcfg_socs, align 8
  %43 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %42)
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %40
  %46 = load i8*, i8** %4, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rbcfg_socs, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @strstr(i8* %46, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %45
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rbcfg_socs, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %8, align 4
  br label %66

62:                                               ; preds = %45
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %40

66:                                               ; preds = %55, %40
  br label %67

67:                                               ; preds = %66, %37, %17
  %68 = load i32, i32* %8, align 4
  %69 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %69)
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #2

declare dso_local i64 @strstr(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
