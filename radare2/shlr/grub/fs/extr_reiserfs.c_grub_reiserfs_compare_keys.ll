; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_reiserfs.c_grub_reiserfs_compare_keys.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_reiserfs.c_grub_reiserfs_compare_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_reiserfs_key = type { i32, i32 }

@GRUB_REISERFS_ANY = common dso_local global i32 0, align 4
@GRUB_REISERFS_DIRECT = common dso_local global i32 0, align 4
@GRUB_REISERFS_INDIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_reiserfs_key*, %struct.grub_reiserfs_key*)* @grub_reiserfs_compare_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_reiserfs_compare_keys(%struct.grub_reiserfs_key* %0, %struct.grub_reiserfs_key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.grub_reiserfs_key*, align 8
  %5 = alloca %struct.grub_reiserfs_key*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.grub_reiserfs_key* %0, %struct.grub_reiserfs_key** %4, align 8
  store %struct.grub_reiserfs_key* %1, %struct.grub_reiserfs_key** %5, align 8
  %12 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %4, align 8
  %13 = icmp ne %struct.grub_reiserfs_key* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %5, align 8
  %16 = icmp ne %struct.grub_reiserfs_key* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %2
  store i32 -2, i32* %3, align 4
  br label %108

18:                                               ; preds = %14
  %19 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %4, align 8
  %20 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @grub_le_to_cpu32(i32 %21)
  store i64 %22, i64* %10, align 8
  %23 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %5, align 8
  %24 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @grub_le_to_cpu32(i32 %25)
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %108

31:                                               ; preds = %18
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %108

36:                                               ; preds = %31
  %37 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %4, align 8
  %38 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @grub_le_to_cpu32(i32 %39)
  store i64 %40, i64* %10, align 8
  %41 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %5, align 8
  %42 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @grub_le_to_cpu32(i32 %43)
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %108

49:                                               ; preds = %36
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %108

54:                                               ; preds = %49
  %55 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %4, align 8
  %56 = call i64 @grub_reiserfs_get_key_offset(%struct.grub_reiserfs_key* %55)
  store i64 %56, i64* %6, align 8
  %57 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %5, align 8
  %58 = call i64 @grub_reiserfs_get_key_offset(%struct.grub_reiserfs_key* %57)
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 -1, i32* %3, align 4
  br label %108

63:                                               ; preds = %54
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 1, i32* %3, align 4
  br label %108

68:                                               ; preds = %63
  %69 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %4, align 8
  %70 = call i32 @grub_reiserfs_get_key_type(%struct.grub_reiserfs_key* %69)
  store i32 %70, i32* %8, align 4
  %71 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %5, align 8
  %72 = call i32 @grub_reiserfs_get_key_type(%struct.grub_reiserfs_key* %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @GRUB_REISERFS_ANY, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %68
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @GRUB_REISERFS_DIRECT, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %96, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @GRUB_REISERFS_INDIRECT, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %96, label %84

84:                                               ; preds = %80, %68
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @GRUB_REISERFS_ANY, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @GRUB_REISERFS_DIRECT, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @GRUB_REISERFS_INDIRECT, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92, %88, %80, %76
  store i32 0, i32* %3, align 4
  br label %108

97:                                               ; preds = %92, %84
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 -1, i32* %3, align 4
  br label %108

102:                                              ; preds = %97
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp ugt i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 1, i32* %3, align 4
  br label %108

107:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %106, %101, %96, %67, %62, %53, %48, %35, %30, %17
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i64 @grub_le_to_cpu32(i32) #1

declare dso_local i64 @grub_reiserfs_get_key_offset(%struct.grub_reiserfs_key*) #1

declare dso_local i32 @grub_reiserfs_get_key_type(%struct.grub_reiserfs_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
