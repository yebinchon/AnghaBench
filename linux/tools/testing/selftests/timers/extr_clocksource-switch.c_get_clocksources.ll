; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_clocksource-switch.c_get_clocksources.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_clocksource-switch.c_get_clocksources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [67 x i8] c"/sys/devices/system/clocksource/clocksource0/available_clocksource\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_clocksources([30 x i8]* %0) #0 {
  %2 = alloca [30 x i8]*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [512 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store [30 x i8]* %0, [30 x i8]** %2, align 8
  %9 = load i32, i32* @O_RDONLY, align 4
  %10 = call i32 @open(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %13 = call i64 @read(i32 %11, i8* %12, i32 512)
  store i64 %13, i64* %5, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @close(i32 %14)
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %25, %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 10
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load [30 x i8]*, [30 x i8]** %2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [30 x i8], [30 x i8]* %20, i64 %22
  %24 = getelementptr inbounds [30 x i8], [30 x i8]* %23, i64 0, i64 0
  store i8 0, i8* %24, align 1
  br label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %16

28:                                               ; preds = %16
  %29 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  store i8* %29, i8** %7, align 8
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %61, %28
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = load i64, i64* %5, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %74

38:                                               ; preds = %30
  %39 = load i8*, i8** %7, align 8
  store i8* %39, i8** %8, align 8
  br label %40

40:                                               ; preds = %58, %38
  %41 = load i8*, i8** %8, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 32
  br i1 %44, label %45, label %61

45:                                               ; preds = %40
  %46 = load i8*, i8** %8, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 10
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %61

51:                                               ; preds = %45
  %52 = load i8*, i8** %8, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %61

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %8, align 8
  br label %40

61:                                               ; preds = %56, %50, %40
  %62 = load i8*, i8** %8, align 8
  store i8 0, i8* %62, align 1
  %63 = load [30 x i8]*, [30 x i8]** %2, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [30 x i8], [30 x i8]* %63, i64 %65
  %67 = getelementptr inbounds [30 x i8], [30 x i8]* %66, i64 0, i64 0
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @strcpy(i8* %67, i8* %68)
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  store i8* %71, i8** %7, align 8
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %30

74:                                               ; preds = %30
  %75 = load i32, i32* %4, align 4
  %76 = sub nsw i32 %75, 1
  ret i32 %76
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
