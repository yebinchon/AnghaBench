; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_map_populate.c_child_f.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_map_populate.c_child_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MMAP_SZ = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_POPULATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"mmap()\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"MAP_PRIVATE | MAP_POPULATE changed file\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"write(sock)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"read(sock)\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"MAP_POPULATE didn't COW private page\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"mapping was corrupted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i32)* @child_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @child_f(i32 %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @MMAP_SZ, align 4
  %10 = load i32, i32* @PROT_READ, align 4
  %11 = load i32, i32* @PROT_WRITE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @MAP_PRIVATE, align 4
  %14 = load i32, i32* @MAP_POPULATE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %6, align 4
  %17 = call i64* @mmap(i32 0, i32 %9, i32 %12, i32 %15, i32 %16, i32 0)
  store i64* %17, i64** %5, align 8
  %18 = load i64*, i64** %5, align 8
  %19 = load i64*, i64** @MAP_FAILED, align 8
  %20 = icmp eq i64* %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = load i64*, i64** %5, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 3735927486
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @write(i32 %28, i32* %8, i32 4)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp sle i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @read(i32 %34, i32* %8, i32 4)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp sle i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i64*, i64** %5, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 572664749
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %45 = load i64*, i64** %5, align 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 3735927486
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  ret i32 0
}

declare dso_local i64* @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32, i8*) #1

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @read(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
