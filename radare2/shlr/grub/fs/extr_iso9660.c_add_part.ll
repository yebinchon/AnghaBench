; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_iso9660.c_add_part.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_iso9660.c_add_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_iso9660_read_symlink_closure = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.grub_iso9660_read_symlink_closure*)* @add_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_part(i8* %0, i32 %1, %struct.grub_iso9660_read_symlink_closure* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.grub_iso9660_read_symlink_closure*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.grub_iso9660_read_symlink_closure* %2, %struct.grub_iso9660_read_symlink_closure** %6, align 8
  %8 = load %struct.grub_iso9660_read_symlink_closure*, %struct.grub_iso9660_read_symlink_closure** %6, align 8
  %9 = getelementptr inbounds %struct.grub_iso9660_read_symlink_closure, %struct.grub_iso9660_read_symlink_closure* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @grub_strlen(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.grub_iso9660_read_symlink_closure*, %struct.grub_iso9660_read_symlink_closure** %6, align 8
  %13 = getelementptr inbounds %struct.grub_iso9660_read_symlink_closure, %struct.grub_iso9660_read_symlink_closure* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %15, %16
  %18 = add nsw i32 %17, 1
  %19 = call i32 @grub_realloc(i32 %14, i32 %18)
  %20 = load %struct.grub_iso9660_read_symlink_closure*, %struct.grub_iso9660_read_symlink_closure** %6, align 8
  %21 = getelementptr inbounds %struct.grub_iso9660_read_symlink_closure, %struct.grub_iso9660_read_symlink_closure* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.grub_iso9660_read_symlink_closure*, %struct.grub_iso9660_read_symlink_closure** %6, align 8
  %23 = getelementptr inbounds %struct.grub_iso9660_read_symlink_closure, %struct.grub_iso9660_read_symlink_closure* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  br label %34

27:                                               ; preds = %3
  %28 = load %struct.grub_iso9660_read_symlink_closure*, %struct.grub_iso9660_read_symlink_closure** %6, align 8
  %29 = getelementptr inbounds %struct.grub_iso9660_read_symlink_closure, %struct.grub_iso9660_read_symlink_closure* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @grub_strncat(i32 %30, i8* %31, i32 %32)
  br label %34

34:                                               ; preds = %27, %26
  ret void
}

declare dso_local i32 @grub_strlen(i32) #1

declare dso_local i32 @grub_realloc(i32, i32) #1

declare dso_local i32 @grub_strncat(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
