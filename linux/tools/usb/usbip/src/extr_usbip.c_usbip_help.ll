; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip.c_usbip_help.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip.c_usbip_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i8*, i8*, i32 (...)* }

@cmds = common dso_local global %struct.command* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"  %-10s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @usbip_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbip_help(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %56

10:                                               ; preds = %2
  %11 = load i8**, i8*** %4, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i32 1
  store i8** %12, i8*** %4, align 8
  %13 = icmp ne i8** %11, null
  br i1 %13, label %14, label %56

14:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %52, %14
  %16 = load %struct.command*, %struct.command** @cmds, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.command, %struct.command* %16, i64 %18
  %20 = getelementptr inbounds %struct.command, %struct.command* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %55

23:                                               ; preds = %15
  %24 = load %struct.command*, %struct.command** @cmds, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.command, %struct.command* %24, i64 %26
  %28 = getelementptr inbounds %struct.command, %struct.command* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8**, i8*** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strcmp(i8* %29, i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %23
  %36 = load %struct.command*, %struct.command** @cmds, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.command, %struct.command* %36, i64 %38
  %40 = getelementptr inbounds %struct.command, %struct.command* %39, i32 0, i32 2
  %41 = load i32 (...)*, i32 (...)** %40, align 8
  %42 = icmp ne i32 (...)* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load %struct.command*, %struct.command** @cmds, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.command, %struct.command* %44, i64 %46
  %48 = getelementptr inbounds %struct.command, %struct.command* %47, i32 0, i32 2
  %49 = load i32 (...)*, i32 (...)** %48, align 8
  %50 = call i32 (...) %49()
  br label %84

51:                                               ; preds = %35, %23
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %15

55:                                               ; preds = %15
  store i32 -1, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %10, %2
  %57 = call i32 (...) @usbip_usage()
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.command*, %struct.command** @cmds, align 8
  store %struct.command* %59, %struct.command** %5, align 8
  br label %60

60:                                               ; preds = %79, %56
  %61 = load %struct.command*, %struct.command** %5, align 8
  %62 = getelementptr inbounds %struct.command, %struct.command* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %82

65:                                               ; preds = %60
  %66 = load %struct.command*, %struct.command** %5, align 8
  %67 = getelementptr inbounds %struct.command, %struct.command* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.command*, %struct.command** %5, align 8
  %72 = getelementptr inbounds %struct.command, %struct.command* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.command*, %struct.command** %5, align 8
  %75 = getelementptr inbounds %struct.command, %struct.command* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %73, i8* %76)
  br label %78

78:                                               ; preds = %70, %65
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.command*, %struct.command** %5, align 8
  %81 = getelementptr inbounds %struct.command, %struct.command* %80, i32 1
  store %struct.command* %81, %struct.command** %5, align 8
  br label %60

82:                                               ; preds = %60
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %43
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @usbip_usage(...) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
