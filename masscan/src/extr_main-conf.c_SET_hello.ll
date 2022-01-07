; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_hello.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Masscan = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [13 x i8] c"hello = ssl\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"hello = smbv1\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"hello = http\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ssl\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"smbv1\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"FAIL: %s: unknown hello type\0A\00", align 1
@CONF_ERR = common dso_local global i32 0, align 4
@CONF_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Masscan*, i8*, i8*)* @SET_hello to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SET_hello(%struct.Masscan* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Masscan*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.Masscan* %0, %struct.Masscan** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i32 @UNUSEDPARM(i8* %8)
  %10 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %11 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %50

14:                                               ; preds = %3
  %15 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %16 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %21 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %49

25:                                               ; preds = %14
  %26 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %27 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %32 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %48

36:                                               ; preds = %25
  %37 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %38 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %43 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %41, %36
  br label %48

48:                                               ; preds = %47, %30
  br label %49

49:                                               ; preds = %48, %19
  store i32 0, i32* %4, align 4
  br label %80

50:                                               ; preds = %3
  %51 = load i8*, i8** %7, align 8
  %52 = call i64 @EQUALS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %56 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  br label %78

57:                                               ; preds = %50
  %58 = load i8*, i8** %7, align 8
  %59 = call i64 @EQUALS(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %63 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  br label %77

64:                                               ; preds = %57
  %65 = load i8*, i8** %7, align 8
  %66 = call i64 @EQUALS(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %70 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %69, i32 0, i32 2
  store i32 1, i32* %70, align 8
  br label %76

71:                                               ; preds = %64
  %72 = load i32, i32* @stderr, align 4
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %73)
  %75 = load i32, i32* @CONF_ERR, align 4
  store i32 %75, i32* %4, align 4
  br label %80

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %61
  br label %78

78:                                               ; preds = %77, %54
  %79 = load i32, i32* @CONF_OK, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %71, %49
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @UNUSEDPARM(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @EQUALS(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
