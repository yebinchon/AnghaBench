; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_output_noshow.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_output_noshow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Masscan = type { %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"output-noshow = %s%s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"open,\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"closed,\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"host,\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"FAIL: unknown 'noshow' spec: %.*s\0A\00", align 1
@CONF_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Masscan*, i8*, i8*)* @SET_output_noshow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SET_output_noshow(%struct.Masscan* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Masscan*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.Masscan* %0, %struct.Masscan** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @UNUSEDPARM(i8* %10)
  %12 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %13 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %3
  %17 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %18 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %16
  %22 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %23 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %26 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %33 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %34 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %41 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %42 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %49 = call i32 @fprintf(i64 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %40, i8* %48)
  br label %50

50:                                               ; preds = %21, %16
  store i32 0, i32* %4, align 4
  br label %130

51:                                               ; preds = %3
  br label %52

52:                                               ; preds = %127, %51
  %53 = load i8*, i8** %7, align 8
  store i8* %53, i8** %8, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @INDEX_OF(i8* %54, i8 signext 44)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %128

59:                                               ; preds = %52
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i64 @EQUALSx(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %66 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  br label %114

68:                                               ; preds = %59
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i64 @EQUALSx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i64 @EQUALSx(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73, %68
  %79 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %80 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  br label %113

82:                                               ; preds = %73
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i64 @EQUALSx(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %89 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  br label %112

91:                                               ; preds = %82
  %92 = load i8*, i8** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i64 @EQUALSx(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %91
  %97 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %98 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  store i64 0, i64* %99, align 8
  %100 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %101 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %104 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store i64 0, i64* %105, align 8
  br label %111

106:                                              ; preds = %91
  %107 = load i32, i32* %9, align 4
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %107, i8* %108)
  %110 = call i32 @exit(i32 1) #3
  unreachable

111:                                              ; preds = %96
  br label %112

112:                                              ; preds = %111, %87
  br label %113

113:                                              ; preds = %112, %78
  br label %114

114:                                              ; preds = %113, %64
  %115 = load i32, i32* %9, align 4
  %116 = load i8*, i8** %7, align 8
  %117 = zext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %7, align 8
  br label %119

119:                                              ; preds = %124, %114
  %120 = load i8*, i8** %7, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 44
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i8*, i8** %7, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %7, align 8
  br label %119

127:                                              ; preds = %119
  br label %52

128:                                              ; preds = %58
  %129 = load i32, i32* @CONF_OK, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %128, %50
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @UNUSEDPARM(i8*) #1

declare dso_local i32 @fprintf(i64, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @INDEX_OF(i8*, i8 signext) #1

declare dso_local i64 @EQUALSx(i8*, i8*, i32) #1

declare dso_local i32 @LOG(i32, i8*, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
