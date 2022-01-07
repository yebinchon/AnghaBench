; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_nilfs2.c_grub_nilfs2_btree_node_nchildren_max.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_nilfs2.c_grub_nilfs2_btree_node_nchildren_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_nilfs2_data = type { i32 }
%struct.grub_nilfs2_btree_node = type { i32 }

@NILFS_BTREE_NODE_EXTRA_PAD_SIZE = common dso_local global i32 0, align 4
@NILFS_BTREE_NODE_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_nilfs2_data*, %struct.grub_nilfs2_btree_node*)* @grub_nilfs2_btree_node_nchildren_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_nilfs2_btree_node_nchildren_max(%struct.grub_nilfs2_data* %0, %struct.grub_nilfs2_btree_node* %1) #0 {
  %3 = alloca %struct.grub_nilfs2_data*, align 8
  %4 = alloca %struct.grub_nilfs2_btree_node*, align 8
  %5 = alloca i32, align 4
  store %struct.grub_nilfs2_data* %0, %struct.grub_nilfs2_data** %3, align 8
  store %struct.grub_nilfs2_btree_node* %1, %struct.grub_nilfs2_btree_node** %4, align 8
  %6 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %3, align 8
  %7 = call i32 @NILFS2_BLOCK_SIZE(%struct.grub_nilfs2_data* %6)
  %8 = sext i32 %7 to i64
  %9 = sub i64 %8, 4
  %10 = load i32, i32* @NILFS_BTREE_NODE_EXTRA_PAD_SIZE, align 4
  %11 = sext i32 %10 to i64
  %12 = sub i64 %9, %11
  %13 = udiv i64 %12, 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load %struct.grub_nilfs2_btree_node*, %struct.grub_nilfs2_btree_node** %4, align 8
  %16 = getelementptr inbounds %struct.grub_nilfs2_btree_node, %struct.grub_nilfs2_btree_node* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NILFS_BTREE_NODE_ROOT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  br label %24

24:                                               ; preds = %22, %21
  %25 = phi i32 [ 3, %21 ], [ %23, %22 ]
  ret i32 %25
}

declare dso_local i32 @NILFS2_BLOCK_SIZE(%struct.grub_nilfs2_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
