; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_apply_pull_filter.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_apply_pull_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pull_filter* }
%struct.pull_filter = type { i64, i32, i32, %struct.pull_filter* }

@PUF_TYPE_ACCEPT = common dso_local global i64 0, align 8
@D_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Pushed option accepted by filter: '%s'\00", align 1
@PUF_TYPE_IGNORE = common dso_local global i64 0, align 8
@D_PUSH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Pushed option removed by filter: '%s'\00", align 1
@PUF_TYPE_REJECT = common dso_local global i64 0, align 8
@M_WARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Pushed option rejected by filter: '%s'. Restarting.\00", align 1
@SIGUSR1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Offending option received from server\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.options*, i8*)* @apply_pull_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_pull_filter(%struct.options* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pull_filter*, align 8
  store %struct.options* %0, %struct.options** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.options*, %struct.options** %4, align 8
  %8 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %93

12:                                               ; preds = %2
  %13 = load %struct.options*, %struct.options** %4, align 8
  %14 = getelementptr inbounds %struct.options, %struct.options* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.pull_filter*, %struct.pull_filter** %16, align 8
  store %struct.pull_filter* %17, %struct.pull_filter** %6, align 8
  br label %18

18:                                               ; preds = %88, %12
  %19 = load %struct.pull_filter*, %struct.pull_filter** %6, align 8
  %20 = icmp ne %struct.pull_filter* %19, null
  br i1 %20, label %21, label %92

21:                                               ; preds = %18
  %22 = load %struct.pull_filter*, %struct.pull_filter** %6, align 8
  %23 = getelementptr inbounds %struct.pull_filter, %struct.pull_filter* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PUF_TYPE_ACCEPT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.pull_filter*, %struct.pull_filter** %6, align 8
  %30 = getelementptr inbounds %struct.pull_filter, %struct.pull_filter* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pull_filter*, %struct.pull_filter** %6, align 8
  %33 = getelementptr inbounds %struct.pull_filter, %struct.pull_filter* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @strncmp(i8* %28, i32 %31, i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load i32, i32* @D_LOW, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @msg(i32 %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %39)
  store i32 1, i32* %3, align 4
  br label %93

41:                                               ; preds = %27, %21
  %42 = load %struct.pull_filter*, %struct.pull_filter** %6, align 8
  %43 = getelementptr inbounds %struct.pull_filter, %struct.pull_filter* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PUF_TYPE_IGNORE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = load i8*, i8** %5, align 8
  %49 = load %struct.pull_filter*, %struct.pull_filter** %6, align 8
  %50 = getelementptr inbounds %struct.pull_filter, %struct.pull_filter* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.pull_filter*, %struct.pull_filter** %6, align 8
  %53 = getelementptr inbounds %struct.pull_filter, %struct.pull_filter* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @strncmp(i8* %48, i32 %51, i32 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %47
  %58 = load i32, i32* @D_PUSH, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @msg(i32 %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = load i8*, i8** %5, align 8
  store i8 0, i8* %61, align 1
  store i32 1, i32* %3, align 4
  br label %93

62:                                               ; preds = %47, %41
  %63 = load %struct.pull_filter*, %struct.pull_filter** %6, align 8
  %64 = getelementptr inbounds %struct.pull_filter, %struct.pull_filter* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PUF_TYPE_REJECT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %62
  %69 = load i8*, i8** %5, align 8
  %70 = load %struct.pull_filter*, %struct.pull_filter** %6, align 8
  %71 = getelementptr inbounds %struct.pull_filter, %struct.pull_filter* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.pull_filter*, %struct.pull_filter** %6, align 8
  %74 = getelementptr inbounds %struct.pull_filter, %struct.pull_filter* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @strncmp(i8* %69, i32 %72, i32 %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %68
  %79 = load i32, i32* @M_WARN, align 4
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @msg(i32 %79, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* %80)
  %82 = load i8*, i8** %5, align 8
  store i8 0, i8* %82, align 1
  %83 = load i32, i32* @SIGUSR1, align 4
  %84 = call i32 @throw_signal_soft(i32 %83, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %93

85:                                               ; preds = %68, %62
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.pull_filter*, %struct.pull_filter** %6, align 8
  %90 = getelementptr inbounds %struct.pull_filter, %struct.pull_filter* %89, i32 0, i32 3
  %91 = load %struct.pull_filter*, %struct.pull_filter** %90, align 8
  store %struct.pull_filter* %91, %struct.pull_filter** %6, align 8
  br label %18

92:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %78, %57, %37, %11
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @msg(i32, i8*, i8*) #1

declare dso_local i32 @throw_signal_soft(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
