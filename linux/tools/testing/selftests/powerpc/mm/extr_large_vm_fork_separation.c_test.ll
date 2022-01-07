; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/mm/extr_large_vm_fork_separation.c_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/mm/extr_large_vm_fork_separation.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_SC_PAGESIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_FIXED_NOREPLACE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Error: couldn't mmap(), confirm kernel has 4TB support?\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"parent writing %p = 1\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"child writing  %p = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"parent reading %p = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Error: BUG! parent saw child's write! *p = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"success: test completed OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i32], align 4
  %3 = alloca [2 x i32], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = load i32, i32* @_SC_PAGESIZE, align 4
  %11 = call i64 @sysconf(i32 %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp ne i64 %12, 65536
  %14 = zext i1 %13 to i32
  %15 = call i32 @SKIP_IF(i32 %14)
  %16 = load i64, i64* %8, align 8
  %17 = load i32, i32* @PROT_READ, align 4
  %18 = load i32, i32* @PROT_WRITE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @MAP_PRIVATE, align 4
  %21 = load i32, i32* @MAP_ANONYMOUS, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MAP_FIXED_NOREPLACE, align 4
  %24 = or i32 %22, %23
  %25 = call i32* @mmap(i8* inttoptr (i64 562949953421312 to i8*), i64 %16, i32 %19, i32 %24, i32 -1, i32 0)
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** @MAP_FAILED, align 8
  %28 = icmp eq i32* %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %0
  %30 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %130

32:                                               ; preds = %0
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* %33)
  %35 = load i32*, i32** %7, align 8
  store i32 1, i32* %35, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %37 = call i32 @pipe(i32* %36)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %41 = call i32 @pipe(i32* %40)
  %42 = icmp eq i32 %41, -1
  br label %43

43:                                               ; preds = %39, %32
  %44 = phi i1 [ true, %32 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @FAIL_IF(i32 %45)
  %47 = call i32 (...) @fork()
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %43
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @read(i32 %52, i32* %6, i32 1)
  %54 = icmp ne i32 %53, 1
  %55 = zext i1 %54 to i32
  %56 = call i32 @FAIL_IF(i32 %55)
  %57 = call i32 (...) @getpid()
  store i32 %57, i32* %9, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32* %58, i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = load i32*, i32** %7, align 8
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @write(i32 %64, i32* %6, i32 1)
  %66 = icmp ne i32 %65, 1
  %67 = zext i1 %66 to i32
  %68 = call i32 @FAIL_IF(i32 %67)
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @read(i32 %70, i32* %6, i32 1)
  %72 = icmp ne i32 %71, 1
  %73 = zext i1 %72 to i32
  %74 = call i32 @FAIL_IF(i32 %73)
  %75 = call i32 @exit(i32 0) #3
  unreachable

76:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @write(i32 %78, i32* %6, i32 1)
  %80 = icmp ne i32 %79, 1
  %81 = zext i1 %80 to i32
  %82 = call i32 @FAIL_IF(i32 %81)
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @read(i32 %84, i32* %6, i32 1)
  %86 = icmp ne i32 %85, 1
  %87 = zext i1 %86 to i32
  %88 = call i32 @FAIL_IF(i32 %87)
  %89 = call i32 (...) @barrier()
  store i32 0, i32* %4, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32* %90, i32 %92)
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 1
  br i1 %96, label %97, label %101

97:                                               ; preds = %76
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  store i32 1, i32* %4, align 4
  br label %101

101:                                              ; preds = %97, %76
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @write(i32 %103, i32* %6, i32 1)
  %105 = icmp ne i32 %104, 1
  %106 = zext i1 %105 to i32
  %107 = call i32 @FAIL_IF(i32 %106)
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @waitpid(i32 %108, i32* %5, i32 0)
  %110 = icmp eq i32 %109, -1
  %111 = zext i1 %110 to i32
  %112 = call i32 @FAIL_IF(i32 %111)
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @WIFEXITED(i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %101
  %117 = load i32, i32* %5, align 4
  %118 = call i64 @WEXITSTATUS(i32 %117)
  %119 = icmp ne i64 %118, 0
  br label %120

120:                                              ; preds = %116, %101
  %121 = phi i1 [ true, %101 ], [ %119, %116 ]
  %122 = zext i1 %121 to i32
  %123 = call i32 @FAIL_IF(i32 %122)
  %124 = load i32, i32* %4, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %120
  %129 = load i32, i32* %4, align 4
  store i32 %129, i32* %1, align 4
  br label %130

130:                                              ; preds = %128, %29
  %131 = load i32, i32* %1, align 4
  ret i32 %131
}

declare dso_local i64 @sysconf(i32) #1

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32* @mmap(i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @write(i32, i32*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
