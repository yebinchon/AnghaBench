; ModuleID = '/home/carl/AnghaBench/netdata/backends/extr_backends.c_backend_select_type.c'
source_filename = "/home/carl/AnghaBench/netdata/backends/extr_backends.c_backend_select_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"graphite\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"graphite:plaintext\00", align 1
@BACKEND_TYPE_GRAPHITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"opentsdb\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"opentsdb:telnet\00", align 1
@BACKEND_TYPE_OPENTSDB_USING_TELNET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"opentsdb:http\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"opentsdb:https\00", align 1
@BACKEND_TYPE_OPENTSDB_USING_HTTP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"json\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"json:plaintext\00", align 1
@BACKEND_TYPE_JSON = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"prometheus_remote_write\00", align 1
@BACKEND_TYPE_PROMETEUS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"kinesis\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"kinesis:plaintext\00", align 1
@BACKEND_TYPE_KINESIS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"mongodb\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"mongodb:plaintext\00", align 1
@BACKEND_TYPE_MONGODB = common dso_local global i32 0, align 4
@BACKEND_TYPE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @backend_select_type(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @BACKEND_TYPE_GRAPHITE, align 4
  store i32 %12, i32* %2, align 4
  br label %77

13:                                               ; preds = %7
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17, %13
  %22 = load i32, i32* @BACKEND_TYPE_OPENTSDB_USING_TELNET, align 4
  store i32 %22, i32* %2, align 4
  br label %77

23:                                               ; preds = %17
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27, %23
  %32 = load i32, i32* @BACKEND_TYPE_OPENTSDB_USING_HTTP, align 4
  store i32 %32, i32* %2, align 4
  br label %77

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* @BACKEND_TYPE_JSON, align 4
  store i32 %42, i32* %2, align 4
  br label %77

43:                                               ; preds = %37
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @BACKEND_TYPE_PROMETEUS, align 4
  store i32 %48, i32* %2, align 4
  br label %77

49:                                               ; preds = %43
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* @BACKEND_TYPE_KINESIS, align 4
  store i32 %58, i32* %2, align 4
  br label %77

59:                                               ; preds = %53
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i8*, i8** %3, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63, %59
  %68 = load i32, i32* @BACKEND_TYPE_MONGODB, align 4
  store i32 %68, i32* %2, align 4
  br label %77

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* @BACKEND_TYPE_UNKNOWN, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %67, %57, %47, %41, %31, %21, %11
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
