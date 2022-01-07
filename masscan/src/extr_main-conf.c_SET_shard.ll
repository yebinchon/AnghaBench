; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_shard.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_shard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Masscan = type { %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"shard = %u/%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"FAIL: shard index can't be zero\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"hint   it goes like 1/4 2/4 3/4 4/4\0A\00", align 1
@CONF_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"FAIL: shard spec is wrong\0A\00", align 1
@CONF_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Masscan*, i8*, i8*)* @SET_shard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SET_shard(%struct.Masscan* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Masscan*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.Masscan* %0, %struct.Masscan** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @UNUSEDPARM(i8* %10)
  %12 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %13 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %3
  %17 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %18 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %24 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %33, label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %30 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %28, %22
  %34 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %35 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %38 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %42 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @fprintf(i64 %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %44)
  br label %46

46:                                               ; preds = %33, %28
  store i32 0, i32* %4, align 4
  br label %111

47:                                               ; preds = %3
  br label %48

48:                                               ; preds = %53, %47
  %49 = load i8*, i8** %7, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @isdigit(i8 signext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load i32, i32* %8, align 4
  %55 = mul i32 %54, 10
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %7, align 8
  %58 = load i8, i8* %56, align 1
  %59 = sext i8 %58 to i32
  %60 = add i32 %55, %59
  %61 = sub i32 %60, 48
  store i32 %61, i32* %8, align 4
  br label %48

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %68, %62
  %64 = load i8*, i8** %7, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @ispunct(i8 signext %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %7, align 8
  br label %63

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %77, %71
  %73 = load i8*, i8** %7, align 8
  %74 = load i8, i8* %73, align 1
  %75 = call i64 @isdigit(i8 signext %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load i32, i32* %9, align 4
  %79 = mul i32 %78, 10
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %7, align 8
  %82 = load i8, i8* %80, align 1
  %83 = sext i8 %82 to i32
  %84 = add i32 %79, %83
  %85 = sub i32 %84, 48
  store i32 %85, i32* %9, align 4
  br label %72

86:                                               ; preds = %72
  %87 = load i32, i32* %8, align 4
  %88 = icmp ult i32 %87, 1
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %91 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* @CONF_ERR, align 4
  store i32 %92, i32* %4, align 4
  br label %111

93:                                               ; preds = %86
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ugt i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %99 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* @CONF_ERR, align 4
  store i32 %100, i32* %4, align 4
  br label %111

101:                                              ; preds = %93
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %104 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %108 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 4
  %110 = load i32, i32* @CONF_OK, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %101, %97, %89, %46
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @UNUSEDPARM(i8*) #1

declare dso_local i32 @fprintf(i64, i8*, i32, i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @ispunct(i8 signext) #1

declare dso_local i32 @LOG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
