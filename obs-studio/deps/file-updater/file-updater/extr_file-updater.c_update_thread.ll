; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/file-updater/file-updater/extr_file-updater.c_update_thread.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/file-updater/file-updater/extr_file-updater.c_update_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.update_info = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @update_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @update_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.update_info*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.update_info*
  store %struct.update_info* %7, %struct.update_info** %4, align 8
  %8 = load %struct.update_info*, %struct.update_info** %4, align 8
  %9 = call i32 @init_update(%struct.update_info* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %42

12:                                               ; preds = %1
  %13 = load %struct.update_info*, %struct.update_info** %4, align 8
  %14 = call i32 @update_local_version(%struct.update_info* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.update_info*, %struct.update_info** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @update_remote_version(%struct.update_info* %15, i32 %16)
  %18 = load %struct.update_info*, %struct.update_info** %4, align 8
  %19 = getelementptr inbounds %struct.update_info, %struct.update_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @os_rmdir(i32 %20)
  %22 = load %struct.update_info*, %struct.update_info** %4, align 8
  %23 = getelementptr inbounds %struct.update_info, %struct.update_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %12
  %27 = load %struct.update_info*, %struct.update_info** %4, align 8
  %28 = getelementptr inbounds %struct.update_info, %struct.update_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @bfree(i64 %29)
  br label %31

31:                                               ; preds = %26, %12
  %32 = load %struct.update_info*, %struct.update_info** %4, align 8
  %33 = getelementptr inbounds %struct.update_info, %struct.update_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.update_info*, %struct.update_info** %4, align 8
  %38 = getelementptr inbounds %struct.update_info, %struct.update_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @bfree(i64 %39)
  br label %41

41:                                               ; preds = %36, %31
  store i8* null, i8** %2, align 8
  br label %42

42:                                               ; preds = %41, %11
  %43 = load i8*, i8** %2, align 8
  ret i8* %43
}

declare dso_local i32 @init_update(%struct.update_info*) #1

declare dso_local i32 @update_local_version(%struct.update_info*) #1

declare dso_local i32 @update_remote_version(%struct.update_info*, i32) #1

declare dso_local i32 @os_rmdir(i32) #1

declare dso_local i32 @bfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
