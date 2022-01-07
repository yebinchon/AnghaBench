; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_minix.c_grub_minix_read_file.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_minix.c_grub_minix_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_minix_data = type { %struct.TYPE_2__*, %struct.grub_minix_sblock }
%struct.TYPE_2__ = type { void (i64, i32, i32, i8*)*, i8* }
%struct.grub_minix_sblock = type { i32 }

@GRUB_MINIX_BSIZE = common dso_local global i64 0, align 8
@grub_errno = common dso_local global i64 0, align 8
@GRUB_MINIX_LOG2_ZONESZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_minix_data*, void (i64, i32, i32, i8*)*, i8*, i32, i64, i8*)* @grub_minix_read_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_minix_read_file(%struct.grub_minix_data* %0, void (i64, i32, i32, i8*)* %1, i8* %2, i32 %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.grub_minix_data*, align 8
  %9 = alloca void (i64, i32, i32, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.grub_minix_sblock*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.grub_minix_data* %0, %struct.grub_minix_data** %8, align 8
  store void (i64, i32, i32, i8*)* %1, void (i64, i32, i32, i8*)** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %21 = load %struct.grub_minix_data*, %struct.grub_minix_data** %8, align 8
  %22 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %21, i32 0, i32 1
  store %struct.grub_minix_sblock* %22, %struct.grub_minix_sblock** %14, align 8
  %23 = load i64, i64* %12, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = load %struct.grub_minix_data*, %struct.grub_minix_data** %8, align 8
  %28 = call i64 @GRUB_MINIX_INODE_SIZE(%struct.grub_minix_data* %27)
  %29 = icmp sgt i64 %26, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %6
  %31 = load %struct.grub_minix_data*, %struct.grub_minix_data** %8, align 8
  %32 = call i64 @GRUB_MINIX_INODE_SIZE(%struct.grub_minix_data* %31)
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %32, %34
  store i64 %35, i64* %12, align 8
  br label %36

36:                                               ; preds = %30, %6
  %37 = load i64, i64* %12, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = load i64, i64* @GRUB_MINIX_BSIZE, align 8
  %42 = add nsw i64 %40, %41
  %43 = sub nsw i64 %42, 1
  %44 = load i64, i64* @GRUB_MINIX_BSIZE, align 8
  %45 = sdiv i64 %43, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* @GRUB_MINIX_BSIZE, align 8
  %50 = sdiv i64 %48, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %15, align 4
  br label %52

52:                                               ; preds = %136, %36
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %139

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* @GRUB_MINIX_BSIZE, align 8
  %60 = srem i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %18, align 4
  %62 = load i64, i64* @GRUB_MINIX_BSIZE, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %64 = load %struct.grub_minix_data*, %struct.grub_minix_data** %8, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @grub_minix_get_file_block(%struct.grub_minix_data* %64, i32 %65)
  store i32 %66, i32* %17, align 4
  %67 = load i64, i64* @grub_errno, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  store i32 -1, i32* %7, align 4
  br label %142

70:                                               ; preds = %56
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %16, align 4
  %73 = sub nsw i32 %72, 1
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %70
  %76 = load i64, i64* %12, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = load i64, i64* @GRUB_MINIX_BSIZE, align 8
  %81 = srem i64 %79, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %19, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %75
  %86 = load i64, i64* @GRUB_MINIX_BSIZE, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %19, align 4
  br label %88

88:                                               ; preds = %85, %75
  br label %89

89:                                               ; preds = %88, %70
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i64, i64* @GRUB_MINIX_BSIZE, align 8
  %93 = trunc i64 %92 to i32
  %94 = sdiv i32 %91, %93
  %95 = icmp eq i32 %90, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load i32, i32* %18, align 4
  store i32 %97, i32* %20, align 4
  %98 = load i32, i32* %20, align 4
  %99 = load i32, i32* %19, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* %19, align 4
  br label %101

101:                                              ; preds = %96, %89
  %102 = load void (i64, i32, i32, i8*)*, void (i64, i32, i32, i8*)** %9, align 8
  %103 = load %struct.grub_minix_data*, %struct.grub_minix_data** %8, align 8
  %104 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store void (i64, i32, i32, i8*)* %102, void (i64, i32, i32, i8*)** %106, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = load %struct.grub_minix_data*, %struct.grub_minix_data** %8, align 8
  %109 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  store i8* %107, i8** %111, align 8
  %112 = load %struct.grub_minix_data*, %struct.grub_minix_data** %8, align 8
  %113 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* @GRUB_MINIX_LOG2_ZONESZ, align 4
  %117 = shl i32 %115, %116
  %118 = load i32, i32* %20, align 4
  %119 = load i32, i32* %19, align 4
  %120 = load i8*, i8** %13, align 8
  %121 = call i32 @grub_disk_read(%struct.TYPE_2__* %114, i32 %117, i32 %118, i32 %119, i8* %120)
  %122 = load %struct.grub_minix_data*, %struct.grub_minix_data** %8, align 8
  %123 = getelementptr inbounds %struct.grub_minix_data, %struct.grub_minix_data* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  store void (i64, i32, i32, i8*)* null, void (i64, i32, i32, i8*)** %125, align 8
  %126 = load i64, i64* @grub_errno, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %101
  store i32 -1, i32* %7, align 4
  br label %142

129:                                              ; preds = %101
  %130 = load i64, i64* @GRUB_MINIX_BSIZE, align 8
  %131 = load i32, i32* %20, align 4
  %132 = sext i32 %131 to i64
  %133 = sub nsw i64 %130, %132
  %134 = load i8*, i8** %13, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 %133
  store i8* %135, i8** %13, align 8
  br label %136

136:                                              ; preds = %129
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %15, align 4
  br label %52

139:                                              ; preds = %52
  %140 = load i64, i64* %12, align 8
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %139, %128, %69
  %143 = load i32, i32* %7, align 4
  ret i32 %143
}

declare dso_local i64 @GRUB_MINIX_INODE_SIZE(%struct.grub_minix_data*) #1

declare dso_local i32 @grub_minix_get_file_block(%struct.grub_minix_data*, i32) #1

declare dso_local i32 @grub_disk_read(%struct.TYPE_2__*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
