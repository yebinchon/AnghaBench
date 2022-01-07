; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_fd-002-posix-eq.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_fd-002-posix-eq.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@O_DIRECTORY = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"/proc/self/fd/%u\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"/proc/thread-self/fd/%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %10 = load i32, i32* @O_DIRECTORY, align 4
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp sge i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @snprintf(i8* %18, i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %22 = load i32, i32* @O_RDONLY, align 4
  %23 = call i32 @open(i8* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp sge i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @snprintf(i8* %28, i32 64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %32 = load i32, i32* @O_RDONLY, align 4
  %33 = call i32 @open(i8* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp sge i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @fstat(i32 %38, %struct.stat* %5)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @fstat(i32 %44, %struct.stat* %6)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @fstat(i32 %50, %struct.stat* %7)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %57, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %64, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %71, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %78, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  ret i32 0
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
