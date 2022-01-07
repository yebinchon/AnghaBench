; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_myfatfs.c_myfatfs_mode2flag.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_myfatfs.c_myfatfs_mode2flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@FA_WRITE = common dso_local global i32 0, align 4
@FA_CREATE_ALWAYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@FA_READ = common dso_local global i32 0, align 4
@FA_OPEN_EXISTING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@FA_OPEN_ALWAYS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @myfatfs_mode2flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myfatfs_mode2flag(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @strlen(i8* %4)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %35

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strcmp(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i32, i32* @FA_WRITE, align 4
  %13 = load i32, i32* @FA_CREATE_ALWAYS, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %2, align 4
  br label %77

15:                                               ; preds = %7
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @FA_READ, align 4
  %21 = load i32, i32* @FA_OPEN_EXISTING, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %2, align 4
  br label %77

23:                                               ; preds = %15
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* @FA_WRITE, align 4
  %29 = load i32, i32* @FA_OPEN_ALWAYS, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %2, align 4
  br label %77

31:                                               ; preds = %23
  %32 = load i32, i32* @FA_READ, align 4
  %33 = load i32, i32* @FA_OPEN_EXISTING, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %2, align 4
  br label %77

35:                                               ; preds = %1
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %73

39:                                               ; preds = %35
  %40 = load i8*, i8** %3, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i32, i32* @FA_READ, align 4
  %45 = load i32, i32* @FA_WRITE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @FA_OPEN_EXISTING, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %2, align 4
  br label %77

49:                                               ; preds = %39
  %50 = load i8*, i8** %3, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* @FA_READ, align 4
  %55 = load i32, i32* @FA_WRITE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @FA_CREATE_ALWAYS, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %2, align 4
  br label %77

59:                                               ; preds = %49
  %60 = load i8*, i8** %3, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32, i32* @FA_READ, align 4
  %65 = load i32, i32* @FA_WRITE, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @FA_OPEN_ALWAYS, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %2, align 4
  br label %77

69:                                               ; preds = %59
  %70 = load i32, i32* @FA_READ, align 4
  %71 = load i32, i32* @FA_OPEN_EXISTING, align 4
  %72 = or i32 %70, %71
  store i32 %72, i32* %2, align 4
  br label %77

73:                                               ; preds = %35
  %74 = load i32, i32* @FA_READ, align 4
  %75 = load i32, i32* @FA_OPEN_EXISTING, align 4
  %76 = or i32 %74, %75
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %69, %63, %53, %43, %31, %27, %19, %11
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
