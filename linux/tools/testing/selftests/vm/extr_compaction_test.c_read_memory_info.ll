; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_compaction_test.c_read_memory_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_compaction_test.c_read_memory_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"cat /proc/meminfo | grep -i memfree | grep -o '[0-9]*'\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to read meminfo\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"cat /proc/meminfo | grep -i hugepagesize | grep -o '[0-9]*'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_memory_info(i64* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = bitcast [256 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 256, i1 false)
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i32* @popen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %11, i32** %8, align 8
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @fgets(i8* %12, i32 256, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %38

18:                                               ; preds = %2
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @pclose(i32* %19)
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %22 = call i64 @atoll(i8* %21)
  %23 = load i64*, i64** %4, align 8
  store i64 %22, i64* %23, align 8
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32* @popen(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %25, i32** %8, align 8
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @fgets(i8* %26, i32 256, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %18
  %31 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %38

32:                                               ; preds = %18
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @pclose(i32* %33)
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %36 = call i64 @atoll(i8* %35)
  %37 = load i64*, i64** %5, align 8
  store i64 %36, i64* %37, align 8
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %32, %30, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @popen(i8*, i8*) #2

declare dso_local i32 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @pclose(i32*) #2

declare dso_local i64 @atoll(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
