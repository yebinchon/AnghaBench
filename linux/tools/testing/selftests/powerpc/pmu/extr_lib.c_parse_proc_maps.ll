; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/extr_lib.c_parse_proc_maps.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/extr_lib.c_parse_proc_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"/proc/self/maps\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"fopen\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"%lx-%lx %*c%*c%c%*c %*x %*d:%*d %*d %127s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"libc\00", align 1
@libc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"[vdso]\00", align 1
@vdso = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_proc_maps() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca [128 x i8], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = call i32* @fopen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %0
  %12 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %48

13:                                               ; preds = %0
  br label %14

14:                                               ; preds = %44, %13
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %17 = call i32 @fscanf(i32* %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64* %2, i64* %3, i8* %4, i8* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %45

21:                                               ; preds = %14
  %22 = load i8, i8* %4, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 120
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %44

26:                                               ; preds = %21
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %28 = call i64 @strstr(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i64, i64* %2, align 8
  store i64 %31, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @libc, i32 0, i32 0), align 8
  %32 = load i64, i64* %3, align 8
  %33 = sub i64 %32, 1
  store i64 %33, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @libc, i32 0, i32 1), align 8
  br label %43

34:                                               ; preds = %26
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %36 = call i64 @strstr(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i64, i64* %2, align 8
  store i64 %39, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vdso, i32 0, i32 0), align 8
  %40 = load i64, i64* %3, align 8
  %41 = sub i64 %40, 1
  store i64 %41, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vdso, i32 0, i32 1), align 8
  br label %42

42:                                               ; preds = %38, %34
  br label %43

43:                                               ; preds = %42, %30
  br label %44

44:                                               ; preds = %43, %25
  br i1 true, label %14, label %45

45:                                               ; preds = %44, %20
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @fclose(i32* %46)
  store i32 0, i32* %1, align 4
  br label %48

48:                                               ; preds = %45, %11
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fscanf(i32*, i8*, i64*, i64*, i8*, i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
