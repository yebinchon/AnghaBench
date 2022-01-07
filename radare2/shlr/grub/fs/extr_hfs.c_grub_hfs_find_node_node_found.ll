; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfs.c_grub_hfs_find_node_node_found.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfs.c_grub_hfs_find_node_node_found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_hfs_node = type { i64 }
%struct.grub_hfs_record = type { i64, i64, i32 }
%struct.grub_hfs_find_node_closure = type { i64, i32, i32, i64, i32, i32, i64 }

@GRUB_HFS_NODE_LEAF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_hfs_node*, %struct.grub_hfs_record*, i8*)* @grub_hfs_find_node_node_found to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_hfs_find_node_node_found(%struct.grub_hfs_node* %0, %struct.grub_hfs_record* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.grub_hfs_node*, align 8
  %6 = alloca %struct.grub_hfs_record*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.grub_hfs_find_node_closure*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.grub_hfs_node* %0, %struct.grub_hfs_node** %5, align 8
  store %struct.grub_hfs_record* %1, %struct.grub_hfs_record** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.grub_hfs_find_node_closure*
  store %struct.grub_hfs_find_node_closure* %12, %struct.grub_hfs_find_node_closure** %8, align 8
  store i32 1, i32* %9, align 4
  %13 = load %struct.grub_hfs_find_node_closure*, %struct.grub_hfs_find_node_closure** %8, align 8
  %14 = getelementptr inbounds %struct.grub_hfs_find_node_closure, %struct.grub_hfs_find_node_closure* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.grub_hfs_record*, %struct.grub_hfs_record** %6, align 8
  %19 = getelementptr inbounds %struct.grub_hfs_record, %struct.grub_hfs_record* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.grub_hfs_find_node_closure*, %struct.grub_hfs_find_node_closure** %8, align 8
  %22 = getelementptr inbounds %struct.grub_hfs_find_node_closure, %struct.grub_hfs_find_node_closure* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @grub_hfs_cmp_catkeys(i32 %20, i8* %24)
  store i32 %25, i32* %9, align 4
  br label %35

26:                                               ; preds = %3
  %27 = load %struct.grub_hfs_record*, %struct.grub_hfs_record** %6, align 8
  %28 = getelementptr inbounds %struct.grub_hfs_record, %struct.grub_hfs_record* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.grub_hfs_find_node_closure*, %struct.grub_hfs_find_node_closure** %8, align 8
  %31 = getelementptr inbounds %struct.grub_hfs_find_node_closure, %struct.grub_hfs_find_node_closure* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @grub_hfs_cmp_extkeys(i32 %29, i8* %33)
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %26, %17
  %36 = load i32, i32* %9, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load %struct.grub_hfs_record*, %struct.grub_hfs_record** %6, align 8
  %40 = getelementptr inbounds %struct.grub_hfs_record, %struct.grub_hfs_record* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %10, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @grub_be_to_cpu32(i32 %44)
  %46 = load %struct.grub_hfs_find_node_closure*, %struct.grub_hfs_find_node_closure** %8, align 8
  %47 = getelementptr inbounds %struct.grub_hfs_find_node_closure, %struct.grub_hfs_find_node_closure* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  br label %49

48:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %89

49:                                               ; preds = %38
  %50 = load %struct.grub_hfs_node*, %struct.grub_hfs_node** %5, align 8
  %51 = getelementptr inbounds %struct.grub_hfs_node, %struct.grub_hfs_node* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @GRUB_HFS_NODE_LEAF, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %88

55:                                               ; preds = %49
  %56 = load %struct.grub_hfs_find_node_closure*, %struct.grub_hfs_find_node_closure** %8, align 8
  %57 = getelementptr inbounds %struct.grub_hfs_find_node_closure, %struct.grub_hfs_find_node_closure* %56, i32 0, i32 1
  store i32 1, i32* %57, align 8
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %55
  %61 = load %struct.grub_hfs_find_node_closure*, %struct.grub_hfs_find_node_closure** %8, align 8
  %62 = getelementptr inbounds %struct.grub_hfs_find_node_closure, %struct.grub_hfs_find_node_closure* %61, i32 0, i32 2
  store i32 1, i32* %62, align 4
  %63 = load %struct.grub_hfs_find_node_closure*, %struct.grub_hfs_find_node_closure** %8, align 8
  %64 = getelementptr inbounds %struct.grub_hfs_find_node_closure, %struct.grub_hfs_find_node_closure* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.grub_hfs_record*, %struct.grub_hfs_record** %6, align 8
  %67 = getelementptr inbounds %struct.grub_hfs_record, %struct.grub_hfs_record* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.grub_hfs_record*, %struct.grub_hfs_record** %6, align 8
  %70 = getelementptr inbounds %struct.grub_hfs_record, %struct.grub_hfs_record* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.grub_hfs_find_node_closure*, %struct.grub_hfs_find_node_closure** %8, align 8
  %73 = getelementptr inbounds %struct.grub_hfs_find_node_closure, %struct.grub_hfs_find_node_closure* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %71, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %60
  %77 = load %struct.grub_hfs_record*, %struct.grub_hfs_record** %6, align 8
  %78 = getelementptr inbounds %struct.grub_hfs_record, %struct.grub_hfs_record* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  br label %84

80:                                               ; preds = %60
  %81 = load %struct.grub_hfs_find_node_closure*, %struct.grub_hfs_find_node_closure** %8, align 8
  %82 = getelementptr inbounds %struct.grub_hfs_find_node_closure, %struct.grub_hfs_find_node_closure* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  br label %84

84:                                               ; preds = %80, %76
  %85 = phi i64 [ %79, %76 ], [ %83, %80 ]
  %86 = call i32 @grub_memcpy(i32 %65, i64 %68, i64 %85)
  store i32 1, i32* %4, align 4
  br label %89

87:                                               ; preds = %55
  br label %88

88:                                               ; preds = %87, %49
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %84, %48
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @grub_hfs_cmp_catkeys(i32, i8*) #1

declare dso_local i32 @grub_hfs_cmp_extkeys(i32, i8*) #1

declare dso_local i32 @grub_be_to_cpu32(i32) #1

declare dso_local i32 @grub_memcpy(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
