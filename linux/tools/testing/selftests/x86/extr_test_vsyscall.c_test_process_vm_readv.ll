; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_vsyscall.c_test_process_vm_readv.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_vsyscall.c_test_process_vm_readv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i8*, i32 }

@.str = private unnamed_addr constant [45 x i8] c"[RUN]\09process_vm_readv() from vsyscall page\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"[OK]\09process_vm_readv() failed (ret = %d, errno = %d)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@vsyscall_map_r = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"[OK]\09It worked and read correct data\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"[FAIL]\09It worked but returned incorrect data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_process_vm_readv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_process_vm_readv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4096 x i8], align 16
  %3 = alloca %struct.iovec, align 8
  %4 = alloca %struct.iovec, align 8
  %5 = alloca i32, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %7 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %8 = getelementptr inbounds %struct.iovec, %struct.iovec* %3, i32 0, i32 0
  store i8* %7, i8** %8, align 8
  %9 = getelementptr inbounds %struct.iovec, %struct.iovec* %3, i32 0, i32 1
  store i32 4096, i32* %9, align 8
  %10 = getelementptr inbounds %struct.iovec, %struct.iovec* %4, i32 0, i32 0
  store i8* inttoptr (i64 -10485760 to i8*), i8** %10, align 8
  %11 = getelementptr inbounds %struct.iovec, %struct.iovec* %4, i32 0, i32 1
  store i32 4096, i32* %11, align 8
  %12 = call i32 (...) @getpid()
  %13 = call i32 @process_vm_readv(i32 %12, %struct.iovec* %3, i32 1, %struct.iovec* %4, i32 1, i32 0)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 4096
  br i1 %15, label %16, label %20

16:                                               ; preds = %0
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %18)
  store i32 0, i32* %1, align 4
  br label %33

20:                                               ; preds = %0
  %21 = load i64, i64* @vsyscall_map_r, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0
  %25 = call i32 @memcmp(i8* %24, i8* inttoptr (i64 -10485760 to i8*), i32 4096)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %31

29:                                               ; preds = %23
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %33

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %20
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %32, %29, %16
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @process_vm_readv(i32, %struct.iovec*, i32, %struct.iovec*, i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
