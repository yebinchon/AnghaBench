; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_journalfile.c_wal_get_transaction_buffer.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_journalfile.c_wal_get_transaction_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_worker_config = type { %struct.rrdengine_instance* }
%struct.rrdengine_instance = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i32 }

@RRDFILE_ALIGNMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"posix_memalign:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @wal_get_transaction_buffer(%struct.rrdengine_worker_config* %0, i32 %1) #0 {
  %3 = alloca %struct.rrdengine_worker_config*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rrdengine_instance*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rrdengine_worker_config* %0, %struct.rrdengine_worker_config** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %3, align 8
  %11 = getelementptr inbounds %struct.rrdengine_worker_config, %struct.rrdengine_worker_config* %10, i32 0, i32 0
  %12 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %11, align 8
  store %struct.rrdengine_instance* %12, %struct.rrdengine_instance** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %5, align 8
  %16 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %2
  %21 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %5, align 8
  %22 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %5, align 8
  %26 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sub i32 %29, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %20
  %36 = load %struct.rrdengine_worker_config*, %struct.rrdengine_worker_config** %3, align 8
  %37 = call i32 @wal_flush_transaction_buffer(%struct.rrdengine_worker_config* %36)
  br label %38

38:                                               ; preds = %35, %20
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %5, align 8
  %41 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp eq i8* null, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %39
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @ALIGN_BYTES_CEILING(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %5, align 8
  %49 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = bitcast i8** %50 to i8*
  %52 = load i32, i32* @RRDFILE_ALIGNMENT, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @posix_memalign(i8* %51, i32 %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %45
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @strerror(i32 %59)
  %61 = call i32 @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %58, %45
  %63 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %5, align 8
  %64 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32 0, i32* %65, align 8
  store i32 0, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %5, align 8
  %68 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 4
  br label %70

70:                                               ; preds = %62, %39
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %5, align 8
  %73 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = add i32 %75, %71
  store i32 %76, i32* %74, align 8
  %77 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %5, align 8
  %78 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr i8, i8* %80, i64 %82
  ret i8* %83
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @wal_flush_transaction_buffer(%struct.rrdengine_worker_config*) #1

declare dso_local i32 @ALIGN_BYTES_CEILING(i32) #1

declare dso_local i32 @posix_memalign(i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fatal(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
