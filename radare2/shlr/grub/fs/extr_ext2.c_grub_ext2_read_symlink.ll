; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ext2.c_grub_ext2_read_symlink.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ext2.c_grub_ext2_read_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_fshelp_node = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@grub_errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.grub_fshelp_node*)* @grub_ext2_read_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @grub_ext2_read_symlink(%struct.grub_fshelp_node* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.grub_fshelp_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.grub_fshelp_node*, align 8
  store %struct.grub_fshelp_node* %0, %struct.grub_fshelp_node** %3, align 8
  %6 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %3, align 8
  store %struct.grub_fshelp_node* %6, %struct.grub_fshelp_node** %5, align 8
  %7 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %5, align 8
  %8 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %1
  %12 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %5, align 8
  %13 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %5, align 8
  %16 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %5, align 8
  %19 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %18, i32 0, i32 0
  %20 = call i32 @grub_ext2_read_inode(i32 %14, i32 %17, %struct.TYPE_2__* %19)
  %21 = load i64, i64* @grub_errno, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  store i8* null, i8** %2, align 8
  br label %80

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %5, align 8
  %27 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @grub_le_to_cpu32(i32 %29)
  %31 = add i64 %30, 1
  %32 = trunc i64 %31 to i32
  %33 = call i8* @grub_malloc(i32 %32)
  store i8* %33, i8** %4, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %25
  store i8* null, i8** %2, align 8
  br label %80

37:                                               ; preds = %25
  %38 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %5, align 8
  %39 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @grub_le_to_cpu32(i32 %41)
  %43 = icmp ule i64 %42, 60
  br i1 %43, label %44, label %56

44:                                               ; preds = %37
  %45 = load i8*, i8** %4, align 8
  %46 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %5, align 8
  %47 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %5, align 8
  %51 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @grub_le_to_cpu32(i32 %53)
  %55 = call i32 @grub_strncpy(i8* %45, i32 %49, i64 %54)
  br label %71

56:                                               ; preds = %37
  %57 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %5, align 8
  %58 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %5, align 8
  %59 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @grub_le_to_cpu32(i32 %61)
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @grub_ext2_read_file(%struct.grub_fshelp_node* %57, i32 0, i32 0, i32 0, i32 0, i64 %62, i8* %63)
  %65 = load i64, i64* @grub_errno, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @grub_free(i8* %68)
  store i8* null, i8** %2, align 8
  br label %80

70:                                               ; preds = %56
  br label %71

71:                                               ; preds = %70, %44
  %72 = load i8*, i8** %4, align 8
  %73 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %5, align 8
  %74 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @grub_le_to_cpu32(i32 %76)
  %78 = getelementptr inbounds i8, i8* %72, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load i8*, i8** %4, align 8
  store i8* %79, i8** %2, align 8
  br label %80

80:                                               ; preds = %71, %67, %36, %23
  %81 = load i8*, i8** %2, align 8
  ret i8* %81
}

declare dso_local i32 @grub_ext2_read_inode(i32, i32, %struct.TYPE_2__*) #1

declare dso_local i8* @grub_malloc(i32) #1

declare dso_local i64 @grub_le_to_cpu32(i32) #1

declare dso_local i32 @grub_strncpy(i8*, i32, i64) #1

declare dso_local i32 @grub_ext2_read_file(%struct.grub_fshelp_node*, i32, i32, i32, i32, i64, i8*) #1

declare dso_local i32 @grub_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
