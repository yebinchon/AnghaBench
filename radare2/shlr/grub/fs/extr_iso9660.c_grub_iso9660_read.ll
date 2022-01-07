; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_iso9660.c_grub_iso9660_read.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_iso9660.c_grub_iso9660_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32*, i64 }
%struct.grub_iso9660_data = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32 }

@GRUB_ISO9660_LOG2_BLKSZ = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i32)* @grub_iso9660_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_iso9660_read(%struct.TYPE_4__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.grub_iso9660_data*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.grub_iso9660_data*
  store %struct.grub_iso9660_data* %12, %struct.grub_iso9660_data** %8, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %8, align 8
  %17 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32* %15, i32** %19, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %8, align 8
  %24 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 8
  %27 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %8, align 8
  %28 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %8, align 8
  %31 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @GRUB_ISO9660_LOG2_BLKSZ, align 4
  %34 = shl i32 %32, %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @grub_disk_read_ex(%struct.TYPE_5__* %29, i32 %34, i32 %37, i32 %38, i8* %39, i32 %42)
  %44 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %8, align 8
  %45 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  %48 = load i64, i64* @grub_errno, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %53

51:                                               ; preds = %3
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %50
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @grub_disk_read_ex(%struct.TYPE_5__*, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
