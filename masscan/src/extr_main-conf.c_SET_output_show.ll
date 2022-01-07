; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_output_show.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_SET_output_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Masscan = type { %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"output-show = %s%s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"open,\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"closed,\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"host,\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"FAIL: unknown 'show' spec: %.*s\0A\00", align 1
@CONF_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Masscan*, i8*, i8*)* @SET_output_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SET_output_show(%struct.Masscan* %0, i8* %1, i8* %2) #0 {
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
  br i1 %15, label %16, label %48

16:                                               ; preds = %3
  %17 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %18 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %16
  %22 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %23 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %26 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %32 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %33 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %39 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %40 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %46 = call i32 @fprintf(i64 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %38, i8* %45)
  br label %47

47:                                               ; preds = %21, %16
  store i32 0, i32* %4, align 4
  br label %127

48:                                               ; preds = %3
  br label %49

49:                                               ; preds = %124, %48
  %50 = load i8*, i8** %7, align 8
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @INDEX_OF(i8* %51, i8 signext 44)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %125

56:                                               ; preds = %49
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @EQUALSx(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %63 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  br label %111

65:                                               ; preds = %56
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @EQUALSx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i64 @EQUALSx(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70, %65
  %76 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %77 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  br label %110

79:                                               ; preds = %70
  %80 = load i8*, i8** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i64 @EQUALSx(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %86 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  store i32 1, i32* %87, align 8
  br label %109

88:                                               ; preds = %79
  %89 = load i8*, i8** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i64 @EQUALSx(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %95 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  %97 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %98 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  store i32 1, i32* %99, align 8
  %100 = load %struct.Masscan*, %struct.Masscan** %5, align 8
  %101 = getelementptr inbounds %struct.Masscan, %struct.Masscan* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i32 1, i32* %102, align 4
  br label %108

103:                                              ; preds = %88
  %104 = load i32, i32* %9, align 4
  %105 = load i8*, i8** %8, align 8
  %106 = call i32 @LOG(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %104, i8* %105)
  %107 = call i32 @exit(i32 1) #3
  unreachable

108:                                              ; preds = %93
  br label %109

109:                                              ; preds = %108, %84
  br label %110

110:                                              ; preds = %109, %75
  br label %111

111:                                              ; preds = %110, %61
  %112 = load i32, i32* %9, align 4
  %113 = load i8*, i8** %7, align 8
  %114 = zext i32 %112 to i64
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8* %115, i8** %7, align 8
  br label %116

116:                                              ; preds = %121, %111
  %117 = load i8*, i8** %7, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 44
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i8*, i8** %7, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %7, align 8
  br label %116

124:                                              ; preds = %116
  br label %49

125:                                              ; preds = %55
  %126 = load i32, i32* @CONF_OK, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %125, %47
  %128 = load i32, i32* %4, align 4
  ret i32 %128
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
