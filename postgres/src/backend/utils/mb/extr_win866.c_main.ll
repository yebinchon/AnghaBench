; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_win866.c_main.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_win866.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid value %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"static char koi2alt[] = {\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"0x%02x\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"static char alt2koi[] = {\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [128 x i8], align 16
  %4 = alloca [128 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %20, %0
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %11, 128
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %15
  store i8 0, i8* %16, align 1
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %18
  store i8 0, i8* %19, align 1
  br label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %2, align 4
  br label %10

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %54, %34, %23
  %25 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %26 = load i32, i32* @stdin, align 4
  %27 = call i32* @fgets(i8* %25, i32 4096, i32 %26)
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %67

29:                                               ; preds = %24
  %30 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %31 = load i8, i8* %30, align 16
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 35
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %24

35:                                               ; preds = %29
  %36 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %37 = call i32 @sscanf(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %7)
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 128
  br i1 %39, label %49, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = icmp sgt i32 %41, 255
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 128
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = icmp sgt i32 %47, 255
  br i1 %48, label %49, label %54

49:                                               ; preds = %46, %43, %40, %35
  %50 = load i32, i32* @stderr, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @fprintf(i32 %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = call i32 @exit(i32 1) #3
  unreachable

54:                                               ; preds = %46
  %55 = load i32, i32* %7, align 4
  %56 = trunc i32 %55 to i8
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %57, 128
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %59
  store i8 %56, i8* %60, align 1
  %61 = load i32, i32* %6, align 4
  %62 = trunc i32 %61 to i8
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 %63, 128
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %65
  store i8 %62, i8* %66, align 1
  br label %24

67:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %91, %67
  %70 = load i32, i32* %2, align 4
  %71 = icmp slt i32 %70, 128
  br i1 %71, label %72, label %93

72:                                               ; preds = %69
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %89, %72
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 8
  br i1 %75, label %76, label %91

76:                                               ; preds = %73
  %77 = load i32, i32* %2, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %2, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %2, align 4
  %87 = icmp sge i32 %86, 128
  br i1 %87, label %88, label %89

88:                                               ; preds = %76
  br label %91

89:                                               ; preds = %76
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %73

91:                                               ; preds = %88, %73
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %69

93:                                               ; preds = %69
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %96

96:                                               ; preds = %118, %93
  %97 = load i32, i32* %2, align 4
  %98 = icmp slt i32 %97, 128
  br i1 %98, label %99, label %120

99:                                               ; preds = %96
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %116, %99
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %101, 8
  br i1 %102, label %103, label %118

103:                                              ; preds = %100
  %104 = load i32, i32* %2, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %2, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %2, align 4
  %114 = icmp sge i32 %113, 128
  br i1 %114, label %115, label %116

115:                                              ; preds = %103
  br label %118

116:                                              ; preds = %103
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %100

118:                                              ; preds = %115, %100
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %96

120:                                              ; preds = %96
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %122 = load i32, i32* %1, align 4
  ret i32 %122
}

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
