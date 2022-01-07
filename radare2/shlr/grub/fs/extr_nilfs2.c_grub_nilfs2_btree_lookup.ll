; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_nilfs2.c_grub_nilfs2_btree_lookup.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_nilfs2.c_grub_nilfs2_btree_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_nilfs2_data = type { i32 }
%struct.grub_nilfs2_inode = type { i32 }
%struct.grub_nilfs2_btree_node = type { i32 }

@NILFS_BTREE_LEVEL_NODE_MIN = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i64 0, align 8
@GRUB_ERR_BAD_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"btree level mismatch\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"btree corruption\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_nilfs2_data*, %struct.grub_nilfs2_inode*, i32, i32)* @grub_nilfs2_btree_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_nilfs2_btree_lookup(%struct.grub_nilfs2_data* %0, %struct.grub_nilfs2_inode* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.grub_nilfs2_data*, align 8
  %7 = alloca %struct.grub_nilfs2_inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.grub_nilfs2_btree_node*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.grub_nilfs2_data* %0, %struct.grub_nilfs2_data** %6, align 8
  store %struct.grub_nilfs2_inode* %1, %struct.grub_nilfs2_inode** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %6, align 8
  %19 = call i32 @NILFS2_BLOCK_SIZE(%struct.grub_nilfs2_data* %18)
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %23 = load %struct.grub_nilfs2_inode*, %struct.grub_nilfs2_inode** %7, align 8
  %24 = call %struct.grub_nilfs2_btree_node* @grub_nilfs2_btree_get_root(%struct.grub_nilfs2_inode* %23)
  store %struct.grub_nilfs2_btree_node* %24, %struct.grub_nilfs2_btree_node** %10, align 8
  %25 = load %struct.grub_nilfs2_btree_node*, %struct.grub_nilfs2_btree_node** %10, align 8
  %26 = call i32 @grub_nilfs2_btree_get_level(%struct.grub_nilfs2_btree_node* %25)
  store i32 %26, i32* %14, align 4
  %27 = load %struct.grub_nilfs2_btree_node*, %struct.grub_nilfs2_btree_node** %10, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @grub_nilfs2_btree_node_lookup(%struct.grub_nilfs2_btree_node* %27, i32 %28, i32* %16)
  store i32 %29, i32* %15, align 4
  %30 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %6, align 8
  %31 = load %struct.grub_nilfs2_btree_node*, %struct.grub_nilfs2_btree_node** %10, align 8
  %32 = load i32, i32* %16, align 4
  %33 = call i32 @grub_nilfs2_btree_node_get_ptr(%struct.grub_nilfs2_data* %30, %struct.grub_nilfs2_btree_node* %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %4
  %37 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %6, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @grub_nilfs2_dat_translate(%struct.grub_nilfs2_data* %37, i32 %38)
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %36, %4
  %41 = load i32, i32* %14, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %94, %40
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @NILFS_BTREE_LEVEL_NODE_MIN, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %97

47:                                               ; preds = %43
  %48 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %6, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @grub_nilfs2_btree_get_nonroot_node(%struct.grub_nilfs2_data* %48, i32 %49, i8* %22)
  %51 = load i64, i64* @grub_errno, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %103

54:                                               ; preds = %47
  %55 = bitcast i8* %22 to %struct.grub_nilfs2_btree_node*
  store %struct.grub_nilfs2_btree_node* %55, %struct.grub_nilfs2_btree_node** %10, align 8
  %56 = load %struct.grub_nilfs2_btree_node*, %struct.grub_nilfs2_btree_node** %10, align 8
  %57 = getelementptr inbounds %struct.grub_nilfs2_btree_node, %struct.grub_nilfs2_btree_node* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %63 = call i32 @grub_error(i32 %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %103

64:                                               ; preds = %54
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = load %struct.grub_nilfs2_btree_node*, %struct.grub_nilfs2_btree_node** %10, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @grub_nilfs2_btree_node_lookup(%struct.grub_nilfs2_btree_node* %68, i32 %69, i32* %16)
  store i32 %70, i32* %15, align 4
  br label %72

71:                                               ; preds = %64
  store i32 0, i32* %16, align 4
  br label %72

72:                                               ; preds = %71, %67
  %73 = load i32, i32* %16, align 4
  %74 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %6, align 8
  %75 = load %struct.grub_nilfs2_btree_node*, %struct.grub_nilfs2_btree_node** %10, align 8
  %76 = call i32 @grub_nilfs2_btree_node_nchildren_max(%struct.grub_nilfs2_data* %74, %struct.grub_nilfs2_btree_node* %75)
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %72
  %79 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %6, align 8
  %80 = load %struct.grub_nilfs2_btree_node*, %struct.grub_nilfs2_btree_node** %10, align 8
  %81 = load i32, i32* %16, align 4
  %82 = call i32 @grub_nilfs2_btree_node_get_ptr(%struct.grub_nilfs2_data* %79, %struct.grub_nilfs2_btree_node* %80, i32 %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %6, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @grub_nilfs2_dat_translate(%struct.grub_nilfs2_data* %86, i32 %87)
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %85, %78
  br label %93

90:                                               ; preds = %72
  %91 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %92 = call i32 @grub_error(i32 %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %103

93:                                               ; preds = %89
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %14, align 4
  br label %43

97:                                               ; preds = %43
  %98 = load i32, i32* %15, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %103

101:                                              ; preds = %97
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %103

103:                                              ; preds = %101, %100, %90, %61, %53
  %104 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @NILFS2_BLOCK_SIZE(%struct.grub_nilfs2_data*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.grub_nilfs2_btree_node* @grub_nilfs2_btree_get_root(%struct.grub_nilfs2_inode*) #1

declare dso_local i32 @grub_nilfs2_btree_get_level(%struct.grub_nilfs2_btree_node*) #1

declare dso_local i32 @grub_nilfs2_btree_node_lookup(%struct.grub_nilfs2_btree_node*, i32, i32*) #1

declare dso_local i32 @grub_nilfs2_btree_node_get_ptr(%struct.grub_nilfs2_data*, %struct.grub_nilfs2_btree_node*, i32) #1

declare dso_local i32 @grub_nilfs2_dat_translate(%struct.grub_nilfs2_data*, i32) #1

declare dso_local i32 @grub_nilfs2_btree_get_nonroot_node(%struct.grub_nilfs2_data*, i32, i8*) #1

declare dso_local i32 @grub_error(i32, i8*) #1

declare dso_local i32 @grub_nilfs2_btree_node_nchildren_max(%struct.grub_nilfs2_data*, %struct.grub_nilfs2_btree_node*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
