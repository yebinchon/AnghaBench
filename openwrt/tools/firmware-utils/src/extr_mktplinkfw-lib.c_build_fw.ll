; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mktplinkfw-lib.c_build_fw.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mktplinkfw-lib.c_build_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@kernel_len = common dso_local global i64 0, align 8
@combined = common dso_local global i64 0, align 8
@layout = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"no memory for buffer\0A\00", align 1
@kernel_info = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@rootfs_ofs = common dso_local global i32 0, align 4
@rootfs_info = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@add_jffs2_eof = common dso_local global i64 0, align 8
@strip_padding = common dso_local global i32 0, align 4
@ofname = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_fw(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %8, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* @kernel_len, align 8
  %11 = add i64 %9, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %7, align 4
  %13 = load i64, i64* @combined, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %21

17:                                               ; preds = %1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @layout, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %15
  %22 = load i32, i32* %3, align 4
  %23 = call i8* @malloc(i32 %22)
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %88

28:                                               ; preds = %21
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @memset(i8* %29, i32 255, i32 %30)
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* %2, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %5, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @read_to_buf(%struct.TYPE_5__* @kernel_info, i8* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %85

40:                                               ; preds = %28
  %41 = load i64, i64* @combined, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %67, label %43

43:                                               ; preds = %40
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* @rootfs_ofs, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8* %47, i8** %5, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @read_to_buf(%struct.TYPE_5__* @rootfs_info, i8* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %85

53:                                               ; preds = %43
  %54 = load i32, i32* @rootfs_ofs, align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rootfs_info, i32 0, i32 0), align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %7, align 4
  %57 = load i64, i64* @add_jffs2_eof, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load i8*, i8** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @layout, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pad_jffs2(i8* %60, i32 %61, i32 %64)
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %59, %53
  br label %67

67:                                               ; preds = %66, %40
  %68 = load i32, i32* @strip_padding, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %3, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %70, %67
  %73 = load i8*, i8** %4, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @fill_header(i8* %73, i32 %74)
  %76 = load i32, i32* @ofname, align 4
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @write_fw(i32 %76, i8* %77, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  br label %85

83:                                               ; preds = %72
  %84 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %83, %82, %52, %39
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @free(i8* %86)
  br label %88

88:                                               ; preds = %85, %26
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @read_to_buf(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @pad_jffs2(i8*, i32, i32) #1

declare dso_local i32 @fill_header(i8*, i32) #1

declare dso_local i32 @write_fw(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
