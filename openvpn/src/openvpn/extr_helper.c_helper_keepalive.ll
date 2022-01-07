; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_helper.c_helper_keepalive.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_helper.c_helper_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i32, i32, i32, i32, i64, i32, i8* }

@M_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"--keepalive parameters must be > 0\00", align 1
@.str.1 = private unnamed_addr constant [221 x i8] c"the second parameter to --keepalive (restart timeout=%d) must be at least twice the value of the first parameter (ping interval=%d).  A ratio of 1:5 or 1:6 would be even better.  Recommended setting is --keepalive 10 60.\00", align 1
@.str.2 = private unnamed_addr constant [143 x i8] c"--keepalive conflicts with --ping, --ping-exit, or --ping-restart.  If you use --keepalive, you don't need any of the other --ping directives.\00", align 1
@MODE_POINT_TO_POINT = common dso_local global i64 0, align 8
@PING_RESTART = common dso_local global i8* null, align 8
@MODE_SERVER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @helper_keepalive(%struct.options* %0) #0 {
  %2 = alloca %struct.options*, align 8
  store %struct.options* %0, %struct.options** %2, align 8
  %3 = load %struct.options*, %struct.options** %2, align 8
  %4 = getelementptr inbounds %struct.options, %struct.options* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.options*, %struct.options** %2, align 8
  %9 = getelementptr inbounds %struct.options, %struct.options* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %79

12:                                               ; preds = %7, %1
  %13 = load %struct.options*, %struct.options** %2, align 8
  %14 = getelementptr inbounds %struct.options, %struct.options* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.options*, %struct.options** %2, align 8
  %19 = getelementptr inbounds %struct.options, %struct.options* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %12
  %23 = load i32, i32* @M_USAGE, align 4
  %24 = call i32 (i32, i8*, ...) @msg(i32 %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.options*, %struct.options** %2, align 8
  %27 = getelementptr inbounds %struct.options, %struct.options* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %28, 2
  %30 = load %struct.options*, %struct.options** %2, align 8
  %31 = getelementptr inbounds %struct.options, %struct.options* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %25
  %35 = load i32, i32* @M_USAGE, align 4
  %36 = load %struct.options*, %struct.options** %2, align 8
  %37 = getelementptr inbounds %struct.options, %struct.options* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.options*, %struct.options** %2, align 8
  %40 = getelementptr inbounds %struct.options, %struct.options* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i32, i8*, ...) @msg(i32 %35, i8* getelementptr inbounds ([221 x i8], [221 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %34, %25
  %44 = load %struct.options*, %struct.options** %2, align 8
  %45 = getelementptr inbounds %struct.options, %struct.options* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.options*, %struct.options** %2, align 8
  %50 = getelementptr inbounds %struct.options, %struct.options* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48, %43
  %54 = load i32, i32* @M_USAGE, align 4
  %55 = call i32 (i32, i8*, ...) @msg(i32 %54, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %48
  %57 = load %struct.options*, %struct.options** %2, align 8
  %58 = getelementptr inbounds %struct.options, %struct.options* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MODE_POINT_TO_POINT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %56
  %63 = load i8*, i8** @PING_RESTART, align 8
  %64 = load %struct.options*, %struct.options** %2, align 8
  %65 = getelementptr inbounds %struct.options, %struct.options* %64, i32 0, i32 6
  store i8* %63, i8** %65, align 8
  %66 = load %struct.options*, %struct.options** %2, align 8
  %67 = getelementptr inbounds %struct.options, %struct.options* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.options*, %struct.options** %2, align 8
  %70 = getelementptr inbounds %struct.options, %struct.options* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.options*, %struct.options** %2, align 8
  %72 = getelementptr inbounds %struct.options, %struct.options* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.options*, %struct.options** %2, align 8
  %75 = getelementptr inbounds %struct.options, %struct.options* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  br label %78

76:                                               ; preds = %56
  %77 = call i32 @ASSERT(i32 0)
  br label %78

78:                                               ; preds = %76, %62
  br label %79

79:                                               ; preds = %78, %7
  ret void
}

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
