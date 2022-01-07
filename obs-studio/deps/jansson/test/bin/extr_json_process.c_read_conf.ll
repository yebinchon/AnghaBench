; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/bin/extr_json_process.c_read_conf.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/bin/extr_json_process.c_read_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"export \00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid configuration line\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"JSON_INDENT\00", align 1
@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"JSON_COMPACT\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"JSON_ENSURE_ASCII\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"JSON_PRESERVE_ORDER\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"JSON_SORT_KEYS\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"JSON_REAL_PRECISION\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"STRIP\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"HASHSEED\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @read_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_conf(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i8* @loadfile(i32* %6)
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @strtok(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %4, align 8
  br label %10

10:                                               ; preds = %85, %1
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %87

13:                                               ; preds = %10
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strncmp(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %85

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 61)
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %87

25:                                               ; preds = %18
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %5, align 8
  store i8 0, i8* %26, align 1
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = call i8* @atoi(i8* %32)
  store i8* %33, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 8), align 8
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = call i8* @atoi(i8* %39)
  store i8* %40, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 7), align 8
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %5, align 8
  %47 = call i8* @atoi(i8* %46)
  store i8* %47, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 6), align 8
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %5, align 8
  %54 = call i8* @atoi(i8* %53)
  store i8* %54, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 5), align 8
  br label %55

55:                                               ; preds = %52, %48
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %5, align 8
  %61 = call i8* @atoi(i8* %60)
  store i8* %61, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 4), align 8
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load i8*, i8** %5, align 8
  %68 = call i8* @atoi(i8* %67)
  store i8* %68, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 3), align 8
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = load i8*, i8** %5, align 8
  %75 = call i8* @atoi(i8* %74)
  store i8* %75, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 2), align 8
  br label %76

76:                                               ; preds = %73, %69
  %77 = load i8*, i8** %4, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %81 = load i8*, i8** %5, align 8
  %82 = call i8* @atoi(i8* %81)
  store i8* %82, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 1), align 8
  br label %84

83:                                               ; preds = %76
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  br label %84

84:                                               ; preds = %83, %80
  br label %85

85:                                               ; preds = %84, %17
  %86 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %86, i8** %4, align 8
  br label %10

87:                                               ; preds = %23, %10
  %88 = load i8*, i8** %3, align 8
  %89 = call i32 @free(i8* %88)
  ret void
}

declare dso_local i8* @loadfile(i32*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
