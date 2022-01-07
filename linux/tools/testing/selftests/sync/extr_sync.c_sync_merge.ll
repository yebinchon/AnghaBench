; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync.c_sync_merge.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync.c_sync_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sync_merge_data = type { i32, i8*, i32 }

@SYNC_IOC_MERGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sync_merge(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sync_merge_data, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = bitcast %struct.sync_merge_data* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = load i32, i32* %7, align 4
  %12 = getelementptr inbounds %struct.sync_merge_data, %struct.sync_merge_data* %8, i32 0, i32 0
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.sync_merge_data, %struct.sync_merge_data* %8, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strncpy(i8* %14, i8* %15, i32 7)
  %17 = getelementptr inbounds %struct.sync_merge_data, %struct.sync_merge_data* %8, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 7
  store i8 0, i8* %19, align 1
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @SYNC_IOC_MERGE, align 4
  %22 = call i32 @ioctl(i32 %20, i32 %21, %struct.sync_merge_data* %8)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %30

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.sync_merge_data, %struct.sync_merge_data* %8, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %25
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @ioctl(i32, i32, %struct.sync_merge_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
