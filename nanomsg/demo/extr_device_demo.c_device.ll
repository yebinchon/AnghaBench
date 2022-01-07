; ModuleID = '/home/carl/AnghaBench/nanomsg/demo/extr_device_demo.c_device.c'
source_filename = "/home/carl/AnghaBench/nanomsg/demo/extr_device_demo.c_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_SP_RAW = common dso_local global i32 0, align 4
@NN_REQ = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"nn_socket: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"nn_bind1(%s): %s\0A\00", align 1
@NN_REP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"nn_bind2(%s): %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"nn_device: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @device(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @AF_SP_RAW, align 4
  %10 = load i32, i32* @NN_REQ, align 4
  %11 = call i32 @nn_socket(i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 (...) @nn_errno()
  %17 = call i8* @nn_strerror(i32 %16)
  %18 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 -1, i32* %3, align 4
  br label %63

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @nn_bind(i32 %20, i8* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* @stderr, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 (...) @nn_errno()
  %28 = call i8* @nn_strerror(i32 %27)
  %29 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %26, i8* %28)
  store i32 -1, i32* %3, align 4
  br label %63

30:                                               ; preds = %19
  %31 = load i32, i32* @AF_SP_RAW, align 4
  %32 = load i32, i32* @NN_REP, align 4
  %33 = call i32 @nn_socket(i32 %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 (...) @nn_errno()
  %39 = call i8* @nn_strerror(i32 %38)
  %40 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %39)
  store i32 -1, i32* %3, align 4
  br label %63

41:                                               ; preds = %30
  %42 = load i32, i32* %7, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = call i64 @nn_bind(i32 %42, i8* %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32, i32* @stderr, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 (...) @nn_errno()
  %50 = call i8* @nn_strerror(i32 %49)
  %51 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %48, i8* %50)
  store i32 -1, i32* %3, align 4
  br label %63

52:                                               ; preds = %41
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @nn_device(i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 (...) @nn_errno()
  %60 = call i8* @nn_strerror(i32 %59)
  %61 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  store i32 -1, i32* %3, align 4
  br label %63

62:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %57, %46, %36, %24, %14
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @nn_socket(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @nn_strerror(i32) #1

declare dso_local i32 @nn_errno(...) #1

declare dso_local i64 @nn_bind(i32, i8*) #1

declare dso_local i64 @nn_device(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
