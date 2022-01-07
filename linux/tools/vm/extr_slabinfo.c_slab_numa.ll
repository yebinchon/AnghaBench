; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_slab_numa.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_slab_numa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slabinfo = type { i8*, i32*, i32*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@highest_node = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"\0A%s: No NUMA information available.\0A\00", align 1
@skip_zero = common dso_local global i64 0, align 8
@line = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"\0A%-21s:\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"NUMA nodes\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Slab\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c" %4d\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"\0A----------------------\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"-----\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%-21s \00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"All slabs\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" %4s\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Partial slabs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slabinfo*, i32)* @slab_numa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slab_numa(%struct.slabinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.slabinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [20 x i8], align 16
  %7 = alloca [20 x i8], align 16
  store %struct.slabinfo* %0, %struct.slabinfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.slabinfo*, %struct.slabinfo** %3, align 8
  %9 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %123

14:                                               ; preds = %2
  %15 = load i32, i32* @highest_node, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = load %struct.slabinfo*, %struct.slabinfo** %3, align 8
  %19 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %123

22:                                               ; preds = %14
  %23 = load i64, i64* @skip_zero, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.slabinfo*, %struct.slabinfo** %3, align 8
  %27 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %123

31:                                               ; preds = %25, %22
  %32 = load i32, i32* @line, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %63, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %47, %34
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @highest_node, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %40

50:                                               ; preds = %40
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %58, %50
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @highest_node, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %52

61:                                               ; preds = %52
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %31
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %71

67:                                               ; preds = %63
  %68 = load %struct.slabinfo*, %struct.slabinfo** %3, align 8
  %69 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  br label %71

71:                                               ; preds = %67, %66
  %72 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), %66 ], [ %70, %67 ]
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %72)
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %90, %71
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @highest_node, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %74
  %79 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %80 = load %struct.slabinfo*, %struct.slabinfo** %3, align 8
  %81 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @store_size(i8* %79, i32 %86)
  %88 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %78
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %74

93:                                               ; preds = %74
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %93
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %115, %97
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @highest_node, align 4
  %102 = icmp sle i32 %100, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %99
  %104 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %105 = load %struct.slabinfo*, %struct.slabinfo** %3, align 8
  %106 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @store_size(i8* %104, i32 %111)
  %113 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %113)
  br label %115

115:                                              ; preds = %103
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %99

118:                                              ; preds = %99
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %93
  %121 = load i32, i32* @line, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* @line, align 4
  br label %123

123:                                              ; preds = %120, %30, %17, %13
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @store_size(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
