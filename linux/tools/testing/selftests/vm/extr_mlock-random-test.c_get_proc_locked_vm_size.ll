; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock-random-test.c_get_proc_locked_vm_size.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock-random-test.c_get_proc_locked_vm_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"/proc/self/status\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"fopen\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"VmLck\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"VmLck:\09%8lu kB\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"sscanf() on VmLck error: %s: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"cann't parse VmLck in /proc/self/status\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_proc_locked_vm_size() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i64, align 8
  store i32 -1, i32* %3, align 4
  %6 = bitcast [1024 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 1024, i1 false)
  store i64 0, i64* %5, align 8
  %7 = call i32* @fopen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %44

12:                                               ; preds = %0
  br label %13

13:                                               ; preds = %39, %12
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %15 = load i32*, i32** %2, align 8
  %16 = call i64 @fgets(i8* %14, i32 1024, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %13
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %20 = call i64 @strstr(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %24 = call i32 @sscanf(i8* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64* %5)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %28, i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @fclose(i32* %31)
  store i32 -1, i32* %1, align 4
  br label %44

33:                                               ; preds = %22
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @fclose(i32* %34)
  %36 = load i64, i64* %5, align 8
  %37 = shl i64 %36, 10
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %1, align 4
  br label %44

39:                                               ; preds = %18
  br label %13

40:                                               ; preds = %13
  %41 = call i32 @perror(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @fclose(i32* %42)
  store i32 -1, i32* %1, align 4
  br label %44

44:                                               ; preds = %40, %33, %27, %10
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i64 @strstr(i8*, i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, i64*) #2

declare dso_local i32 @printf(i8*, i8*, i32) #2

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
