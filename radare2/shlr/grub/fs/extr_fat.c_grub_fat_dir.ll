; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_fat.c_grub_fat_dir.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_fat.c_grub_fat_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.grub_dirhook_info = type opaque
%struct.grub_fat_data = type opaque
%struct.grub_dirhook_info.0 = type opaque

@my_mod = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i64 0, align 8
@GRUB_ERR_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i8*, i32 (i8*, %struct.grub_dirhook_info*, i8*)*, i8*)* @grub_fat_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @grub_fat_dir(%struct.TYPE_3__* %0, i8* %1, i32 (i8*, %struct.grub_dirhook_info*, i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i8*, %struct.grub_dirhook_info*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.grub_fat_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (i8*, %struct.grub_dirhook_info*, i8*)* %2, i32 (i8*, %struct.grub_dirhook_info*, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  store %struct.grub_fat_data* null, %struct.grub_fat_data** %9, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  store i8* null, i8** %12, align 8
  %17 = load i32, i32* @my_mod, align 4
  %18 = call i32 @grub_dl_ref(i32 %17)
  %19 = load i32, i32* %10, align 4
  %20 = call i8* @grub_fat_mount(i32 %19)
  %21 = bitcast i8* %20 to %struct.grub_fat_data*
  store %struct.grub_fat_data* %21, %struct.grub_fat_data** %9, align 8
  %22 = load %struct.grub_fat_data*, %struct.grub_fat_data** %9, align 8
  %23 = icmp ne %struct.grub_fat_data* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  br label %80

25:                                               ; preds = %4
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @grub_strlen(i8* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %28, 1
  %30 = add nsw i32 %29, 1
  %31 = call i8* @grub_malloc(i32 %30)
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  br label %80

35:                                               ; preds = %25
  %36 = load i8*, i8** %12, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @grub_memcpy(i8* %36, i8* %37, i32 %38)
  %40 = load i8*, i8** %12, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8* %43, i8** %13, align 8
  %44 = load i32, i32* %11, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %35
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 47
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i8*, i8** %13, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %13, align 8
  store i8 47, i8* %56, align 1
  br label %58

58:                                               ; preds = %55, %46, %35
  %59 = load i8*, i8** %13, align 8
  store i8 0, i8* %59, align 1
  %60 = load i8*, i8** %12, align 8
  store i8* %60, i8** %13, align 8
  br label %61

61:                                               ; preds = %77, %58
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.grub_fat_data*, %struct.grub_fat_data** %9, align 8
  %64 = bitcast %struct.grub_fat_data* %63 to i8*
  %65 = load i8*, i8** %13, align 8
  %66 = load i32 (i8*, %struct.grub_dirhook_info*, i8*)*, i32 (i8*, %struct.grub_dirhook_info*, i8*)** %7, align 8
  %67 = bitcast i32 (i8*, %struct.grub_dirhook_info*, i8*)* %66 to i32 (i8*, %struct.grub_dirhook_info.0*, i8*)*
  %68 = load i8*, i8** %8, align 8
  %69 = call i8* @grub_fat_find_dir(i32 %62, i8* %64, i8* %65, i32 (i8*, %struct.grub_dirhook_info.0*, i8*)* %67, i8* %68)
  store i8* %69, i8** %13, align 8
  br label %70

70:                                               ; preds = %61
  %71 = load i8*, i8** %13, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i64, i64* @grub_errno, align 8
  %75 = load i64, i64* @GRUB_ERR_NONE, align 8
  %76 = icmp eq i64 %74, %75
  br label %77

77:                                               ; preds = %73, %70
  %78 = phi i1 [ false, %70 ], [ %76, %73 ]
  br i1 %78, label %61, label %79

79:                                               ; preds = %77
  br label %80

80:                                               ; preds = %79, %34, %24
  %81 = load i8*, i8** %12, align 8
  %82 = call i32 @grub_free(i8* %81)
  %83 = load %struct.grub_fat_data*, %struct.grub_fat_data** %9, align 8
  %84 = bitcast %struct.grub_fat_data* %83 to i8*
  %85 = call i32 @grub_free(i8* %84)
  %86 = load i32, i32* @my_mod, align 4
  %87 = call i32 @grub_dl_unref(i32 %86)
  %88 = load i64, i64* @grub_errno, align 8
  ret i64 %88
}

declare dso_local i32 @grub_dl_ref(i32) #1

declare dso_local i8* @grub_fat_mount(i32) #1

declare dso_local i32 @grub_strlen(i8*) #1

declare dso_local i8* @grub_malloc(i32) #1

declare dso_local i32 @grub_memcpy(i8*, i8*, i32) #1

declare dso_local i8* @grub_fat_find_dir(i32, i8*, i8*, i32 (i8*, %struct.grub_dirhook_info.0*, i8*)*, i8*) #1

declare dso_local i32 @grub_free(i8*) #1

declare dso_local i32 @grub_dl_unref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
