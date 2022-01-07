; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_vdso.c_vsyscall_getcpu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_vdso.c_vsyscall_getcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAPS_LINE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"/proc/self/maps\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"%p-%p %c-%cp %*x %*x:%*x %*u %s\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"[vsyscall]\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Warning: failed to find vsyscall getcpu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @vsyscall_getcpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vsyscall_getcpu() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = load i32, i32* @MAPS_LINE_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %3, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %17 = call i32* @fopen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %17, i32** %2, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %0
  store i8* null, i8** %1, align 8
  store i32 1, i32* %6, align 4
  br label %51

21:                                               ; preds = %0
  br label %22

22:                                               ; preds = %40, %21
  %23 = load i32, i32* @MAPS_LINE_LEN, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = call i64 @fgets(i8* %16, i32 %23, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load i32, i32* @MAPS_LINE_LEN, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %11, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %12, align 8
  %32 = call i32 @sscanf(i8* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8** %9, i8** %10, i8* %7, i8* %8, i8* %31)
  %33 = icmp ne i32 %32, 5
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 2, i32* %6, align 4
  br label %40

35:                                               ; preds = %27
  %36 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 2, i32* %6, align 4
  br label %40

39:                                               ; preds = %35
  store i32 1, i32* %5, align 4
  store i32 3, i32* %6, align 4
  br label %40

40:                                               ; preds = %39, %38, %34
  %41 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %41)
  %42 = load i32, i32* %6, align 4
  switch i32 %42, label %54 [
    i32 2, label %22
    i32 3, label %43
  ]

43:                                               ; preds = %40, %22
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @fclose(i32* %44)
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  store i8* null, i8** %1, align 8
  store i32 1, i32* %6, align 4
  br label %51

50:                                               ; preds = %43
  store i8* inttoptr (i64 -10483712 to i8*), i8** %1, align 8
  store i32 1, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %48, %20
  %52 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %52)
  %53 = load i8*, i8** %1, align 8
  ret i8* %53

54:                                               ; preds = %40
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @sscanf(i8*, i8*, i8**, i8**, i8*, i8*, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @printf(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
