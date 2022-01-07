; ModuleID = '/home/carl/AnghaBench/netdata/health/extr_health_config.c_health_parse_options.c'
source_filename = "/home/carl/AnghaBench/netdata/health/extr_health_config.c_health_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"no-clear-notification\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"no-clear\00", align 1
@RRDCALC_FLAG_NO_CLEAR_NOTIFICATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Ignoring unknown alarm option '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @health_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @health_parse_options(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [101 x i8], align 16
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = bitcast [101 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 101, i1 false)
  br label %7

7:                                                ; preds = %74, %1
  %8 = load i8*, i8** %2, align 8
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %75

11:                                               ; preds = %7
  %12 = getelementptr inbounds [101 x i8], [101 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %12, align 16
  br label %13

13:                                               ; preds = %25, %11
  %14 = load i8*, i8** %2, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i8*, i8** %2, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i64 @isspace(i8 signext %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i1 [ false, %13 ], [ %22, %18 ]
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load i8*, i8** %2, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %2, align 8
  br label %13

28:                                               ; preds = %23
  store i64 0, i64* %5, align 8
  br label %29

29:                                               ; preds = %45, %28
  %30 = load i8*, i8** %2, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i64, i64* %5, align 8
  %36 = icmp ult i64 %35, 100
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i8*, i8** %2, align 8
  %39 = load i8, i8* %38, align 1
  %40 = call i64 @isspace(i8 signext %39)
  %41 = icmp ne i64 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %37, %34, %29
  %44 = phi i1 [ false, %34 ], [ false, %29 ], [ %42, %37 ]
  br i1 %44, label %45, label %52

45:                                               ; preds = %43
  %46 = load i8*, i8** %2, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %2, align 8
  %48 = load i8, i8* %46, align 1
  %49 = load i64, i64* %5, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %5, align 8
  %51 = getelementptr inbounds [101 x i8], [101 x i8]* %4, i64 0, i64 %49
  store i8 %48, i8* %51, align 1
  br label %29

52:                                               ; preds = %43
  %53 = getelementptr inbounds [101 x i8], [101 x i8]* %4, i64 0, i64 0
  %54 = load i8, i8* %53, align 16
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %52
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds [101 x i8], [101 x i8]* %4, i64 0, i64 %57
  store i8 0, i8* %58, align 1
  %59 = getelementptr inbounds [101 x i8], [101 x i8]* %4, i64 0, i64 0
  %60 = call i32 @strcasecmp(i8* %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = getelementptr inbounds [101 x i8], [101 x i8]* %4, i64 0, i64 0
  %64 = call i32 @strcasecmp(i8* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62, %56
  %67 = load i32, i32* @RRDCALC_FLAG_NO_CLEAR_NOTIFICATION, align 4
  %68 = load i32, i32* %3, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %3, align 4
  br label %73

70:                                               ; preds = %62
  %71 = getelementptr inbounds [101 x i8], [101 x i8]* %4, i64 0, i64 0
  %72 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %70, %66
  br label %74

74:                                               ; preds = %73, %52
  br label %7

75:                                               ; preds = %7
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @isspace(i8 signext) #2

declare dso_local i32 @strcasecmp(i8*, i8*) #2

declare dso_local i32 @error(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
