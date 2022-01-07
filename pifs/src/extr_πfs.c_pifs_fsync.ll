; ModuleID = '/home/carl/AnghaBench/pifs/src/extr_πfs.c_pifs_fsync.c'
source_filename = "/home/carl/AnghaBench/pifs/src/extr_\CF\80fs.c_pifs_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_file_info = type { i32 }

@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.fuse_file_info*)* @pifs_fsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pifs_fsync(i8* %0, i32 %1, %struct.fuse_file_info* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fuse_file_info*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.fuse_file_info* %2, %struct.fuse_file_info** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.fuse_file_info*, %struct.fuse_file_info** %6, align 8
  %12 = getelementptr inbounds %struct.fuse_file_info, %struct.fuse_file_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @fdatasync(i32 %13)
  br label %20

15:                                               ; preds = %3
  %16 = load %struct.fuse_file_info*, %struct.fuse_file_info** %6, align 8
  %17 = getelementptr inbounds %struct.fuse_file_info, %struct.fuse_file_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @fsync(i32 %18)
  br label %20

20:                                               ; preds = %15, %10
  %21 = phi i32 [ %14, %10 ], [ %19, %15 ]
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @errno, align 4
  %26 = sub nsw i32 0, %25
  br label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  br label %29

29:                                               ; preds = %27, %24
  %30 = phi i32 [ %26, %24 ], [ %28, %27 ]
  ret i32 %30
}

declare dso_local i32 @fdatasync(i32) #1

declare dso_local i32 @fsync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
