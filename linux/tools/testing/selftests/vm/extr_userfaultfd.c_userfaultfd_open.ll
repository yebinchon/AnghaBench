; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_userfaultfd.c_userfaultfd_open.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_userfaultfd.c_userfaultfd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uffdio_api = type { i64, i32 }

@__NR_userfaultfd = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@uffd = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"userfaultfd syscall not available in this kernel\0A\00", align 1
@F_GETFD = common dso_local global i32 0, align 4
@uffd_flags = common dso_local global i32 0, align 4
@UFFD_API = common dso_local global i64 0, align 8
@UFFDIO_API = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"UFFDIO_API\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"UFFDIO_API error %Lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @userfaultfd_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @userfaultfd_open(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.uffdio_api, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @__NR_userfaultfd, align 4
  %6 = load i32, i32* @O_CLOEXEC, align 4
  %7 = load i32, i32* @O_NONBLOCK, align 4
  %8 = or i32 %6, %7
  %9 = call i64 @syscall(i32 %5, i32 %8)
  store i64 %9, i64* @uffd, align 8
  %10 = load i64, i64* @uffd, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %41

15:                                               ; preds = %1
  %16 = load i64, i64* @uffd, align 8
  %17 = load i32, i32* @F_GETFD, align 4
  %18 = call i32 @fcntl(i64 %16, i32 %17, i32* null)
  store i32 %18, i32* @uffd_flags, align 4
  %19 = load i64, i64* @UFFD_API, align 8
  %20 = getelementptr inbounds %struct.uffdio_api, %struct.uffdio_api* %4, i32 0, i32 0
  store i64 %19, i64* %20, align 8
  %21 = load i32, i32* %3, align 4
  %22 = getelementptr inbounds %struct.uffdio_api, %struct.uffdio_api* %4, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = load i64, i64* @uffd, align 8
  %24 = load i32, i32* @UFFDIO_API, align 4
  %25 = call i64 @ioctl(i64 %23, i32 %24, %struct.uffdio_api* %4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %15
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %41

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.uffdio_api, %struct.uffdio_api* %4, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @UFFD_API, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* @stderr, align 4
  %37 = getelementptr inbounds %struct.uffdio_api, %struct.uffdio_api* %4, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  store i32 1, i32* %2, align 4
  br label %41

40:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %35, %27, %12
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @syscall(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fcntl(i64, i32, i32*) #1

declare dso_local i64 @ioctl(i64, i32, %struct.uffdio_api*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
