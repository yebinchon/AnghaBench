; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_socket.c_run_tests.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_socket.c_run_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_testcase = type { i32, i32, i32, i32, i64 }

@ERR_STRING_SZ = common dso_local global i32 0, align 4
@tests = common dso_local global %struct.socket_testcase* null, align 8
@errno = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"socket(%d, %d, %d) expected err (%s) got (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"socket(%d, %d, %d) expected success got err (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @run_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_tests() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket_testcase*, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @ERR_STRING_SZ, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %1, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %2, align 8
  %12 = load i32, i32* @ERR_STRING_SZ, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %105, %0
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.socket_testcase*, %struct.socket_testcase** @tests, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.socket_testcase* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %108

20:                                               ; preds = %15
  %21 = load %struct.socket_testcase*, %struct.socket_testcase** @tests, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.socket_testcase, %struct.socket_testcase* %21, i64 %23
  store %struct.socket_testcase* %24, %struct.socket_testcase** %6, align 8
  %25 = load %struct.socket_testcase*, %struct.socket_testcase** %6, align 8
  %26 = getelementptr inbounds %struct.socket_testcase, %struct.socket_testcase* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.socket_testcase*, %struct.socket_testcase** %6, align 8
  %29 = getelementptr inbounds %struct.socket_testcase, %struct.socket_testcase* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.socket_testcase*, %struct.socket_testcase** %6, align 8
  %32 = getelementptr inbounds %struct.socket_testcase, %struct.socket_testcase* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @socket(i32 %27, i32 %30, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %81

37:                                               ; preds = %20
  %38 = load %struct.socket_testcase*, %struct.socket_testcase** %6, align 8
  %39 = getelementptr inbounds %struct.socket_testcase, %struct.socket_testcase* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* @errno, align 4
  %44 = load i32, i32* @EAFNOSUPPORT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %105

47:                                               ; preds = %42, %37
  %48 = load %struct.socket_testcase*, %struct.socket_testcase** %6, align 8
  %49 = getelementptr inbounds %struct.socket_testcase, %struct.socket_testcase* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load i32, i32* @errno, align 4
  %54 = load %struct.socket_testcase*, %struct.socket_testcase** %6, align 8
  %55 = getelementptr inbounds %struct.socket_testcase, %struct.socket_testcase* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %53, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %105

60:                                               ; preds = %52, %47
  %61 = load %struct.socket_testcase*, %struct.socket_testcase** %6, align 8
  %62 = getelementptr inbounds %struct.socket_testcase, %struct.socket_testcase* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 0, %63
  %65 = load i32, i32* @ERR_STRING_SZ, align 4
  %66 = call i32 @strerror_r(i32 %64, i8* %11, i32 %65)
  %67 = load i32, i32* @errno, align 4
  %68 = load i32, i32* @ERR_STRING_SZ, align 4
  %69 = call i32 @strerror_r(i32 %67, i8* %14, i32 %68)
  %70 = load i32, i32* @stderr, align 4
  %71 = load %struct.socket_testcase*, %struct.socket_testcase** %6, align 8
  %72 = getelementptr inbounds %struct.socket_testcase, %struct.socket_testcase* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.socket_testcase*, %struct.socket_testcase** %6, align 8
  %75 = getelementptr inbounds %struct.socket_testcase, %struct.socket_testcase* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.socket_testcase*, %struct.socket_testcase** %6, align 8
  %78 = getelementptr inbounds %struct.socket_testcase, %struct.socket_testcase* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i32, i8*, i32, i32, i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %76, i32 %79, i8* %11, i8* %14)
  store i32 -1, i32* %5, align 4
  br label %108

81:                                               ; preds = %20
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @close(i32 %82)
  %84 = load %struct.socket_testcase*, %struct.socket_testcase** %6, align 8
  %85 = getelementptr inbounds %struct.socket_testcase, %struct.socket_testcase* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %81
  %89 = load i32, i32* @errno, align 4
  %90 = load i32, i32* @ERR_STRING_SZ, align 4
  %91 = call i32 @strerror_r(i32 %89, i8* %11, i32 %90)
  %92 = load i32, i32* @stderr, align 4
  %93 = load %struct.socket_testcase*, %struct.socket_testcase** %6, align 8
  %94 = getelementptr inbounds %struct.socket_testcase, %struct.socket_testcase* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.socket_testcase*, %struct.socket_testcase** %6, align 8
  %97 = getelementptr inbounds %struct.socket_testcase, %struct.socket_testcase* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.socket_testcase*, %struct.socket_testcase** %6, align 8
  %100 = getelementptr inbounds %struct.socket_testcase, %struct.socket_testcase* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i32, i8*, i32, i32, i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %98, i32 %101, i8* %11)
  store i32 -1, i32* %5, align 4
  br label %108

103:                                              ; preds = %81
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104, %59, %46
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %15

108:                                              ; preds = %88, %60, %15
  %109 = load i32, i32* %5, align 4
  %110 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %110)
  ret i32 %109
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ARRAY_SIZE(%struct.socket_testcase*) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @strerror_r(i32, i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i8*, ...) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
