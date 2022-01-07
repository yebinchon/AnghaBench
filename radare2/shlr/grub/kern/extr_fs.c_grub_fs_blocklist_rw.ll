; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_fs.c_grub_fs_blocklist_rw.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_fs.c_grub_fs_blocklist_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, %struct.TYPE_4__*, %struct.grub_fs_block* }
%struct.TYPE_4__ = type { i32 }
%struct.grub_fs_block = type { i64, i64 }

@GRUB_ERR_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_5__*, i8*, i64)* @grub_fs_blocklist_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_fs_blocklist_rw(i32 %0, %struct.TYPE_5__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.grub_fs_block*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %14 = load i64, i64* %9, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  %22 = icmp sgt i64 %14, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  store i64 %30, i64* %9, align 8
  br label %31

31:                                               ; preds = %23, %4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 4
  %37 = load %struct.grub_fs_block*, %struct.grub_fs_block** %36, align 8
  store %struct.grub_fs_block* %37, %struct.grub_fs_block** %10, align 8
  br label %38

38:                                               ; preds = %135, %31
  %39 = load %struct.grub_fs_block*, %struct.grub_fs_block** %10, align 8
  %40 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i64, i64* %9, align 8
  %45 = icmp sgt i64 %44, 0
  br label %46

46:                                               ; preds = %43, %38
  %47 = phi i1 [ false, %38 ], [ %45, %43 ]
  br i1 %47, label %48, label %138

48:                                               ; preds = %46
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.grub_fs_block*, %struct.grub_fs_block** %10, align 8
  %51 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %54, label %129

54:                                               ; preds = %48
  %55 = load i64, i64* %9, align 8
  store i64 %55, i64* %13, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %13, align 8
  %58 = add nsw i64 %56, %57
  %59 = load %struct.grub_fs_block*, %struct.grub_fs_block** %10, align 8
  %60 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %54
  %64 = load %struct.grub_fs_block*, %struct.grub_fs_block** %10, align 8
  %65 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = sub nsw i64 %66, %67
  store i64 %68, i64* %13, align 8
  br label %69

69:                                               ; preds = %63, %54
  %70 = load i8*, i8** %8, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %90

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %72
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.grub_fs_block*, %struct.grub_fs_block** %10, align 8
  %82 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %11, align 8
  %85 = add nsw i64 %83, %84
  %86 = load i64, i64* %13, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @grub_disk_write(i32 %80, i32 0, i64 %85, i64 %86, i8* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %109, label %110

90:                                               ; preds = %72, %69
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.grub_fs_block*, %struct.grub_fs_block** %10, align 8
  %97 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %11, align 8
  %100 = add nsw i64 %98, %99
  %101 = load i64, i64* %13, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @grub_disk_read_ex(i32 %95, i32 0, i64 %100, i64 %101, i8* %102, i32 %105)
  %107 = load i64, i64* @GRUB_ERR_NONE, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %90, %75
  store i32 -1, i32* %5, align 4
  br label %140

110:                                              ; preds = %90, %75
  %111 = load i64, i64* %13, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %12, align 4
  %116 = load i64, i64* %13, align 8
  %117 = load i64, i64* %9, align 8
  %118 = sub nsw i64 %117, %116
  store i64 %118, i64* %9, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %125

121:                                              ; preds = %110
  %122 = load i64, i64* %13, align 8
  %123 = load i8*, i8** %8, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 %122
  store i8* %124, i8** %8, align 8
  br label %125

125:                                              ; preds = %121, %110
  %126 = load i64, i64* %13, align 8
  %127 = load i64, i64* %11, align 8
  %128 = add nsw i64 %127, %126
  store i64 %128, i64* %11, align 8
  br label %129

129:                                              ; preds = %125, %48
  %130 = load %struct.grub_fs_block*, %struct.grub_fs_block** %10, align 8
  %131 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %11, align 8
  %134 = sub nsw i64 %133, %132
  store i64 %134, i64* %11, align 8
  br label %135

135:                                              ; preds = %129
  %136 = load %struct.grub_fs_block*, %struct.grub_fs_block** %10, align 8
  %137 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %136, i32 1
  store %struct.grub_fs_block* %137, %struct.grub_fs_block** %10, align 8
  br label %38

138:                                              ; preds = %46
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %138, %109
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @grub_disk_write(i32, i32, i64, i64, i8*) #1

declare dso_local i64 @grub_disk_read_ex(i32, i32, i64, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
