; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/file-updater/file-updater/extr_file-updater.c_copy_local_to_cache.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/file-updater/file-updater/extr_file-updater.c_copy_local_to_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.update_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.update_info*, i8*)* @copy_local_to_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_local_to_cache(%struct.update_info* %0, i8* %1) #0 {
  %3 = alloca %struct.update_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.update_info* %0, %struct.update_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.update_info*, %struct.update_info** %3, align 8
  %9 = getelementptr inbounds %struct.update_info, %struct.update_info* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @get_path(i32 %10, i8* %11)
  store i8* %12, i8** %5, align 8
  %13 = load %struct.update_info*, %struct.update_info** %3, align 8
  %14 = getelementptr inbounds %struct.update_info, %struct.update_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @get_path(i32 %15, i8* %16)
  store i8* %17, i8** %6, align 8
  %18 = load %struct.update_info*, %struct.update_info** %3, align 8
  %19 = getelementptr inbounds %struct.update_info, %struct.update_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @get_path(i32 %20, i8* %21)
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @os_copyfile(i8* %23, i8* %24)
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @os_unlink(i8* %26)
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @os_rename(i8* %28, i8* %29)
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @bfree(i8* %31)
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @bfree(i8* %33)
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @bfree(i8* %35)
  ret void
}

declare dso_local i8* @get_path(i32, i8*) #1

declare dso_local i32 @os_copyfile(i8*, i8*) #1

declare dso_local i32 @os_unlink(i8*) #1

declare dso_local i32 @os_rename(i8*, i8*) #1

declare dso_local i32 @bfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
