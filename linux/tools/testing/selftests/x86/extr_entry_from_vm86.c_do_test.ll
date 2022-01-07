; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_entry_from_vm86.c_do_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_entry_from_vm86.c_do_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm86plus_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"[RUN]\09%s from vm86 mode\0A\00", align 1
@VM86_ENTER = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"[SKIP]\09vm86 %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"not supported\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"not allowed\00", align 1
@VM86_INTx = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"GP\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"BR\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"PF\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"[INFO]\09Exited vm86 mode due to #%s\0A\00", align 1
@VM86_UNKNOWN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [51 x i8] c"[INFO]\09Exited vm86 mode due to unhandled GP fault\0A\00", align 1
@VM86_TRAP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [49 x i8] c"[INFO]\09Exited vm86 mode due to a trap (arg=%ld)\0A\00", align 1
@VM86_SIGNAL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [41 x i8] c"[INFO]\09Exited vm86 mode due to a signal\0A\00", align 1
@VM86_STI = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [36 x i8] c"[INFO]\09Exited vm86 mode due to STI\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"[INFO]\09Exited vm86 mode due to type %ld, arg %ld\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"[OK]\09Returned correctly\0A\00", align 1
@.str.15 = private unnamed_addr constant [79 x i8] c"[FAIL]\09Incorrect return reason (started at eip = 0x%lx, ended at eip = 0x%lx)\0A\00", align 1
@nerrs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm86plus_struct*, i64, i32, i32, i8*)* @do_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_test(%struct.vm86plus_struct* %0, i64 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm86plus_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [32 x i8], align 16
  %14 = alloca i32, align 4
  store %struct.vm86plus_struct* %0, %struct.vm86plus_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.vm86plus_struct*, %struct.vm86plus_struct** %7, align 8
  %19 = getelementptr inbounds %struct.vm86plus_struct, %struct.vm86plus_struct* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 %17, i64* %20, align 8
  %21 = load i32, i32* @VM86_ENTER, align 4
  %22 = load %struct.vm86plus_struct*, %struct.vm86plus_struct** %7, align 8
  %23 = call i64 @vm86(i32 %21, %struct.vm86plus_struct* %22)
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %12, align 8
  %25 = icmp eq i64 %24, -1
  br i1 %25, label %26, label %41

26:                                               ; preds = %5
  %27 = load i64, i64* @errno, align 8
  %28 = load i64, i64* @ENOSYS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @EPERM, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30, %26
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @ENOSYS, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  store i32 0, i32* %6, align 4
  br label %140

41:                                               ; preds = %30, %5
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @VM86_TYPE(i64 %42)
  %44 = load i32, i32* @VM86_INTx, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %41
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @VM86_ARG(i64 %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp eq i32 %49, 13
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %53 = call i32 @strcpy(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %72

54:                                               ; preds = %46
  %55 = load i32, i32* %14, align 4
  %56 = icmp eq i32 %55, 5
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %59 = call i32 @strcpy(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %71

60:                                               ; preds = %54
  %61 = load i32, i32* %14, align 4
  %62 = icmp eq i32 %61, 14
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %65 = call i32 @strcpy(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %70

66:                                               ; preds = %60
  %67 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @sprintf(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %66, %63
  br label %71

71:                                               ; preds = %70, %57
  br label %72

72:                                               ; preds = %71, %51
  %73 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i8* %73)
  br label %115

75:                                               ; preds = %41
  %76 = load i64, i64* %12, align 8
  %77 = call i32 @VM86_TYPE(i64 %76)
  %78 = load i32, i32* @VM86_UNKNOWN, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  br label %114

82:                                               ; preds = %75
  %83 = load i64, i64* %12, align 8
  %84 = call i32 @VM86_TYPE(i64 %83)
  %85 = load i32, i32* @VM86_TRAP, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i64, i64* %12, align 8
  %89 = call i32 @VM86_ARG(i64 %88)
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i32 %89)
  br label %113

91:                                               ; preds = %82
  %92 = load i64, i64* %12, align 8
  %93 = call i32 @VM86_TYPE(i64 %92)
  %94 = load i32, i32* @VM86_SIGNAL, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  br label %112

98:                                               ; preds = %91
  %99 = load i64, i64* %12, align 8
  %100 = call i32 @VM86_TYPE(i64 %99)
  %101 = load i32, i32* @VM86_STI, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  br label %111

105:                                              ; preds = %98
  %106 = load i64, i64* %12, align 8
  %107 = call i32 @VM86_TYPE(i64 %106)
  %108 = load i64, i64* %12, align 8
  %109 = call i32 @VM86_ARG(i64 %108)
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0), i32 %107, i32 %109)
  br label %111

111:                                              ; preds = %105, %103
  br label %112

112:                                              ; preds = %111, %96
  br label %113

113:                                              ; preds = %112, %87
  br label %114

114:                                              ; preds = %113, %80
  br label %115

115:                                              ; preds = %114, %72
  %116 = load i32, i32* %9, align 4
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %128, label %118

118:                                              ; preds = %115
  %119 = load i64, i64* %12, align 8
  %120 = call i32 @VM86_TYPE(i64 %119)
  %121 = load i32, i32* %9, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load i64, i64* %12, align 8
  %125 = call i32 @VM86_ARG(i64 %124)
  %126 = load i32, i32* %10, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %123, %115
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  br label %139

130:                                              ; preds = %123, %118
  %131 = load i64, i64* %8, align 8
  %132 = load %struct.vm86plus_struct*, %struct.vm86plus_struct** %7, align 8
  %133 = getelementptr inbounds %struct.vm86plus_struct, %struct.vm86plus_struct* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.15, i64 0, i64 0), i64 %131, i64 %135)
  %137 = load i32, i32* @nerrs, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* @nerrs, align 4
  br label %139

139:                                              ; preds = %130, %128
  store i32 1, i32* %6, align 4
  br label %140

140:                                              ; preds = %139, %34
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @vm86(i32, %struct.vm86plus_struct*) #1

declare dso_local i32 @VM86_TYPE(i64) #1

declare dso_local i32 @VM86_ARG(i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
