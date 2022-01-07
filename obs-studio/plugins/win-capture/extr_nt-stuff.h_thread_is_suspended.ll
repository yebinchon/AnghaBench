; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_nt-stuff.h_thread_is_suspended.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_nt-stuff.h_thread_is_suspended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i64 }

@SystemProcessInformation = common dso_local global i32 0, align 4
@STATUS_INFO_LENGTH_MISMATCH = common dso_local global i64 0, align 8
@THREAD_STATE_WAITING = common dso_local global i64 0, align 8
@THREAD_WAIT_REASON_SUSPENDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @thread_is_suspended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_is_suspended(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 4096, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i8* @malloc(i32 %14)
  store i8* %15, i8** %7, align 8
  br label %16

16:                                               ; preds = %30, %2
  %17 = load i32, i32* @SystemProcessInformation, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @nt_query_information(i32 %17, i8* %18, i32 %19, i32* %5)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @NT_SUCCESS(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %37

25:                                               ; preds = %16
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @STATUS_INFO_LENGTH_MISMATCH, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %109

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @free(i8* %31)
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1024
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i8* @malloc(i32 %35)
  store i8* %36, i8** %7, align 8
  br label %16

37:                                               ; preds = %24
  %38 = load i8*, i8** %7, align 8
  %39 = bitcast i8* %38 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %9, align 8
  br label %40

40:                                               ; preds = %54, %37
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %3, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %61

47:                                               ; preds = %40
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %109

54:                                               ; preds = %47
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %56 = bitcast %struct.TYPE_4__* %55 to i32*
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = bitcast i32* %59 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %60, %struct.TYPE_4__** %9, align 8
  br label %40

61:                                               ; preds = %46
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %12, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %63 = bitcast %struct.TYPE_4__* %62 to i32*
  %64 = getelementptr inbounds i32, i32* %63, i64 16
  %65 = bitcast i32* %64 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %65, %struct.TYPE_3__** %11, align 8
  store i32 0, i32* %13, align 4
  br label %66

66:                                               ; preds = %87, %61
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %66
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %4, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %72
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  store %struct.TYPE_3__* %85, %struct.TYPE_3__** %12, align 8
  br label %90

86:                                               ; preds = %72
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  br label %66

90:                                               ; preds = %81, %66
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %92 = icmp ne %struct.TYPE_3__* %91, null
  br i1 %92, label %93, label %108

93:                                               ; preds = %90
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @THREAD_STATE_WAITING, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @THREAD_WAIT_REASON_SUSPENDED, align 8
  %104 = icmp eq i64 %102, %103
  br label %105

105:                                              ; preds = %99, %93
  %106 = phi i1 [ false, %93 ], [ %104, %99 ]
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %105, %90
  br label %109

109:                                              ; preds = %108, %53, %29
  %110 = load i8*, i8** %7, align 8
  %111 = call i32 @free(i8* %110)
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @nt_query_information(i32, i8*, i32, i32*) #1

declare dso_local i64 @NT_SUCCESS(i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
