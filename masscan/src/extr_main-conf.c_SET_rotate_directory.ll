; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_rotate_directory.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_rotate_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Masscan = type { %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"rotate-dir = %s\0A\00", align 1
@CONF_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Masscan*, i8*, i8*)* @SET_rotate_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SET_rotate_directory(%struct.Masscan* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Masscan*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.Masscan* %0, %struct.Masscan** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @UNUSEDPARM(i8* %9)
  %11 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %12 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %3
  %16 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %17 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @memcmp(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 2)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %15
  %24 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %25 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23, %15
  %29 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %30 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %33 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @fprintf(i64 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %28, %23
  store i32 0, i32* %4, align 4
  br label %90

39:                                               ; preds = %3
  %40 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %41 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @strcpy_s(i8* %44, i32 8, i8* %45)
  %47 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %48 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %8, align 8
  br label %52

52:                                               ; preds = %81, %39
  %53 = load i8*, i8** %8, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %52
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 47
  br i1 %66, label %77, label %67

67:                                               ; preds = %57
  %68 = load i8*, i8** %8, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %68, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 47
  br label %77

77:                                               ; preds = %67, %57
  %78 = phi i1 [ true, %57 ], [ %76, %67 ]
  br label %79

79:                                               ; preds = %77, %52
  %80 = phi i1 [ false, %52 ], [ %78, %77 ]
  br i1 %80, label %81, label %88

81:                                               ; preds = %79
  %82 = load i8*, i8** %8, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @strlen(i8* %83)
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %82, i64 %86
  store i8 0, i8* %87, align 1
  br label %52

88:                                               ; preds = %79
  %89 = load i32, i32* @CONF_OK, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %38
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @UNUSEDPARM(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i64, i8*, i8*) #1

declare dso_local i32 @strcpy_s(i8*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
