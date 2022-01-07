; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_sig.c_print_signal.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_sig.c_print_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signal_info = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"process\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"connection failed(soft)\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"%s[%s,%s] received, %s exiting\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"%s[%s,%s] received, %s restarting\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Unknown signal %d [%s,%s] received by %s\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Unknown signal received\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_signal(%struct.signal_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.signal_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.signal_info* %0, %struct.signal_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.signal_info*, %struct.signal_info** %4, align 8
  %11 = icmp ne %struct.signal_info* %10, null
  br i1 %11, label %12, label %73

12:                                               ; preds = %3
  %13 = load %struct.signal_info*, %struct.signal_info** %4, align 8
  %14 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.signal_info*, %struct.signal_info** %4, align 8
  %19 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  br label %22

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i8* [ %20, %17 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %21 ]
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  br label %29

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i8* [ %27, %26 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %28 ]
  store i8* %30, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %31 = load %struct.signal_info*, %struct.signal_info** %4, align 8
  %32 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %37 [
    i32 128, label %34
    i32 129, label %35
    i32 130, label %36
  ]

34:                                               ; preds = %29
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %39

35:                                               ; preds = %29
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %39

36:                                               ; preds = %29
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %39

37:                                               ; preds = %29
  %38 = call i32 @ASSERT(i32 0)
  br label %39

39:                                               ; preds = %37, %36, %35, %34
  %40 = load %struct.signal_info*, %struct.signal_info** %4, align 8
  %41 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %63 [
    i32 133, label %43
    i32 132, label %43
    i32 134, label %53
    i32 131, label %53
  ]

43:                                               ; preds = %39, %39
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.signal_info*, %struct.signal_info** %4, align 8
  %46 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @signal_name(i32 %47, i32 1)
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 (i32, i8*, ...) @msg(i32 %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %48, i8* %49, i8* %50, i8* %51)
  br label %72

53:                                               ; preds = %39, %39
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.signal_info*, %struct.signal_info** %4, align 8
  %56 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @signal_name(i32 %57, i32 1)
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 (i32, i8*, ...) @msg(i32 %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %58, i8* %59, i8* %60, i8* %61)
  br label %72

63:                                               ; preds = %39
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.signal_info*, %struct.signal_info** %4, align 8
  %66 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %9, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 (i32, i8*, ...) @msg(i32 %64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %67, i8* %68, i8* %69, i8* %70)
  br label %72

72:                                               ; preds = %63, %53, %43
  br label %76

73:                                               ; preds = %3
  %74 = load i32, i32* %6, align 4
  %75 = call i32 (i32, i8*, ...) @msg(i32 %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %72
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i32 @signal_name(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
