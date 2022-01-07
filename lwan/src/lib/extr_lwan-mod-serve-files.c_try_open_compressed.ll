; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_try_open_compressed.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_try_open_compressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serve_files_priv = type { i32 }
%struct.stat = type { i64, i64, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s.gz\00", align 1
@open_mode = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.serve_files_priv*, %struct.stat*, i64*)* @try_open_compressed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_open_compressed(i8* %0, %struct.serve_files_priv* %1, %struct.stat* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.serve_files_priv*, align 8
  %8 = alloca %struct.stat*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.stat, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.serve_files_priv* %1, %struct.serve_files_priv** %7, align 8
  store %struct.stat* %2, %struct.stat** %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load i32, i32* @PATH_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32, i32* @PATH_MAX, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = call i32 @snprintf(i8* %19, i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @PATH_MAX, align 4
  %29 = icmp sge i32 %27, %28
  br label %30

30:                                               ; preds = %26, %4
  %31 = phi i1 [ true, %4 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @UNLIKELY(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %101

36:                                               ; preds = %30
  %37 = load %struct.serve_files_priv*, %struct.serve_files_priv** %7, align 8
  %38 = getelementptr inbounds %struct.serve_files_priv, %struct.serve_files_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @open_mode, align 4
  %41 = call i32 @openat(i32 %39, i8* %19, i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp slt i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i64 @UNLIKELY(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %101

48:                                               ; preds = %36
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @fstat(i32 %49, %struct.stat* %12)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i64 @UNLIKELY(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %98

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.stat*, %struct.stat** %8, align 8
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @UNLIKELY(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %98

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @is_world_readable(i32 %70)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i64 @UNLIKELY(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %98

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.stat*, %struct.stat** %8, align 8
  %82 = getelementptr inbounds %struct.stat, %struct.stat* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @is_compression_worthy(i64 %80, i64 %83)
  %85 = call i64 @LIKELY(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64*, i64** %9, align 8
  store i64 %89, i64* %90, align 8
  %91 = load %struct.serve_files_priv*, %struct.serve_files_priv** %7, align 8
  %92 = load i32, i32* %14, align 4
  %93 = load i64*, i64** %9, align 8
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @try_readahead(%struct.serve_files_priv* %91, i32 %92, i64 %94)
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %105

97:                                               ; preds = %78
  br label %98

98:                                               ; preds = %97, %77, %67, %56
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @close(i32 %99)
  br label %101

101:                                              ; preds = %98, %47, %35
  %102 = load i64*, i64** %9, align 8
  store i64 0, i64* %102, align 8
  %103 = load i32, i32* @ENOENT, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %105

105:                                              ; preds = %101, %87
  %106 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i64 @UNLIKELY(i32) #2

declare dso_local i32 @openat(i32, i8*, i32) #2

declare dso_local i32 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @is_world_readable(i32) #2

declare dso_local i64 @LIKELY(i32) #2

declare dso_local i32 @is_compression_worthy(i64, i64) #2

declare dso_local i32 @try_readahead(%struct.serve_files_priv*, i32, i64) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
