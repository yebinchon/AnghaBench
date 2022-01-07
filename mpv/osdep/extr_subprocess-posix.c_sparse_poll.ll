; ModuleID = '/home/carl/AnghaBench/mpv/osdep/extr_subprocess-posix.c_sparse_poll.c'
source_filename = "/home/carl/AnghaBench/mpv/osdep/extr_subprocess-posix.c_sparse_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pollfd*, i32, i32)* @sparse_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparse_poll(%struct.pollfd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pollfd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [10 x %struct.pollfd], align 16
  %9 = alloca [10 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pollfd* %0, %struct.pollfd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds [10 x %struct.pollfd], [10 x %struct.pollfd]* %8, i64 0, i64 0
  %16 = call i32 @MP_ARRAY_SIZE(%struct.pollfd* %15)
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %94

19:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %51, %19
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %54

24:                                               ; preds = %20
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %26
  store i32 -1, i32* %27, align 4
  %28 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %28, i64 %30
  %32 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %51

36:                                               ; preds = %24
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %39
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds [10 x %struct.pollfd], [10 x %struct.pollfd]* %8, i64 0, i64 %43
  %45 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %45, i64 %47
  %49 = bitcast %struct.pollfd* %44 to i8*
  %50 = bitcast %struct.pollfd* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %49, i8* align 8 %50, i64 16, i1 false)
  br label %51

51:                                               ; preds = %36, %35
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %20

54:                                               ; preds = %20
  %55 = getelementptr inbounds [10 x %struct.pollfd], [10 x %struct.pollfd]* %8, i64 0, i64 0
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @poll(%struct.pollfd* %55, i32 %56, i32 %57)
  store i32 %58, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %59

59:                                               ; preds = %89, %54
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %92

63:                                               ; preds = %59
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* %12, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %82

73:                                               ; preds = %69, %63
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [10 x %struct.pollfd], [10 x %struct.pollfd]* %8, i64 0, i64 %78
  %80 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  br label %82

82:                                               ; preds = %73, %72
  %83 = phi i32 [ 0, %72 ], [ %81, %73 ]
  %84 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %84, i64 %86
  %88 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %87, i32 0, i32 1
  store i32 %83, i32* %88, align 8
  br label %89

89:                                               ; preds = %82
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  br label %59

92:                                               ; preds = %59
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %92, %18
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @MP_ARRAY_SIZE(%struct.pollfd*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
