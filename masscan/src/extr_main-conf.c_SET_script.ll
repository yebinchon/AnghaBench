; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_script.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Masscan = type { i32, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [13 x i8] c"script = %s\0A\00", align 1
@CONF_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Masscan*, i8*, i8*)* @SET_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SET_script(%struct.Masscan* %0, i8* %1, i8* %2) #0 {
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
  %11 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %3
  %15 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %16 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %22 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %20, %14
  %30 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %31 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29, %20
  %35 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %36 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %39 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @fprintf(i64 %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %34, %29
  store i32 0, i32* %4, align 4
  br label %78

44:                                               ; preds = %3
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %55 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %59

56:                                               ; preds = %47, %44
  %57 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %58 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %61 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %67 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @free(i8* %69)
  br label %71

71:                                               ; preds = %65, %59
  %72 = load i8*, i8** %7, align 8
  %73 = call i8* @strdup(i8* %72)
  %74 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %75 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i8* %73, i8** %76, align 8
  %77 = load i32, i32* @CONF_OK, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %71, %43
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @UNUSEDPARM(i8*) #1

declare dso_local i32 @fprintf(i64, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
