; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfs.c_grub_hfs_find_node.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfs.c_grub_hfs_find_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_hfs_data = type { i32 }
%struct.grub_hfs_find_node_closure = type { i8*, i32, i8*, i32, i32, i32, i64 }

@grub_hfs_find_node_node_found = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_hfs_data*, i8*, i32, i32, i8*, i32)* @grub_hfs_find_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_hfs_find_node(%struct.grub_hfs_data* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.grub_hfs_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.grub_hfs_find_node_closure, align 8
  store %struct.grub_hfs_data* %0, %struct.grub_hfs_data** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = getelementptr inbounds %struct.grub_hfs_find_node_closure, %struct.grub_hfs_find_node_closure* %14, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* %11, align 4
  %18 = getelementptr inbounds %struct.grub_hfs_find_node_closure, %struct.grub_hfs_find_node_closure* %14, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = getelementptr inbounds %struct.grub_hfs_find_node_closure, %struct.grub_hfs_find_node_closure* %14, i32 0, i32 2
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* %13, align 4
  %22 = getelementptr inbounds %struct.grub_hfs_find_node_closure, %struct.grub_hfs_find_node_closure* %14, i32 0, i32 3
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.grub_hfs_find_node_closure, %struct.grub_hfs_find_node_closure* %14, i32 0, i32 6
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.grub_hfs_find_node_closure, %struct.grub_hfs_find_node_closure* %14, i32 0, i32 4
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %42, %6
  %26 = getelementptr inbounds %struct.grub_hfs_find_node_closure, %struct.grub_hfs_find_node_closure* %14, i32 0, i32 5
  store i32 -1, i32* %26, align 8
  %27 = load %struct.grub_hfs_data*, %struct.grub_hfs_data** %8, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @grub_hfs_find_node_node_found, align 4
  %31 = call i64 @grub_hfs_iterate_records(%struct.grub_hfs_data* %27, i32 %28, i32 %29, i32 0, i32 %30, %struct.grub_hfs_find_node_closure* %14)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %50

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.grub_hfs_find_node_closure, %struct.grub_hfs_find_node_closure* %14, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %50

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.grub_hfs_find_node_closure, %struct.grub_hfs_find_node_closure* %14, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.grub_hfs_find_node_closure, %struct.grub_hfs_find_node_closure* %14, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %25, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.grub_hfs_find_node_closure, %struct.grub_hfs_find_node_closure* %14, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %47, %38, %33
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i64 @grub_hfs_iterate_records(%struct.grub_hfs_data*, i32, i32, i32, i32, %struct.grub_hfs_find_node_closure*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
