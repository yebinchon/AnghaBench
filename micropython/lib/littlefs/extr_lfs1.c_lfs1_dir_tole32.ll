; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs1.c_lfs1_dir_tole32.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs1.c_lfs1_dir_tole32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lfs1_disk_dir = type { i8**, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lfs1_disk_dir*)* @lfs1_dir_tole32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lfs1_dir_tole32(%struct.lfs1_disk_dir* %0) #0 {
  %2 = alloca %struct.lfs1_disk_dir*, align 8
  store %struct.lfs1_disk_dir* %0, %struct.lfs1_disk_dir** %2, align 8
  %3 = load %struct.lfs1_disk_dir*, %struct.lfs1_disk_dir** %2, align 8
  %4 = getelementptr inbounds %struct.lfs1_disk_dir, %struct.lfs1_disk_dir* %3, i32 0, i32 2
  %5 = load i8*, i8** %4, align 8
  %6 = call i8* @lfs1_tole32(i8* %5)
  %7 = load %struct.lfs1_disk_dir*, %struct.lfs1_disk_dir** %2, align 8
  %8 = getelementptr inbounds %struct.lfs1_disk_dir, %struct.lfs1_disk_dir* %7, i32 0, i32 2
  store i8* %6, i8** %8, align 8
  %9 = load %struct.lfs1_disk_dir*, %struct.lfs1_disk_dir** %2, align 8
  %10 = getelementptr inbounds %struct.lfs1_disk_dir, %struct.lfs1_disk_dir* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = call i8* @lfs1_tole32(i8* %11)
  %13 = load %struct.lfs1_disk_dir*, %struct.lfs1_disk_dir** %2, align 8
  %14 = getelementptr inbounds %struct.lfs1_disk_dir, %struct.lfs1_disk_dir* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load %struct.lfs1_disk_dir*, %struct.lfs1_disk_dir** %2, align 8
  %16 = getelementptr inbounds %struct.lfs1_disk_dir, %struct.lfs1_disk_dir* %15, i32 0, i32 0
  %17 = load i8**, i8*** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @lfs1_tole32(i8* %19)
  %21 = load %struct.lfs1_disk_dir*, %struct.lfs1_disk_dir** %2, align 8
  %22 = getelementptr inbounds %struct.lfs1_disk_dir, %struct.lfs1_disk_dir* %21, i32 0, i32 0
  %23 = load i8**, i8*** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  store i8* %20, i8** %24, align 8
  %25 = load %struct.lfs1_disk_dir*, %struct.lfs1_disk_dir** %2, align 8
  %26 = getelementptr inbounds %struct.lfs1_disk_dir, %struct.lfs1_disk_dir* %25, i32 0, i32 0
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @lfs1_tole32(i8* %29)
  %31 = load %struct.lfs1_disk_dir*, %struct.lfs1_disk_dir** %2, align 8
  %32 = getelementptr inbounds %struct.lfs1_disk_dir, %struct.lfs1_disk_dir* %31, i32 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  store i8* %30, i8** %34, align 8
  ret void
}

declare dso_local i8* @lfs1_tole32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
