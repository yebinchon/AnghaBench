; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfs.c_grub_hfs_cmp_catkeys.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfs.c_grub_hfs_cmp_catkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_hfs_catalog_key = type { i32, i64*, i32 }

@grub_hfs_cmp_catkeys.hfs_charorder = internal constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22'()*+./0123456789:;<=>?@ABCDEFGQRTUZ[\\]bcdefhqrstvw|}~\7F\81\82\83\84\85\86MGQRTUZ[\\]bcdefhqrstvw|}~\7F\81\87\88\89\8A\8BIKSVgixNHOIJKSVWXY^_`agmnoijyz{x\8C\8D\8E\8F\90\91\92u\93\94\95\96\97\98Lk\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3Pp\A4Lk\A5\A6\A7\A8\A9\AA\AB%&\AC HJjll\AD\AE#$,-\AF\B0\80\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_hfs_catalog_key*, %struct.grub_hfs_catalog_key*)* @grub_hfs_cmp_catkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_hfs_cmp_catkeys(%struct.grub_hfs_catalog_key* %0, %struct.grub_hfs_catalog_key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.grub_hfs_catalog_key*, align 8
  %5 = alloca %struct.grub_hfs_catalog_key*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.grub_hfs_catalog_key* %0, %struct.grub_hfs_catalog_key** %4, align 8
  store %struct.grub_hfs_catalog_key* %1, %struct.grub_hfs_catalog_key** %5, align 8
  %9 = load %struct.grub_hfs_catalog_key*, %struct.grub_hfs_catalog_key** %4, align 8
  %10 = getelementptr inbounds %struct.grub_hfs_catalog_key, %struct.grub_hfs_catalog_key* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.grub_hfs_catalog_key*, %struct.grub_hfs_catalog_key** %5, align 8
  %13 = getelementptr inbounds %struct.grub_hfs_catalog_key, %struct.grub_hfs_catalog_key* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.grub_hfs_catalog_key*, %struct.grub_hfs_catalog_key** %4, align 8
  %18 = getelementptr inbounds %struct.grub_hfs_catalog_key, %struct.grub_hfs_catalog_key* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.grub_hfs_catalog_key*, %struct.grub_hfs_catalog_key** %5, align 8
  %22 = getelementptr inbounds %struct.grub_hfs_catalog_key, %struct.grub_hfs_catalog_key* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %19, %16 ], [ %23, %20 ]
  store i32 %25, i32* %8, align 4
  %26 = load %struct.grub_hfs_catalog_key*, %struct.grub_hfs_catalog_key** %4, align 8
  %27 = getelementptr inbounds %struct.grub_hfs_catalog_key, %struct.grub_hfs_catalog_key* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @grub_be_to_cpu32(i32 %28)
  %30 = load %struct.grub_hfs_catalog_key*, %struct.grub_hfs_catalog_key** %5, align 8
  %31 = getelementptr inbounds %struct.grub_hfs_catalog_key, %struct.grub_hfs_catalog_key* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @grub_be_to_cpu32(i32 %32)
  %34 = sub nsw i32 %29, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %82

39:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %71, %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %74

44:                                               ; preds = %40
  %45 = load %struct.grub_hfs_catalog_key*, %struct.grub_hfs_catalog_key** %4, align 8
  %46 = getelementptr inbounds %struct.grub_hfs_catalog_key, %struct.grub_hfs_catalog_key* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* @grub_hfs_cmp_catkeys.hfs_charorder, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = load %struct.grub_hfs_catalog_key*, %struct.grub_hfs_catalog_key** %5, align 8
  %56 = getelementptr inbounds %struct.grub_hfs_catalog_key, %struct.grub_hfs_catalog_key* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* @grub_hfs_cmp_catkeys.hfs_charorder, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = sub nsw i32 %54, %64
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %44
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %82

70:                                               ; preds = %44
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %40

74:                                               ; preds = %40
  %75 = load %struct.grub_hfs_catalog_key*, %struct.grub_hfs_catalog_key** %4, align 8
  %76 = getelementptr inbounds %struct.grub_hfs_catalog_key, %struct.grub_hfs_catalog_key* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.grub_hfs_catalog_key*, %struct.grub_hfs_catalog_key** %5, align 8
  %79 = getelementptr inbounds %struct.grub_hfs_catalog_key, %struct.grub_hfs_catalog_key* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %77, %80
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %74, %68, %37
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @grub_be_to_cpu32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
