; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ext2.c_iterate.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ext2.c_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.grub_ext2_dir_closure = type { i32 (i8*, %struct.grub_dirhook_info*, i32)*, i32, i32 }
%struct.grub_dirhook_info = type opaque
%struct.grub_dirhook_info.0 = type { i32, i32, i32 }

@grub_errno = common dso_local global i64 0, align 8
@GRUB_ERR_NONE = common dso_local global i64 0, align 8
@GRUB_FSHELP_TYPE_MASK = common dso_local global i32 0, align 4
@GRUB_FSHELP_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.TYPE_5__*, i8*)* @iterate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iterate(i8* %0, i32 %1, %struct.TYPE_5__* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.grub_ext2_dir_closure*, align 8
  %10 = alloca %struct.grub_dirhook_info.0, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.grub_ext2_dir_closure*
  store %struct.grub_ext2_dir_closure* %12, %struct.grub_ext2_dir_closure** %9, align 8
  %13 = call i32 @grub_memset(%struct.grub_dirhook_info.0* %10, i32 0, i32 12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %4
  %19 = load %struct.grub_ext2_dir_closure*, %struct.grub_ext2_dir_closure** %9, align 8
  %20 = getelementptr inbounds %struct.grub_ext2_dir_closure, %struct.grub_ext2_dir_closure* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = call i32 @grub_ext2_read_inode(i32 %21, i32 %24, %struct.TYPE_6__* %26)
  %28 = load i64, i64* @grub_errno, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %18
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %18
  %34 = load i64, i64* @GRUB_ERR_NONE, align 8
  store i64 %34, i64* @grub_errno, align 8
  br label %35

35:                                               ; preds = %33, %4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.grub_dirhook_info.0, %struct.grub_dirhook_info.0* %10, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @grub_le_to_cpu32(i32 %45)
  %47 = getelementptr inbounds %struct.grub_dirhook_info.0, %struct.grub_dirhook_info.0* %10, i32 0, i32 2
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %40, %35
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @GRUB_FSHELP_TYPE_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @GRUB_FSHELP_DIR, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = getelementptr inbounds %struct.grub_dirhook_info.0, %struct.grub_dirhook_info.0* %10, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %57 = call i32 @grub_free(%struct.TYPE_5__* %56)
  %58 = load %struct.grub_ext2_dir_closure*, %struct.grub_ext2_dir_closure** %9, align 8
  %59 = getelementptr inbounds %struct.grub_ext2_dir_closure, %struct.grub_ext2_dir_closure* %58, i32 0, i32 0
  %60 = load i32 (i8*, %struct.grub_dirhook_info*, i32)*, i32 (i8*, %struct.grub_dirhook_info*, i32)** %59, align 8
  %61 = icmp ne i32 (i8*, %struct.grub_dirhook_info*, i32)* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %48
  %63 = load %struct.grub_ext2_dir_closure*, %struct.grub_ext2_dir_closure** %9, align 8
  %64 = getelementptr inbounds %struct.grub_ext2_dir_closure, %struct.grub_ext2_dir_closure* %63, i32 0, i32 0
  %65 = load i32 (i8*, %struct.grub_dirhook_info*, i32)*, i32 (i8*, %struct.grub_dirhook_info*, i32)** %64, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = bitcast %struct.grub_dirhook_info.0* %10 to %struct.grub_dirhook_info*
  %68 = load %struct.grub_ext2_dir_closure*, %struct.grub_ext2_dir_closure** %9, align 8
  %69 = getelementptr inbounds %struct.grub_ext2_dir_closure, %struct.grub_ext2_dir_closure* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 %65(i8* %66, %struct.grub_dirhook_info* %67, i32 %70)
  br label %73

72:                                               ; preds = %48
  br label %73

73:                                               ; preds = %72, %62
  %74 = phi i32 [ %71, %62 ], [ 0, %72 ]
  ret i32 %74
}

declare dso_local i32 @grub_memset(%struct.grub_dirhook_info.0*, i32, i32) #1

declare dso_local i32 @grub_ext2_read_inode(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @grub_le_to_cpu32(i32) #1

declare dso_local i32 @grub_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
