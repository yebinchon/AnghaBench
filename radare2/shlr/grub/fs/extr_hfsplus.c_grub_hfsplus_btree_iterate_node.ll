; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfsplus.c_grub_hfsplus_btree_iterate_node.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfsplus.c_grub_hfsplus_btree_iterate_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_hfsplus_btree = type { i32, i32 }
%struct.grub_hfsplus_btnode = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_hfsplus_btree*, %struct.grub_hfsplus_btnode*, i32, i32 (i8*, i8*)*, i8*)* @grub_hfsplus_btree_iterate_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_hfsplus_btree_iterate_node(%struct.grub_hfsplus_btree* %0, %struct.grub_hfsplus_btnode* %1, i32 %2, i32 (i8*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.grub_hfsplus_btree*, align 8
  %8 = alloca %struct.grub_hfsplus_btnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32 (i8*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.grub_hfsplus_btree* %0, %struct.grub_hfsplus_btree** %7, align 8
  store %struct.grub_hfsplus_btnode* %1, %struct.grub_hfsplus_btnode** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 (i8*, i8*)* %3, i32 (i8*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %15 = icmp ne i32 (i8*, i8*)* %14, null
  br i1 %15, label %16, label %72

16:                                               ; preds = %5
  br label %17

17:                                               ; preds = %70, %16
  %18 = load %struct.grub_hfsplus_btnode*, %struct.grub_hfsplus_btnode** %8, align 8
  %19 = bitcast %struct.grub_hfsplus_btnode* %18 to i8*
  store i8* %19, i8** %13, align 8
  %20 = load %struct.grub_hfsplus_btnode*, %struct.grub_hfsplus_btnode** %8, align 8
  %21 = icmp ne %struct.grub_hfsplus_btnode* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %73

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %12, align 4
  br label %25

25:                                               ; preds = %43, %23
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.grub_hfsplus_btnode*, %struct.grub_hfsplus_btnode** %8, align 8
  %28 = getelementptr inbounds %struct.grub_hfsplus_btnode, %struct.grub_hfsplus_btnode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @grub_be_to_cpu16(i32 %29)
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %25
  %33 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %34 = load %struct.grub_hfsplus_btree*, %struct.grub_hfsplus_btree** %7, align 8
  %35 = load %struct.grub_hfsplus_btnode*, %struct.grub_hfsplus_btnode** %8, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i8* @grub_hfsplus_btree_recptr(%struct.grub_hfsplus_btree* %34, %struct.grub_hfsplus_btnode* %35, i32 %36)
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 %33(i8* %37, i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i32 1, i32* %6, align 4
  br label %73

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %12, align 4
  br label %25

46:                                               ; preds = %25
  %47 = load %struct.grub_hfsplus_btnode*, %struct.grub_hfsplus_btnode** %8, align 8
  %48 = getelementptr inbounds %struct.grub_hfsplus_btnode, %struct.grub_hfsplus_btnode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %71

52:                                               ; preds = %46
  %53 = load %struct.grub_hfsplus_btree*, %struct.grub_hfsplus_btree** %7, align 8
  %54 = getelementptr inbounds %struct.grub_hfsplus_btree, %struct.grub_hfsplus_btree* %53, i32 0, i32 1
  %55 = load %struct.grub_hfsplus_btnode*, %struct.grub_hfsplus_btnode** %8, align 8
  %56 = getelementptr inbounds %struct.grub_hfsplus_btnode, %struct.grub_hfsplus_btnode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @grub_be_to_cpu32(i32 %57)
  %59 = load %struct.grub_hfsplus_btree*, %struct.grub_hfsplus_btree** %7, align 8
  %60 = getelementptr inbounds %struct.grub_hfsplus_btree, %struct.grub_hfsplus_btree* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %58, %61
  %63 = load %struct.grub_hfsplus_btree*, %struct.grub_hfsplus_btree** %7, align 8
  %64 = getelementptr inbounds %struct.grub_hfsplus_btree, %struct.grub_hfsplus_btree* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %13, align 8
  %67 = call i64 @grub_hfsplus_read_file(i32* %54, i32 0, i32 0, i32 0, i32 %62, i32 %65, i8* %66)
  %68 = icmp sle i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %52
  store i32 1, i32* %6, align 4
  br label %73

70:                                               ; preds = %52
  store i32 0, i32* %9, align 4
  br label %17

71:                                               ; preds = %51
  br label %72

72:                                               ; preds = %71, %5
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %72, %69, %41, %22
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @grub_be_to_cpu16(i32) #1

declare dso_local i8* @grub_hfsplus_btree_recptr(%struct.grub_hfsplus_btree*, %struct.grub_hfsplus_btnode*, i32) #1

declare dso_local i64 @grub_hfsplus_read_file(i32*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @grub_be_to_cpu32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
