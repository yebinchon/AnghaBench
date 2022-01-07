; ModuleID = '/home/carl/AnghaBench/nanomsg/demo/extr_pthread_demo.c_server.c'
source_filename = "/home/carl/AnghaBench/nanomsg/demo/extr_pthread_demo.c_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXWORKERS = common dso_local global i32 0, align 4
@AF_SP_RAW = common dso_local global i32 0, align 4
@NN_REP = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"nn_socket: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"nn_bind: %s\0A\00", align 1
@worker = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"pthread_create: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i32, i32* @MAXWORKERS, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32*, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* @AF_SP_RAW, align 4
  %15 = load i32, i32* @NN_REP, align 4
  %16 = call i32 @nn_socket(i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 (...) @nn_errno()
  %22 = call i8* @nn_strerror(i32 %21)
  %23 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %88

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = call i64 @nn_bind(i32 %25, i8* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 (...) @nn_errno()
  %32 = call i8* @nn_strerror(i32 %31)
  %33 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @nn_close(i32 %34)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %88

36:                                               ; preds = %24
  %37 = mul nuw i64 8, %11
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memset(i32** %13, i32 0, i32 %38)
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %63, %36
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @MAXWORKERS, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %13, i64 %46
  %48 = load i32, i32* @worker, align 4
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @pthread_create(i32** %47, i32* null, i32 %48, i8* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %44
  %56 = load i32, i32* @stderr, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i8* @strerror(i32 %57)
  %59 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @nn_close(i32 %60)
  br label %66

62:                                               ; preds = %44
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %40

66:                                               ; preds = %55, %40
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %84, %66
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @MAXWORKERS, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %13, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %13, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @pthread_join(i32* %81, i32* null)
  br label %83

83:                                               ; preds = %77, %71
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %67

87:                                               ; preds = %67
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %88

88:                                               ; preds = %87, %29, %19
  %89 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nn_socket(i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i8* @nn_strerror(i32) #2

declare dso_local i32 @nn_errno(...) #2

declare dso_local i64 @nn_bind(i32, i8*) #2

declare dso_local i32 @nn_close(i32) #2

declare dso_local i32 @memset(i32**, i32, i32) #2

declare !callback !2 dso_local i32 @pthread_create(i32**, i32*, i32, i8*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @pthread_join(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
