; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock2-tests.c_test_munlockall.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock2-tests.c_test_munlockall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"test_munlockall mmap\00", align 1
@MCL_CURRENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"mlockall(MCL_CURRENT)\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"munlockall()\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"test_munlockall second mmap\00", align 1
@MCL_ONFAULT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"mlockall(MCL_CURRENT | MCL_ONFAULT)\00", align 1
@MCL_FUTURE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"mlockall(MCL_CURRENT | MCL_FUTURE)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_munlockall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_munlockall() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 1, i32* %2, align 4
  %4 = call i64 (...) @getpagesize()
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = mul i64 2, %5
  %7 = trunc i64 %6 to i32
  %8 = load i32, i32* @PROT_READ, align 4
  %9 = load i32, i32* @PROT_WRITE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @MAP_ANONYMOUS, align 4
  %12 = load i32, i32* @MAP_PRIVATE, align 4
  %13 = or i32 %11, %12
  %14 = call i8* @mmap(i32* null, i32 %7, i32 %10, i32 %13, i32 -1, i32 0)
  store i8* %14, i8** %1, align 8
  %15 = load i8*, i8** %1, align 8
  %16 = load i8*, i8** @MAP_FAILED, align 8
  %17 = icmp eq i8* %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %0
  %19 = call i32 @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %112

20:                                               ; preds = %0
  %21 = load i32, i32* @MCL_CURRENT, align 4
  %22 = call i64 @mlockall(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %112

26:                                               ; preds = %20
  %27 = load i8*, i8** %1, align 8
  %28 = call i64 @lock_check(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %106

31:                                               ; preds = %26
  %32 = call i64 (...) @munlockall()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %106

36:                                               ; preds = %31
  %37 = load i8*, i8** %1, align 8
  %38 = call i32 @unlock_lock_check(i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %106

41:                                               ; preds = %36
  %42 = load i8*, i8** %1, align 8
  %43 = load i64, i64* %3, align 8
  %44 = mul i64 2, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @munmap(i8* %42, i32 %45)
  %47 = load i64, i64* %3, align 8
  %48 = mul i64 2, %47
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @PROT_READ, align 4
  %51 = load i32, i32* @PROT_WRITE, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @MAP_ANONYMOUS, align 4
  %54 = load i32, i32* @MAP_PRIVATE, align 4
  %55 = or i32 %53, %54
  %56 = call i8* @mmap(i32* null, i32 %49, i32 %52, i32 %55, i32 -1, i32 0)
  store i8* %56, i8** %1, align 8
  %57 = load i8*, i8** %1, align 8
  %58 = load i8*, i8** @MAP_FAILED, align 8
  %59 = icmp eq i8* %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %41
  %61 = call i32 @perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %112

62:                                               ; preds = %41
  %63 = load i32, i32* @MCL_CURRENT, align 4
  %64 = load i32, i32* @MCL_ONFAULT, align 4
  %65 = or i32 %63, %64
  %66 = call i64 @mlockall(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = call i32 @perror(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %106

70:                                               ; preds = %62
  %71 = load i8*, i8** %1, align 8
  %72 = call i64 @onfault_check(i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %106

75:                                               ; preds = %70
  %76 = call i64 (...) @munlockall()
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %106

80:                                               ; preds = %75
  %81 = load i8*, i8** %1, align 8
  %82 = call i64 @unlock_onfault_check(i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %106

85:                                               ; preds = %80
  %86 = load i32, i32* @MCL_CURRENT, align 4
  %87 = load i32, i32* @MCL_FUTURE, align 4
  %88 = or i32 %86, %87
  %89 = call i64 @mlockall(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = call i32 @perror(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %112

93:                                               ; preds = %85
  %94 = load i8*, i8** %1, align 8
  %95 = call i64 @lock_check(i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %106

98:                                               ; preds = %93
  %99 = call i64 (...) @munlockall()
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %106

103:                                              ; preds = %98
  %104 = load i8*, i8** %1, align 8
  %105 = call i32 @unlock_lock_check(i8* %104)
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %103, %101, %97, %84, %78, %74, %68, %40, %34, %30
  %107 = load i8*, i8** %1, align 8
  %108 = load i64, i64* %3, align 8
  %109 = mul i64 2, %108
  %110 = trunc i64 %109 to i32
  %111 = call i32 @munmap(i8* %107, i32 %110)
  br label %112

112:                                              ; preds = %106, %91, %60, %24, %18
  %113 = call i64 (...) @munlockall()
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i64 @getpagesize(...) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @mlockall(i32) #1

declare dso_local i64 @lock_check(i8*) #1

declare dso_local i64 @munlockall(...) #1

declare dso_local i32 @unlock_lock_check(i8*) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i64 @onfault_check(i8*) #1

declare dso_local i64 @unlock_onfault_check(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
