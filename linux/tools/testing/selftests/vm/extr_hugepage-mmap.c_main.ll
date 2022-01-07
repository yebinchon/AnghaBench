; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_hugepage-mmap.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_hugepage-mmap.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILE_NAME = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Open failed\00", align 1
@ADDR = common dso_local global i32 0, align 4
@LENGTH = common dso_local global i32 0, align 4
@PROTECTION = common dso_local global i32 0, align 4
@FLAGS = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Returned address is %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = load i32, i32* @FILE_NAME, align 4
  %6 = load i32, i32* @O_CREAT, align 4
  %7 = load i32, i32* @O_RDWR, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @open(i32 %5, i32 %8, i32 493)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @exit(i32 1) #3
  unreachable

15:                                               ; preds = %0
  %16 = load i32, i32* @ADDR, align 4
  %17 = load i32, i32* @LENGTH, align 4
  %18 = load i32, i32* @PROTECTION, align 4
  %19 = load i32, i32* @FLAGS, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i8* @mmap(i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 0)
  store i8* %21, i8** %2, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = load i8*, i8** @MAP_FAILED, align 8
  %24 = icmp eq i8* %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @FILE_NAME, align 4
  %28 = call i32 @unlink(i32 %27)
  %29 = call i32 @exit(i32 1) #3
  unreachable

30:                                               ; preds = %15
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @check_bytes(i8* %33)
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 @write_bytes(i8* %35)
  %37 = load i8*, i8** %2, align 8
  %38 = call i32 @read_bytes(i8* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i8*, i8** %2, align 8
  %40 = load i32, i32* @LENGTH, align 4
  %41 = call i32 @munmap(i8* %39, i32 %40)
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @close(i32 %42)
  %44 = load i32, i32* @FILE_NAME, align 4
  %45 = call i32 @unlink(i32 %44)
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @check_bytes(i8*) #1

declare dso_local i32 @write_bytes(i8*) #1

declare dso_local i32 @read_bytes(i8*) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
