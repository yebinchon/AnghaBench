; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_reiserfs.c_grub_reiserfs_set_key_type.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_reiserfs.c_grub_reiserfs_set_key_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_reiserfs_key = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.grub_reiserfs_key*, i32, i32)* @grub_reiserfs_set_key_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grub_reiserfs_set_key_type(%struct.grub_reiserfs_key* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.grub_reiserfs_key*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.grub_reiserfs_key* %0, %struct.grub_reiserfs_key** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %30 [
    i32 128, label %9
    i32 132, label %10
    i32 130, label %15
    i32 131, label %20
    i32 129, label %25
  ]

9:                                                ; preds = %3
  store i32 0, i32* %7, align 4
  br label %31

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 1
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 555, i32 15
  store i32 %14, i32* %7, align 4
  br label %31

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 1
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 500, i32 3
  store i32 %19, i32* %7, align 4
  br label %31

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 1
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 -1, i32 2
  store i32 %24, i32* %7, align 4
  br label %31

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 1
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 -2, i32 1
  store i32 %29, i32* %7, align 4
  br label %31

30:                                               ; preds = %3
  br label %64

31:                                               ; preds = %25, %20, %15, %10, %9
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @grub_cpu_to_le32(i32 %35)
  %37 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %4, align 8
  %38 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  br label %57

41:                                               ; preds = %31
  %42 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %4, align 8
  %43 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @grub_cpu_to_le64(i32 -1)
  %48 = and i32 %46, %47
  %49 = load i32, i32* %7, align 4
  %50 = shl i32 %49, 60
  %51 = call i32 @grub_cpu_to_le64(i32 %50)
  %52 = or i32 %48, %51
  %53 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %4, align 8
  %54 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %41, %34
  %58 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %4, align 8
  %59 = call i32 @grub_reiserfs_get_key_type(%struct.grub_reiserfs_key* %58)
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  br label %64

64:                                               ; preds = %57, %30
  ret void
}

declare dso_local i32 @grub_cpu_to_le32(i32) #1

declare dso_local i32 @grub_cpu_to_le64(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @grub_reiserfs_get_key_type(%struct.grub_reiserfs_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
