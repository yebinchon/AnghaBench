; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfsplus.c_grub_hfsplus_btree_recoffset.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfsplus.c_grub_hfsplus_btree_recoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_hfsplus_btree = type { i32 }
%struct.grub_hfsplus_btnode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_hfsplus_btree*, %struct.grub_hfsplus_btnode*, i32)* @grub_hfsplus_btree_recoffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_hfsplus_btree_recoffset(%struct.grub_hfsplus_btree* %0, %struct.grub_hfsplus_btnode* %1, i32 %2) #0 {
  %4 = alloca %struct.grub_hfsplus_btree*, align 8
  %5 = alloca %struct.grub_hfsplus_btnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store %struct.grub_hfsplus_btree* %0, %struct.grub_hfsplus_btree** %4, align 8
  store %struct.grub_hfsplus_btnode* %1, %struct.grub_hfsplus_btnode** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.grub_hfsplus_btnode*, %struct.grub_hfsplus_btnode** %5, align 8
  %10 = bitcast %struct.grub_hfsplus_btnode* %9 to i8*
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load %struct.grub_hfsplus_btree*, %struct.grub_hfsplus_btree** %4, align 8
  %13 = getelementptr inbounds %struct.grub_hfsplus_btree, %struct.grub_hfsplus_btree* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = sub i64 %15, %18
  %20 = sub i64 %19, 2
  %21 = getelementptr inbounds i8, i8* %11, i64 %20
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @grub_be_to_cpu16(i32 %27)
  br label %30

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i32 [ %28, %25 ], [ 0, %29 ]
  ret i32 %31
}

declare dso_local i32 @grub_be_to_cpu16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
