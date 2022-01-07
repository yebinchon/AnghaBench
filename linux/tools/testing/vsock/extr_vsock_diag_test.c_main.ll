; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/vsock/extr_vsock_diag_test.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/vsock/extr_vsock_diag_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, void (i32)*, void (i32)* }

@TEST_MODE_UNSET = common dso_local global i32 0, align 4
@VMADDR_CID_ANY = common dso_local global i32 0, align 4
@optstring = common dso_local global i32 0, align 4
@longopts = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"client\00", align 1
@TEST_MODE_CLIENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@TEST_MODE_SERVER = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"--mode must be \22client\22 or \22server\22\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@test_cases = common dso_local global %struct.TYPE_2__* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"%s...\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca void (i32)*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %13 = load i32, i32* @TEST_MODE_UNSET, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @VMADDR_CID_ANY, align 4
  store i32 %14, i32* %9, align 4
  %15 = call i32 (...) @init_signals()
  br label %16

16:                                               ; preds = %55, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = load i32, i32* @optstring, align 4
  %20 = load i32, i32* @longopts, align 4
  %21 = call i32 @getopt_long(i32 %17, i8** %18, i32 %19, i32 %20, i32* null)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %56

25:                                               ; preds = %16
  %26 = load i32, i32* %11, align 4
  switch i32 %26, label %53 [
    i32 72, label %27
    i32 109, label %29
    i32 112, label %47
    i32 80, label %50
    i32 63, label %52
  ]

27:                                               ; preds = %25
  %28 = load i8*, i8** @optarg, align 8
  store i8* %28, i8** %6, align 8
  br label %55

29:                                               ; preds = %25
  %30 = load i8*, i8** @optarg, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @TEST_MODE_CLIENT, align 4
  store i32 %34, i32* %8, align 4
  br label %46

35:                                               ; preds = %29
  %36 = load i8*, i8** @optarg, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @TEST_MODE_SERVER, align 4
  store i32 %40, i32* %8, align 4
  br label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %44, i32* %3, align 4
  br label %140

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %33
  br label %55

47:                                               ; preds = %25
  %48 = load i8*, i8** @optarg, align 8
  %49 = call i32 @parse_cid(i8* %48)
  store i32 %49, i32* %9, align 4
  br label %55

50:                                               ; preds = %25
  %51 = load i8*, i8** @optarg, align 8
  store i8* %51, i8** %7, align 8
  br label %55

52:                                               ; preds = %25
  br label %53

53:                                               ; preds = %25, %52
  %54 = call i32 (...) @usage()
  br label %55

55:                                               ; preds = %53, %50, %47, %46, %27
  br label %16

56:                                               ; preds = %24
  %57 = load i8*, i8** %7, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = call i32 (...) @usage()
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @TEST_MODE_UNSET, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 (...) @usage()
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @VMADDR_CID_ANY, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = call i32 (...) @usage()
  br label %73

73:                                               ; preds = %71, %67
  %74 = load i8*, i8** %6, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @TEST_MODE_SERVER, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = call i32 (...) @usage()
  br label %82

82:                                               ; preds = %80, %76
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %83

83:                                               ; preds = %82, %73
  %84 = load i8*, i8** %6, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @TEST_MODE_SERVER, align 4
  %88 = icmp eq i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @control_init(i8* %84, i8* %85, i32 %89)
  store i32 0, i32* %10, align 4
  br label %91

91:                                               ; preds = %134, %83
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_cases, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %137

99:                                               ; preds = %91
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_cases, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %105)
  %107 = load i32, i32* @stdout, align 4
  %108 = call i32 @fflush(i32 %107)
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @TEST_MODE_CLIENT, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %99
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_cases, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load void (i32)*, void (i32)** %117, align 8
  store void (i32)* %118, void (i32)** %12, align 8
  br label %126

119:                                              ; preds = %99
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_cases, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  %125 = load void (i32)*, void (i32)** %124, align 8
  store void (i32)* %125, void (i32)** %12, align 8
  br label %126

126:                                              ; preds = %119, %112
  %127 = load void (i32)*, void (i32)** %12, align 8
  %128 = icmp ne void (i32)* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load void (i32)*, void (i32)** %12, align 8
  %131 = load i32, i32* %9, align 4
  call void %130(i32 %131)
  br label %132

132:                                              ; preds = %129, %126
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  br label %91

137:                                              ; preds = %91
  %138 = call i32 (...) @control_cleanup()
  %139 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %137, %41
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @init_signals(...) #1

declare dso_local i32 @getopt_long(i32, i8**, i32, i32, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @parse_cid(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @control_init(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @control_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
