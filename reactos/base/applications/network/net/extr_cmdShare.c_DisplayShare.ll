; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdShare.c_DisplayShare.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdShare.c_DisplayShare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32 }

@NERR_Success = common dso_local global i64 0, align 8
@StdOut = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i32] [i32 37, i32 115, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 37, i32 108, i32 117, i32 0], align 4
@.str.2 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DisplayShare(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %4, align 8
  store i32 22, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = bitcast %struct.TYPE_3__** %4 to i32*
  %9 = call i64 @NetShareGetInfo(i32* null, i32 %7, i32 2, i32* %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @NERR_Success, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %2, align 8
  br label %72

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @PrintPaddedMessageString(i32 4731, i32 %16)
  %18 = load i32, i32* @StdOut, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32, i8*, ...) @ConPrintf(i32 %18, i8* bitcast ([4 x i32]* @.str to i8*), i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @PrintPaddedMessageString(i32 4339, i32 %23)
  %25 = load i32, i32* @StdOut, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @ConPrintf(i32 %25, i8* bitcast ([4 x i32]* @.str to i8*), i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @PrintPaddedMessageString(i32 4334, i32 %30)
  %32 = load i32, i32* @StdOut, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32, i8*, ...) @ConPrintf(i32 %32, i8* bitcast ([4 x i32]* @.str to i8*), i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @PrintPaddedMessageString(i32 4735, i32 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %15
  %44 = call i32 @PrintMessageString(i32 4736)
  br label %51

45:                                               ; preds = %15
  %46 = load i32, i32* @StdOut, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (i32, i8*, ...) @ConPrintf(i32 %46, i8* bitcast ([4 x i32]* @.str.1 to i8*), i64 %49)
  br label %51

51:                                               ; preds = %45, %43
  %52 = load i32, i32* @StdOut, align 4
  %53 = call i32 (i32, i8*, ...) @ConPrintf(i32 %52, i8* bitcast ([2 x i32]* @.str.2 to i8*))
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @PrintPaddedMessageString(i32 4737, i32 %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  %61 = load i32, i32* @StdOut, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i32, i8*, ...) @ConPrintf(i32 %61, i8* bitcast ([4 x i32]* @.str.1 to i8*), i64 %64)
  br label %66

66:                                               ; preds = %60, %51
  %67 = load i32, i32* @StdOut, align 4
  %68 = call i32 (i32, i8*, ...) @ConPrintf(i32 %67, i8* bitcast ([2 x i32]* @.str.2 to i8*))
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = call i32 @NetApiBufferFree(%struct.TYPE_3__* %69)
  %71 = load i64, i64* @NERR_Success, align 8
  store i64 %71, i64* %2, align 8
  br label %72

72:                                               ; preds = %66, %13
  %73 = load i64, i64* %2, align 8
  ret i64 %73
}

declare dso_local i64 @NetShareGetInfo(i32*, i32, i32, i32*) #1

declare dso_local i32 @PrintPaddedMessageString(i32, i32) #1

declare dso_local i32 @ConPrintf(i32, i8*, ...) #1

declare dso_local i32 @PrintMessageString(i32) #1

declare dso_local i32 @NetApiBufferFree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
