; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_inconsistency-check.c_consistency_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_inconsistency-check.c_consistency_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@CALLS_PER_LOOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"--------------------\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%lu:%lu\0A\00", align 1
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"Delta: %llu ns\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"[FAILED]\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"[OK]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @consistency_test(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %16 = load i32, i32* @CALLS_PER_LOOP, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca %struct.timespec, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load i32, i32* %4, align 4
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i64 0
  %22 = call i32 @clock_gettime(i32 %20, %struct.timespec* %21)
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i64 0
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 16
  store i64 %25, i64* %11, align 8
  store i64 %25, i64* %10, align 8
  %26 = call i32 @time(i32 0)
  store i32 %26, i32* %12, align 4
  %27 = call i8* @ctime(i32* %12)
  store i8* %27, i8** %13, align 8
  br label %28

28:                                               ; preds = %163, %2
  %29 = load i64, i64* %5, align 8
  %30 = icmp eq i64 %29, -1
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = sub nsw i64 %32, %33
  %35 = load i64, i64* %5, align 8
  %36 = icmp ult i64 %34, %35
  br label %37

37:                                               ; preds = %31, %28
  %38 = phi i1 [ true, %28 ], [ %36, %31 ]
  br i1 %38, label %39, label %167

39:                                               ; preds = %37
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %50, %39
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @CALLS_PER_LOOP, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i64 %47
  %49 = call i32 @clock_gettime(i32 %45, %struct.timespec* %48)
  br label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %40

53:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %82, %53
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @CALLS_PER_LOOP, align 4
  %57 = sub nsw i32 %56, 1
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %85

59:                                               ; preds = %54
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i64 %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i64 %65
  %67 = bitcast %struct.timespec* %62 to { i64, i64 }*
  %68 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 16
  %70 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %67, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = bitcast %struct.timespec* %66 to { i64, i64 }*
  %73 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 16
  %75 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %72, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @in_order(i64 %69, i64 %71, i64 %74, i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %59
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %79, %59
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %54

85:                                               ; preds = %54
  %86 = load i32, i32* %9, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %163

88:                                               ; preds = %85
  %89 = load i8*, i8** %13, align 8
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %89)
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %120, %88
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @CALLS_PER_LOOP, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %123

95:                                               ; preds = %91
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %95
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i64 %103
  %105 = getelementptr inbounds %struct.timespec, %struct.timespec* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 16
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i64 %108
  %110 = getelementptr inbounds %struct.timespec, %struct.timespec* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %106, i64 %111)
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %101
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %101
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %91

123:                                              ; preds = %91
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i64 %125
  %127 = getelementptr inbounds %struct.timespec, %struct.timespec* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 16
  %129 = load i64, i64* @NSEC_PER_SEC, align 8
  %130 = mul i64 %128, %129
  store i64 %130, i64* %14, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i64 %132
  %134 = getelementptr inbounds %struct.timespec, %struct.timespec* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %14, align 8
  %137 = add i64 %136, %135
  store i64 %137, i64* %14, align 8
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i64 %140
  %142 = getelementptr inbounds %struct.timespec, %struct.timespec* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 16
  %144 = load i64, i64* @NSEC_PER_SEC, align 8
  %145 = mul i64 %143, %144
  %146 = load i64, i64* %14, align 8
  %147 = sub i64 %146, %145
  store i64 %147, i64* %14, align 8
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i64 %150
  %152 = getelementptr inbounds %struct.timespec, %struct.timespec* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %14, align 8
  %155 = sub i64 %154, %153
  store i64 %155, i64* %14, align 8
  %156 = load i64, i64* %14, align 8
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %156)
  %158 = call i32 @fflush(i32 0)
  %159 = call i32 @time(i32 0)
  store i32 %159, i32* %12, align 4
  %160 = call i8* @ctime(i32* %12)
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %160)
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %169

163:                                              ; preds = %85
  %164 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i64 0
  %165 = getelementptr inbounds %struct.timespec, %struct.timespec* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 16
  store i64 %166, i64* %10, align 8
  br label %28

167:                                              ; preds = %37
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %169

169:                                              ; preds = %167, %123
  %170 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %170)
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #2

declare dso_local i32 @time(i32) #2

declare dso_local i8* @ctime(i32*) #2

declare dso_local i32 @in_order(i64, i64, i64, i64) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fflush(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
