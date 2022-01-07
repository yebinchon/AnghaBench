; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_read-service-probes.c_nmapserviceprobes_print_ports.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_read-service-probes.c_nmapserviceprobes_print_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RangeList = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"T:\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"U:\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"-%u\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.RangeList*, i32*, i8*, i32)* @nmapserviceprobes_print_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nmapserviceprobes_print_ports(%struct.RangeList* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.RangeList*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.RangeList* %0, %struct.RangeList** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.RangeList*, %struct.RangeList** %5, align 8
  %14 = icmp eq %struct.RangeList* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = load %struct.RangeList*, %struct.RangeList** %5, align 8
  %17 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %4
  br label %122

21:                                               ; preds = %15
  %22 = load i32*, i32** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %116, %21
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.RangeList*, %struct.RangeList** %5, align 8
  %28 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %119

31:                                               ; preds = %25
  %32 = load %struct.RangeList*, %struct.RangeList** %5, align 8
  %33 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  %40 = load %struct.RangeList*, %struct.RangeList** %5, align 8
  %41 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp sle i32 130, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %31
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 129
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 130, i32* %10, align 4
  br label %63

54:                                               ; preds = %50, %31
  %55 = load i32, i32* %11, align 4
  %56 = icmp sle i32 129, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 131
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 129, i32* %10, align 4
  br label %62

61:                                               ; preds = %57, %54
  store i32 131, i32* %10, align 4
  br label %62

62:                                               ; preds = %61, %60
  br label %63

63:                                               ; preds = %62, %53
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %12, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 (i32*, i8*, ...) @fprintf(i32* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %63
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %75
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %10, align 4
  switch i32 %81, label %103 [
    i32 130, label %82
    i32 129, label %85
    i32 131, label %88
    i32 133, label %91
    i32 132, label %94
    i32 134, label %97
    i32 128, label %100
  ]

82:                                               ; preds = %79
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 (i32*, i8*, ...) @fprintf(i32* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %103

85:                                               ; preds = %79
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 (i32*, i8*, ...) @fprintf(i32* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %103

88:                                               ; preds = %79
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 (i32*, i8*, ...) @fprintf(i32* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %103

91:                                               ; preds = %79
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 (i32*, i8*, ...) @fprintf(i32* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %103

94:                                               ; preds = %79
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %103

97:                                               ; preds = %79
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 (i32*, i8*, ...) @fprintf(i32* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %103

100:                                              ; preds = %79
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 (i32*, i8*, ...) @fprintf(i32* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %103

103:                                              ; preds = %79, %100, %97, %94, %91, %88, %85, %82
  br label %104

104:                                              ; preds = %103, %75
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32 (i32*, i8*, ...) @fprintf(i32* %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load i32*, i32** %6, align 8
  %113 = load i32, i32* %12, align 4
  %114 = call i32 (i32*, i8*, ...) @fprintf(i32* %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %111, %104
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %9, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %25

119:                                              ; preds = %25
  %120 = load i32*, i32** %6, align 8
  %121 = call i32 (i32*, i8*, ...) @fprintf(i32* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %20
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
