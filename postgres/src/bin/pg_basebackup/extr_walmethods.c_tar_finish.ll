; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_walmethods.c_tar_finish.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_walmethods.c_tar_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32, i64, %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_5__ = type { i64, i64, i32* }

@tar_data = common dso_local global %struct.TYPE_4__* null, align 8
@CLOSE_NORMAL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i64 0, align 8
@ZLIB_OUT_SIZE = common dso_local global i64 0, align 8
@Z_FINISH = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i64 0, align 8
@Z_STREAM_END = common dso_local global i32 0, align 4
@Z_STREAM_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tar_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tar_finish() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = call i32 (...) @tar_clear_error()
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tar_data, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tar_data, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 6
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @CLOSE_NORMAL, align 4
  %13 = call i64 @tar_close(i64 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %81

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %16, %0
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %19 = call i32 @MemSet(i8* %18, i32 0, i32 1024)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tar_data, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %17
  store i64 0, i64* @errno, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tar_data, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %29 = call i64 @write(i32 %27, i8* %28, i64 1024)
  %30 = icmp ne i64 %29, 1024
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i64, i64* @errno, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i64, i64* @ENOSPC, align 8
  store i64 %35, i64* @errno, align 8
  br label %36

36:                                               ; preds = %34, %31
  store i32 0, i32* %1, align 4
  br label %81

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37, %17
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tar_data, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tar_data, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @fsync(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 0, i32* %1, align 4
  br label %81

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %38
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tar_data, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @close(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 0, i32* %1, align 4
  br label %81

58:                                               ; preds = %51
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tar_data, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 -1, i32* %60, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tar_data, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %58
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tar_data, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @fsync_fname(i32 %68, i32 0)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 0, i32* %1, align 4
  br label %81

72:                                               ; preds = %65
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tar_data, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @fsync_parent_path(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 0, i32* %1, align 4
  br label %81

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %58
  store i32 1, i32* %1, align 4
  br label %81

81:                                               ; preds = %80, %78, %71, %57, %49, %36, %15
  %82 = load i32, i32* %1, align 4
  ret i32 %82
}

declare dso_local i32 @tar_clear_error(...) #1

declare dso_local i64 @tar_close(i64, i32) #1

declare dso_local i32 @MemSet(i8*, i32, i32) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i64 @fsync(i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i64 @fsync_fname(i32, i32) #1

declare dso_local i64 @fsync_parent_path(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
