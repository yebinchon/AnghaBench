; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_nilfs2.c_grub_nilfs2_btree_node_lookup.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_nilfs2.c_grub_nilfs2_btree_node_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_nilfs2_btree_node = type { i64, i32 }

@NILFS_BTREE_LEVEL_NODE_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_nilfs2_btree_node*, i64, i32*)* @grub_nilfs2_btree_node_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_nilfs2_btree_node_lookup(%struct.grub_nilfs2_btree_node* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.grub_nilfs2_btree_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.grub_nilfs2_btree_node* %0, %struct.grub_nilfs2_btree_node** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.grub_nilfs2_btree_node*, %struct.grub_nilfs2_btree_node** %5, align 8
  %14 = getelementptr inbounds %struct.grub_nilfs2_btree_node, %struct.grub_nilfs2_btree_node* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @grub_le_to_cpu16(i32 %15)
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %11, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %47, %3
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %18
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = add nsw i32 %23, %24
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %9, align 4
  %27 = load %struct.grub_nilfs2_btree_node*, %struct.grub_nilfs2_btree_node** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @grub_nilfs2_btree_node_get_key(%struct.grub_nilfs2_btree_node* %27, i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i32, i32* %9, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  store i32 1, i32* %4, align 4
  br label %77

36:                                               ; preds = %22
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  store i32 -1, i32* %12, align 4
  br label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %46

46:                                               ; preds = %43, %40
  br label %47

47:                                               ; preds = %46
  br label %18

48:                                               ; preds = %18
  %49 = load %struct.grub_nilfs2_btree_node*, %struct.grub_nilfs2_btree_node** %5, align 8
  %50 = getelementptr inbounds %struct.grub_nilfs2_btree_node, %struct.grub_nilfs2_btree_node* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NILFS_BTREE_LEVEL_NODE_MIN, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load i32, i32* %12, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %60, %57, %54
  br label %71

64:                                               ; preds = %48
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %70, %63
  %72 = load i32, i32* %9, align 4
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp eq i32 %74, 0
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %71, %33
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @grub_le_to_cpu16(i32) #1

declare dso_local i64 @grub_nilfs2_btree_node_get_key(%struct.grub_nilfs2_btree_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
