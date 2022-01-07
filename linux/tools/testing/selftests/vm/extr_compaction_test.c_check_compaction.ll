; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_compaction_test.c_check_compaction.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_compaction_test.c_check_compaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"/proc/sys/vm/nr_hugepages\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to open /proc/sys/vm/nr_hugepages\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Failed to read from /proc/sys/vm/nr_hugepages\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Failed to write 0 to /proc/sys/vm/nr_hugepages\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"100000\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Failed to write 100000 to /proc/sys/vm/nr_hugepages\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"Failed to re-read from /proc/sys/vm/nr_hugepages\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"No of huge pages allocated = %d\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [60 x i8] c"ERROR: Less that 1/%d of memory is available\0Aas huge pages\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"Failed to write value to /proc/sys/vm/nr_hugepages\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Not OK. Compaction test failed.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_compaction(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [10 x i8], align 1
  %9 = alloca [10 x i8], align 1
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %10 = bitcast [10 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %10, i8 0, i64 10, i1 false)
  %11 = bitcast [10 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %11, i8 0, i64 10, i1 false)
  %12 = load i64, i64* %4, align 8
  %13 = uitofp i64 %12 to double
  %14 = fmul double %13, 8.000000e-01
  %15 = fptoui double %14 to i64
  store i64 %15, i64* %4, align 8
  %16 = load i32, i32* @O_RDWR, align 4
  %17 = load i32, i32* @O_NONBLOCK, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @open(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i32 @perror(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %100

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %27 = call i64 @read(i32 %25, i8* %26, i32 10)
  %28 = icmp sle i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @perror(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %96

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @write(i32 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @perror(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %96

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @SEEK_SET, align 4
  %41 = call i32 @lseek(i32 %39, i32 0, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @write(i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 6)
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %44, 6
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = call i32 @perror(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  br label %96

48:                                               ; preds = %38
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @SEEK_SET, align 4
  %51 = call i32 @lseek(i32 %49, i32 0, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %54 = call i64 @read(i32 %52, i8* %53, i32 10)
  %55 = icmp sle i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = call i32 @perror(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0))
  br label %96

58:                                               ; preds = %48
  %59 = load i64, i64* %4, align 8
  %60 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %61 = call i32 @atoi(i8* %60)
  %62 = load i32, i32* %5, align 4
  %63 = mul i32 %61, %62
  %64 = zext i32 %63 to i64
  %65 = udiv i64 %59, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp sgt i32 %67, 3
  br i1 %68, label %69, label %76

69:                                               ; preds = %58
  %70 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %71 = call i32 @atoi(i8* %70)
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @stderr, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @fprintf(i32 %73, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.9, i64 0, i64 0), i32 %74)
  br label %96

76:                                               ; preds = %58
  %77 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %78 = call i32 @atoi(i8* %77)
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @SEEK_SET, align 4
  %82 = call i32 @lseek(i32 %80, i32 0, i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %85 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %86 = call i32 @strlen(i8* %85)
  %87 = call i32 @write(i32 %83, i8* %84, i32 %86)
  %88 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %89 = call i32 @strlen(i8* %88)
  %90 = icmp ne i32 %87, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %76
  %92 = call i32 @perror(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0))
  br label %96

93:                                               ; preds = %76
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @close(i32 %94)
  store i32 0, i32* %3, align 4
  br label %100

96:                                               ; preds = %91, %69, %56, %46, %36, %29
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @close(i32 %97)
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %100

100:                                              ; preds = %96, %93, %22
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i64 @read(i32, i8*, i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @lseek(i32, i32, i32) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fprintf(i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
