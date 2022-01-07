; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_nilfs2.c_grub_nilfs2_btree_node_dkeys.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_nilfs2.c_grub_nilfs2_btree_node_dkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_nilfs2_btree_node = type { i32 }

@NILFS_BTREE_NODE_ROOT = common dso_local global i32 0, align 4
@NILFS_BTREE_NODE_EXTRA_PAD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.grub_nilfs2_btree_node*)* @grub_nilfs2_btree_node_dkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @grub_nilfs2_btree_node_dkeys(%struct.grub_nilfs2_btree_node* %0) #0 {
  %2 = alloca %struct.grub_nilfs2_btree_node*, align 8
  store %struct.grub_nilfs2_btree_node* %0, %struct.grub_nilfs2_btree_node** %2, align 8
  %3 = load %struct.grub_nilfs2_btree_node*, %struct.grub_nilfs2_btree_node** %2, align 8
  %4 = getelementptr inbounds %struct.grub_nilfs2_btree_node, %struct.grub_nilfs2_btree_node* %3, i64 1
  %5 = bitcast %struct.grub_nilfs2_btree_node* %4 to i8*
  %6 = load %struct.grub_nilfs2_btree_node*, %struct.grub_nilfs2_btree_node** %2, align 8
  %7 = getelementptr inbounds %struct.grub_nilfs2_btree_node, %struct.grub_nilfs2_btree_node* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NILFS_BTREE_NODE_ROOT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @NILFS_BTREE_NODE_EXTRA_PAD_SIZE, align 4
  br label %15

15:                                               ; preds = %13, %12
  %16 = phi i32 [ 0, %12 ], [ %14, %13 ]
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %5, i64 %17
  %19 = bitcast i8* %18 to i32*
  ret i32* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
