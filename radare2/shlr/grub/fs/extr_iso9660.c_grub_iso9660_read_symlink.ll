; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_iso9660.c_grub_iso9660_read_symlink.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_iso9660.c_grub_iso9660_read_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.grub_iso9660_dir = type { i32, i32 }
%struct.grub_iso9660_read_symlink_closure = type { i8*, i64 }

@susp_iterate_sl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_4__*)* @grub_iso9660_read_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @grub_iso9660_read_symlink(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.grub_iso9660_dir, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.grub_iso9660_read_symlink_closure, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = bitcast %struct.grub_iso9660_dir* %4 to i8*
  %20 = call i64 @grub_disk_read(i32 %12, i32 %15, i64 %18, i32 8, i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %79

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.grub_iso9660_dir, %struct.grub_iso9660_dir* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 8, %26
  %28 = add i64 %27, 1
  %29 = getelementptr inbounds %struct.grub_iso9660_dir, %struct.grub_iso9660_dir* %4, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = srem i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = sub i64 %28, %32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %33, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %5, align 4
  %42 = getelementptr inbounds %struct.grub_iso9660_dir, %struct.grub_iso9660_dir* %4, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %6, align 4
  %46 = call i8* @grub_malloc(i32 1)
  %47 = getelementptr inbounds %struct.grub_iso9660_read_symlink_closure, %struct.grub_iso9660_read_symlink_closure* %7, i32 0, i32 0
  store i8* %46, i8** %47, align 8
  %48 = getelementptr inbounds %struct.grub_iso9660_read_symlink_closure, %struct.grub_iso9660_read_symlink_closure* %7, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %23
  store i8* null, i8** %2, align 8
  br label %79

52:                                               ; preds = %23
  %53 = getelementptr inbounds %struct.grub_iso9660_read_symlink_closure, %struct.grub_iso9660_read_symlink_closure* %7, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8 0, i8* %54, align 1
  %55 = getelementptr inbounds %struct.grub_iso9660_read_symlink_closure, %struct.grub_iso9660_read_symlink_closure* %7, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %64, %66
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @susp_iterate_sl, align 4
  %70 = call i64 @grub_iso9660_susp_iterate(%struct.TYPE_5__* %58, i32 %61, i64 %67, i32 %68, i32 %69, %struct.grub_iso9660_read_symlink_closure* %7)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %52
  %73 = getelementptr inbounds %struct.grub_iso9660_read_symlink_closure, %struct.grub_iso9660_read_symlink_closure* %7, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @grub_free(i8* %74)
  store i8* null, i8** %2, align 8
  br label %79

76:                                               ; preds = %52
  %77 = getelementptr inbounds %struct.grub_iso9660_read_symlink_closure, %struct.grub_iso9660_read_symlink_closure* %7, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %2, align 8
  br label %79

79:                                               ; preds = %76, %72, %51, %22
  %80 = load i8*, i8** %2, align 8
  ret i8* %80
}

declare dso_local i64 @grub_disk_read(i32, i32, i64, i32, i8*) #1

declare dso_local i8* @grub_malloc(i32) #1

declare dso_local i64 @grub_iso9660_susp_iterate(%struct.TYPE_5__*, i32, i64, i32, i32, %struct.grub_iso9660_read_symlink_closure*) #1

declare dso_local i32 @grub_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
