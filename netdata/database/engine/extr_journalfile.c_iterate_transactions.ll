; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_journalfile.c_iterate_transactions.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_journalfile.c_iterate_transactions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_instance = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.rrdengine_journalfile = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }

@RRDFILE_ALIGNMENT = common dso_local global i32 0, align 4
@READAHEAD_BYTES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"posix_memalign:%s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"uv_fs_read: %s\00", align 1
@RRDENG_BLOCK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rrdengine_instance*, %struct.rrdengine_journalfile*)* @iterate_transactions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iterate_transactions(%struct.rrdengine_instance* %0, %struct.rrdengine_journalfile* %1) #0 {
  %3 = alloca %struct.rrdengine_instance*, align 8
  %4 = alloca %struct.rrdengine_journalfile*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__, align 8
  %16 = alloca i32, align 4
  store %struct.rrdengine_instance* %0, %struct.rrdengine_instance** %3, align 8
  store %struct.rrdengine_journalfile* %1, %struct.rrdengine_journalfile** %4, align 8
  %17 = load %struct.rrdengine_journalfile*, %struct.rrdengine_journalfile** %4, align 8
  %18 = getelementptr inbounds %struct.rrdengine_journalfile, %struct.rrdengine_journalfile* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %struct.rrdengine_journalfile*, %struct.rrdengine_journalfile** %4, align 8
  %21 = getelementptr inbounds %struct.rrdengine_journalfile, %struct.rrdengine_journalfile* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  store i32 1, i32* %10, align 4
  %23 = bitcast i8** %13 to i8*
  %24 = load i32, i32* @RRDFILE_ALIGNMENT, align 4
  %25 = load i64, i64* @READAHEAD_BYTES, align 8
  %26 = call i32 @posix_memalign(i8* %23, i32 %24, i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @strerror(i32 %31)
  %33 = call i32 @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %30, %2
  store i32 4, i32* %8, align 4
  br label %35

35:                                               ; preds = %110, %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %116

39:                                               ; preds = %35
  %40 = load i64, i64* @READAHEAD_BYTES, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sub i32 %41, %42
  %44 = call i32 @MIN(i64 %40, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i8*, i8** %13, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @uv_buf_init(i8* %45, i32 %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @uv_fs_read(i32* null, %struct.TYPE_6__* %15, i32 %48, i32* %14, i32 1, i32 %49, i32* null)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %39
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @uv_strerror(i32 %54)
  %56 = call i32 @fatal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %53, %39
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sge i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = call i32 @uv_fs_req_cleanup(%struct.TYPE_6__* %15)
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %66 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add i32 %68, %64
  store i32 %69, i32* %67, align 4
  %70 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %71 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %105, %57
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %109

79:                                               ; preds = %75
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %12, align 4
  %82 = add i32 %80, %81
  %83 = load i32, i32* %9, align 4
  %84 = sub i32 %82, %83
  store i32 %84, i32* %16, align 4
  %85 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %86 = load %struct.rrdengine_journalfile*, %struct.rrdengine_journalfile** %4, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = load i32, i32* %9, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr i8, i8* %87, i64 %89
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @replay_transaction(%struct.rrdengine_instance* %85, %struct.rrdengine_journalfile* %86, i8* %90, i32* %11, i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %79
  %96 = load i32, i32* %9, align 4
  %97 = zext i32 %96 to i64
  %98 = load i64, i64* @RRDENG_BLOCK_SIZE, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @ALIGN_BYTES_FLOOR(i64 %99)
  store i32 %100, i32* %9, align 4
  br label %105

101:                                              ; preds = %79
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %9, align 4
  %104 = add i32 %103, %102
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %101, %95
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @MAX(i32 %106, i32 %107)
  store i32 %108, i32* %10, align 4
  br label %75

109:                                              ; preds = %75
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* @READAHEAD_BYTES, align 8
  %112 = load i32, i32* %8, align 4
  %113 = zext i32 %112 to i64
  %114 = add nsw i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %8, align 4
  br label %35

116:                                              ; preds = %35
  %117 = load i8*, i8** %13, align 8
  %118 = call i32 @free(i8* %117)
  %119 = load i32, i32* %10, align 4
  ret i32 %119
}

declare dso_local i32 @posix_memalign(i8*, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fatal(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i32 @uv_buf_init(i8*, i32) #1

declare dso_local i32 @uv_fs_read(i32*, %struct.TYPE_6__*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @uv_strerror(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @uv_fs_req_cleanup(%struct.TYPE_6__*) #1

declare dso_local i32 @replay_transaction(%struct.rrdengine_instance*, %struct.rrdengine_journalfile*, i8*, i32*, i32) #1

declare dso_local i32 @ALIGN_BYTES_FLOOR(i64) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
