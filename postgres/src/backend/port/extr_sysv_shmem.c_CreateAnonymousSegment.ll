; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/port/extr_sysv_shmem.c_CreateAnonymousSegment.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/port/extr_sysv_shmem.c_CreateAnonymousSegment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAP_FAILED = common dso_local global i8* null, align 8
@huge_pages = common dso_local global i64 0, align 8
@HUGE_PAGES_ON = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@PG_MMAP_FLAGS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"could not map anonymous shared memory: %m\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [279 x i8] c"This error usually means that PostgreSQL's request for a shared memory segment exceeded available memory, swap space, or huge pages. To reduce the request size (currently %zu bytes), reduce PostgreSQL's shared memory usage, perhaps by reducing shared_buffers or max_connections.\00", align 1
@DEBUG1 = common dso_local global i32 0, align 4
@HUGE_PAGES_TRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @CreateAnonymousSegment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @CreateAnonymousSegment(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i8*, i8** @MAP_FAILED, align 8
  store i8* %8, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i64, i64* @huge_pages, align 8
  %10 = load i64, i64* @HUGE_PAGES_ON, align 8
  %11 = icmp ne i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @Assert(i32 %12)
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** @MAP_FAILED, align 8
  %16 = icmp eq i8* %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %1
  %18 = load i64, i64* @huge_pages, align 8
  %19 = load i64, i64* @HUGE_PAGES_ON, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @PROT_READ, align 4
  %26 = load i32, i32* @PROT_WRITE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @PG_MMAP_FLAGS, align 4
  %29 = call i8* @mmap(i32* null, i32 %24, i32 %27, i32 %28, i32 -1, i32 0)
  store i8* %29, i8** %4, align 8
  %30 = load i32, i32* @errno, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %21, %17, %1
  %32 = load i8*, i8** %4, align 8
  %33 = load i8*, i8** @MAP_FAILED, align 8
  %34 = icmp eq i8* %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* @errno, align 4
  %37 = load i32, i32* @FATAL, align 4
  %38 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @errhint(i8* getelementptr inbounds ([279 x i8], [279 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %47

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %42
  %48 = phi i32 [ %45, %42 ], [ 0, %46 ]
  %49 = call i32 @ereport(i32 %37, i32 %48)
  br label %50

50:                                               ; preds = %47, %31
  %51 = load i32, i32* %3, align 4
  %52 = load i32*, i32** %2, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i8*, i8** %4, align 8
  ret i8* %53
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
