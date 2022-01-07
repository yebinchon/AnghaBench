; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/networking/timestamping/extr_rxtimestamp.c_config_so_flags.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/networking/timestamping/extr_rxtimestamp.c_config_so_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i32, i32, i32 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to enable SO_REUSEADDR\00", align 1
@SO_TIMESTAMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to enable SO_TIMESTAMP\00", align 1
@SO_TIMESTAMPNS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to enable SO_TIMESTAMPNS\00", align 1
@SO_TIMESTAMPING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to set SO_TIMESTAMPING\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @config_so_flags(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.options, align 4
  %5 = alloca { i64, i32 }, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 0
  store i64 %1, i64* %8, align 4
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 1
  store i32 %2, i32* %9, align 4
  %10 = bitcast %struct.options* %4 to i8*
  %11 = bitcast { i64, i32 }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 12, i1 false)
  store i32 %0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @SOL_SOCKET, align 4
  %14 = load i32, i32* @SO_REUSEADDR, align 4
  %15 = call i64 @setsockopt(i32 %12, i32 %13, i32 %14, i32* %7, i32 4)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 @error(i32 1, i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %3
  %21 = getelementptr inbounds %struct.options, %struct.options* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @SOL_SOCKET, align 4
  %27 = load i32, i32* @SO_TIMESTAMP, align 4
  %28 = getelementptr inbounds %struct.options, %struct.options* %4, i32 0, i32 0
  %29 = call i64 @setsockopt(i32 %25, i32 %26, i32 %27, i32* %28, i32 4)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 @error(i32 1, i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %24, %20
  %35 = getelementptr inbounds %struct.options, %struct.options* %4, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @SOL_SOCKET, align 4
  %41 = load i32, i32* @SO_TIMESTAMPNS, align 4
  %42 = getelementptr inbounds %struct.options, %struct.options* %4, i32 0, i32 1
  %43 = call i64 @setsockopt(i32 %39, i32 %40, i32 %41, i32* %42, i32 4)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @errno, align 4
  %47 = call i32 @error(i32 1, i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %38, %34
  %49 = getelementptr inbounds %struct.options, %struct.options* %4, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @SOL_SOCKET, align 4
  %55 = load i32, i32* @SO_TIMESTAMPING, align 4
  %56 = getelementptr inbounds %struct.options, %struct.options* %4, i32 0, i32 2
  %57 = call i64 @setsockopt(i32 %53, i32 %54, i32 %55, i32* %56, i32 4)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* @errno, align 4
  %61 = call i32 @error(i32 1, i32 %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %52, %48
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #2

declare dso_local i32 @error(i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
