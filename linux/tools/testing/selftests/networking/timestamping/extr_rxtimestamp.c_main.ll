; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/networking/timestamping/extr_rxtimestamp.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/networking/timestamping/extr_rxtimestamp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@long_options = common dso_local global i32 0, align 4
@test_cases = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Invalid test case: %d\00", align 1
@op_size = common dso_local global i8* null, align 8
@socket_types = common dso_local global %struct.TYPE_7__* null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to parse parameters.\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Testing %s...\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Starting testcase %d...\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"FAILURE in test case \00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"PASSED.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %75, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = load i32, i32* @long_options, align 4
  %17 = call signext i8 @getopt_long(i32 %14, i8** %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %16, i32* %8)
  store i8 %17, i8* %12, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %76

20:                                               ; preds = %13
  %21 = load i8, i8* %12, align 1
  %22 = sext i8 %21 to i32
  switch i32 %22, label %73 [
    i32 108, label %23
    i32 110, label %41
    i32 115, label %58
    i32 116, label %61
    i32 117, label %65
    i32 105, label %69
  ]

23:                                               ; preds = %20
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %37, %23
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** @test_cases, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load i32, i32* %11, align 4
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** @test_cases, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 %34
  %36 = call i32 @print_test_case(%struct.TYPE_7__* %35)
  br label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %24

40:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %166

41:                                               ; preds = %20
  %42 = load i32, i32* @optarg, align 4
  %43 = call i8* @atoi(i32 %42)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** @test_cases, align 8
  %47 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %46)
  %48 = icmp sge i32 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* %11, align 4
  %51 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %49, %41
  store i32 0, i32* %7, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** @test_cases, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %75

58:                                               ; preds = %20
  %59 = load i32, i32* @optarg, align 4
  %60 = call i8* @atoi(i32 %59)
  store i8* %60, i8** @op_size, align 8
  br label %75

61:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** @socket_types, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  br label %75

65:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** @socket_types, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  br label %75

69:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** @socket_types, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %75

73:                                               ; preds = %20
  %74 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %69, %65, %61, %58, %52
  br label %13

76:                                               ; preds = %13
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %156, %76
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** @socket_types, align 8
  %80 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %79)
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %159

82:                                               ; preds = %77
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %82
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** @socket_types, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %85
  br label %156

94:                                               ; preds = %85, %82
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** @socket_types, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %100)
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %152, %94
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** @test_cases, align 8
  %105 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %104)
  %106 = icmp slt i32 %103, %105
  br i1 %106, label %107, label %155

107:                                              ; preds = %102
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %107
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** @test_cases, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %110
  br label %152

119:                                              ; preds = %110, %107
  %120 = load i32, i32* %11, align 4
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %120)
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** @socket_types, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i64 %124
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** @test_cases, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i64 %128
  %130 = bitcast %struct.TYPE_7__* %125 to { i32, i8* }*
  %131 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %130, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = bitcast %struct.TYPE_7__* %129 to { i32, i8* }*
  %136 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %135, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = call i64 @run_test_case(i32 %132, i8* %134, i32 %137, i8* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %119
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** @test_cases, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 %148
  %150 = call i32 @print_test_case(%struct.TYPE_7__* %149)
  br label %151

151:                                              ; preds = %142, %119
  br label %152

152:                                              ; preds = %151, %118
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %11, align 4
  br label %102

155:                                              ; preds = %102
  br label %156

156:                                              ; preds = %155, %93
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  br label %77

159:                                              ; preds = %77
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %159
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %159
  %165 = load i32, i32* %9, align 4
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %164, %40
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local signext i8 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_test_case(%struct.TYPE_7__*) #1

declare dso_local i8* @atoi(i32) #1

declare dso_local i32 @error(i32, i32, i8*, ...) #1

declare dso_local i64 @run_test_case(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
