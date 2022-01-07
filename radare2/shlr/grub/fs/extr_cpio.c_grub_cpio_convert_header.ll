; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_cpio.c_grub_cpio_convert_header.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_cpio.c_grub_cpio_convert_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.head = type { i64, i64, i64, i64 }

@MAGIC_BCPIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.head*)* @grub_cpio_convert_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grub_cpio_convert_header(%struct.head* %0) #0 {
  %2 = alloca %struct.head*, align 8
  store %struct.head* %0, %struct.head** %2, align 8
  %3 = load %struct.head*, %struct.head** %2, align 8
  %4 = getelementptr inbounds %struct.head, %struct.head* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @MAGIC_BCPIO, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %37

8:                                                ; preds = %1
  %9 = load %struct.head*, %struct.head** %2, align 8
  %10 = getelementptr inbounds %struct.head, %struct.head* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i8* @grub_swap_bytes16(i64 %11)
  %13 = ptrtoint i8* %12 to i64
  %14 = load %struct.head*, %struct.head** %2, align 8
  %15 = getelementptr inbounds %struct.head, %struct.head* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.head*, %struct.head** %2, align 8
  %17 = getelementptr inbounds %struct.head, %struct.head* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i8* @grub_swap_bytes16(i64 %18)
  %20 = ptrtoint i8* %19 to i64
  %21 = load %struct.head*, %struct.head** %2, align 8
  %22 = getelementptr inbounds %struct.head, %struct.head* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.head*, %struct.head** %2, align 8
  %24 = getelementptr inbounds %struct.head, %struct.head* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i8* @grub_swap_bytes16(i64 %25)
  %27 = ptrtoint i8* %26 to i64
  %28 = load %struct.head*, %struct.head** %2, align 8
  %29 = getelementptr inbounds %struct.head, %struct.head* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  %30 = load %struct.head*, %struct.head** %2, align 8
  %31 = getelementptr inbounds %struct.head, %struct.head* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = call i8* @grub_swap_bytes16(i64 %32)
  %34 = ptrtoint i8* %33 to i64
  %35 = load %struct.head*, %struct.head** %2, align 8
  %36 = getelementptr inbounds %struct.head, %struct.head* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %8, %1
  ret void
}

declare dso_local i8* @grub_swap_bytes16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
