; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfsplus.c_grub_hfsplus_read_block.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfsplus.c_grub_hfsplus_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__*, %struct.grub_hfsplus_extent* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.grub_hfsplus_extent = type { i32 }
%struct.grub_hfsplus_btnode = type { i32 }
%struct.grub_hfsplus_extkey = type { i32 }
%struct.grub_hfsplus_extkey_internal = type { i64, i32 }
%struct.grub_hfsplus_key_internal = type { i32 }

@GRUB_DISK_SECTOR_BITS = common dso_local global i32 0, align 4
@GRUB_HFSPLUS_FILEID_OVERFLOW = common dso_local global i64 0, align 8
@GRUB_ERR_READ_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"extra extents found in an extend overflow file\00", align 1
@grub_hfsplus_cmp_extkey = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"no block found for the file id 0x%x and the block offset 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @grub_hfsplus_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_hfsplus_read_block(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.grub_hfsplus_btnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.grub_hfsplus_extent*, align 8
  %9 = alloca %struct.grub_hfsplus_extkey*, align 8
  %10 = alloca %struct.grub_hfsplus_extkey_internal, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.grub_hfsplus_btnode* null, %struct.grub_hfsplus_btnode** %6, align 8
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load %struct.grub_hfsplus_extent*, %struct.grub_hfsplus_extent** %15, align 8
  %17 = getelementptr inbounds %struct.grub_hfsplus_extent, %struct.grub_hfsplus_extent* %16, i64 0
  store %struct.grub_hfsplus_extent* %17, %struct.grub_hfsplus_extent** %8, align 8
  br label %18

18:                                               ; preds = %2, %74
  store i32 0, i32* %12, align 4
  %19 = load %struct.grub_hfsplus_extent*, %struct.grub_hfsplus_extent** %8, align 8
  %20 = call i32 @grub_hfsplus_find_block(%struct.grub_hfsplus_extent* %19, i32* %7)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.grub_hfsplus_btnode*, %struct.grub_hfsplus_btnode** %6, align 8
  %22 = call i32 @grub_free(%struct.grub_hfsplus_btnode* %21)
  store %struct.grub_hfsplus_btnode* null, %struct.grub_hfsplus_btnode** %6, align 8
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %41

25:                                               ; preds = %18
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @GRUB_DISK_SECTOR_BITS, align 4
  %38 = sub nsw i32 %36, %37
  %39 = ashr i32 %31, %38
  %40 = add nsw i32 %26, %39
  store i32 %40, i32* %3, align 4
  br label %89

41:                                               ; preds = %18
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @GRUB_HFSPLUS_FILEID_OVERFLOW, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @GRUB_ERR_READ_ERROR, align 4
  %49 = call i32 (i32, i8*, ...) @grub_error(i32 %48, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %86

50:                                               ; preds = %41
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.grub_hfsplus_extkey_internal, %struct.grub_hfsplus_extkey_internal* %10, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %55, %56
  %58 = getelementptr inbounds %struct.grub_hfsplus_extkey_internal, %struct.grub_hfsplus_extkey_internal* %10, i32 0, i32 1
  store i32 %57, i32* %58, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = bitcast %struct.grub_hfsplus_extkey_internal* %10 to %struct.grub_hfsplus_key_internal*
  %64 = load i32, i32* @grub_hfsplus_cmp_extkey, align 4
  %65 = call i64 @grub_hfsplus_btree_search(i32* %62, %struct.grub_hfsplus_key_internal* %63, i32 %64, %struct.grub_hfsplus_btnode** %6, i32* %12)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %50
  %68 = load i32, i32* @GRUB_ERR_READ_ERROR, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 (i32, i8*, ...) @grub_error(i32 %68, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %71, i32 %72)
  br label %86

74:                                               ; preds = %50
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load %struct.grub_hfsplus_btnode*, %struct.grub_hfsplus_btnode** %6, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i64 @grub_hfsplus_btree_recptr(i32* %78, %struct.grub_hfsplus_btnode* %79, i32 %80)
  %82 = inttoptr i64 %81 to %struct.grub_hfsplus_extkey*
  store %struct.grub_hfsplus_extkey* %82, %struct.grub_hfsplus_extkey** %9, align 8
  %83 = load %struct.grub_hfsplus_extkey*, %struct.grub_hfsplus_extkey** %9, align 8
  %84 = getelementptr inbounds %struct.grub_hfsplus_extkey, %struct.grub_hfsplus_extkey* %83, i64 1
  %85 = bitcast %struct.grub_hfsplus_extkey* %84 to %struct.grub_hfsplus_extent*
  store %struct.grub_hfsplus_extent* %85, %struct.grub_hfsplus_extent** %8, align 8
  br label %18

86:                                               ; preds = %67, %47
  %87 = load %struct.grub_hfsplus_btnode*, %struct.grub_hfsplus_btnode** %6, align 8
  %88 = call i32 @grub_free(%struct.grub_hfsplus_btnode* %87)
  store i32 -1, i32* %3, align 4
  br label %89

89:                                               ; preds = %86, %25
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @grub_hfsplus_find_block(%struct.grub_hfsplus_extent*, i32*) #1

declare dso_local i32 @grub_free(%struct.grub_hfsplus_btnode*) #1

declare dso_local i32 @grub_error(i32, i8*, ...) #1

declare dso_local i64 @grub_hfsplus_btree_search(i32*, %struct.grub_hfsplus_key_internal*, i32, %struct.grub_hfsplus_btnode**, i32*) #1

declare dso_local i64 @grub_hfsplus_btree_recptr(i32*, %struct.grub_hfsplus_btnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
