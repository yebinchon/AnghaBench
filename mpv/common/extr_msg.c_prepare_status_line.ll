; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_msg.c_prepare_status_line.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_msg.c_prepare_status_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log_root = type { i64, i64 }

@stderr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"\0D\1B[K\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"\1B[A\0D\1B[K\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_log_root*, i8*)* @prepare_status_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_status_line(%struct.mp_log_root* %0, i8* %1) #0 {
  %3 = alloca %struct.mp_log_root*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.mp_log_root* %0, %struct.mp_log_root** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i32*, i32** @stderr, align 8
  store i32* %12, i32** %5, align 8
  store i64 1, i64* %6, align 8
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %7, align 8
  br label %14

14:                                               ; preds = %2, %20
  %15 = load i8*, i8** %7, align 8
  %16 = call i8* @strchr(i8* %15, i8 signext 10)
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %25

20:                                               ; preds = %14
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %7, align 8
  br label %14

25:                                               ; preds = %19
  %26 = load %struct.mp_log_root*, %struct.mp_log_root** %3, align 8
  %27 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  %34 = load i64, i64* %8, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %80

37:                                               ; preds = %33, %25
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @MPMAX(i64 %38, i64 %39)
  %41 = load %struct.mp_log_root*, %struct.mp_log_root** %3, align 8
  %42 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @MPMIN(i64 %40, i64 %43)
  store i64 %44, i64* %9, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @fprintf(i32* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i64 1, i64* %10, align 8
  br label %47

47:                                               ; preds = %54, %37
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @fprintf(i32* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %10, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %10, align 8
  br label %47

57:                                               ; preds = %47
  %58 = load i64, i64* %6, align 8
  store i64 %58, i64* %11, align 8
  br label %59

59:                                               ; preds = %66, %57
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %9, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @fprintf(i32* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %11, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %11, align 8
  br label %59

69:                                               ; preds = %59
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.mp_log_root*, %struct.mp_log_root** %3, align 8
  %72 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.mp_log_root*, %struct.mp_log_root** %3, align 8
  %74 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i64 @MPMAX(i64 %75, i64 %76)
  %78 = load %struct.mp_log_root*, %struct.mp_log_root** %3, align 8
  %79 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %69, %36
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @MPMIN(i64, i64) #1

declare dso_local i64 @MPMAX(i64, i64) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
