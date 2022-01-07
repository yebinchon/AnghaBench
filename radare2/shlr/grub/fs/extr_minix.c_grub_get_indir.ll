; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_minix.c_grub_get_indir.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_minix.c_grub_get_indir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_minix_data = type { i32, i32, %struct.grub_minix_sblock }
%struct.grub_minix_sblock = type { i32 }

@GRUB_MINIX_LOG2_ZONESZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.grub_minix_data*)* @grub_get_indir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_get_indir(i32 %0, i32 %1, %struct.grub_minix_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.grub_minix_data*, align 8
  %8 = alloca %struct.grub_minix_sblock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.grub_minix_data* %2, %struct.grub_minix_data** %7, align 8
  %11 = load %struct.grub_minix_data*, %struct.grub_minix_data** %7, align 8
  %12 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %11, i32 0, i32 2
  store %struct.grub_minix_sblock* %12, %struct.grub_minix_sblock** %8, align 8
  %13 = load %struct.grub_minix_data*, %struct.grub_minix_data** %7, align 8
  %14 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %32

17:                                               ; preds = %3
  %18 = load %struct.grub_minix_data*, %struct.grub_minix_data** %7, align 8
  %19 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @GRUB_MINIX_LOG2_ZONESZ, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 4, %25
  %27 = trunc i64 %26 to i32
  %28 = bitcast i32* %9 to i8*
  %29 = call i32 @grub_disk_read(i32 %20, i32 %23, i32 %27, i32 4, i8* %28)
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @grub_le_to_cpu16(i32 %30)
  store i32 %31, i32* %4, align 4
  br label %47

32:                                               ; preds = %3
  %33 = load %struct.grub_minix_data*, %struct.grub_minix_data** %7, align 8
  %34 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @GRUB_MINIX_LOG2_ZONESZ, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 4, %40
  %42 = trunc i64 %41 to i32
  %43 = bitcast i32* %10 to i8*
  %44 = call i32 @grub_disk_read(i32 %35, i32 %38, i32 %42, i32 4, i8* %43)
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @grub_le_to_cpu32(i32 %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %32, %17
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @grub_disk_read(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @grub_le_to_cpu16(i32) #1

declare dso_local i32 @grub_le_to_cpu32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
