; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_afs.c_grub_afs_validate_sblock.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_afs.c_grub_afs_validate_sblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_afs_sblock = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GRUB_AFS_SBLOCK_MAGIC1 = common dso_local global i64 0, align 8
@GRUB_AFS_SBLOCK_MAGIC2 = common dso_local global i64 0, align 8
@GRUB_AFS_SBLOCK_MAGIC3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_afs_sblock*)* @grub_afs_validate_sblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_afs_validate_sblock(%struct.grub_afs_sblock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.grub_afs_sblock*, align 8
  store %struct.grub_afs_sblock* %0, %struct.grub_afs_sblock** %3, align 8
  %4 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %5 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @grub_afs_to_cpu32(i32 %6)
  %8 = load i64, i64* @GRUB_AFS_SBLOCK_MAGIC1, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %95

10:                                               ; preds = %1
  %11 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %12 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @grub_afs_to_cpu32(i32 %13)
  %15 = trunc i64 %14 to i32
  %16 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %17 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %19 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @grub_afs_to_cpu32(i32 %20)
  %22 = trunc i64 %21 to i32
  %23 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %24 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %26 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @grub_afs_to_cpu32(i32 %27)
  %29 = trunc i64 %28 to i32
  %30 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %31 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %33 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @grub_afs_to_cpu32(i32 %34)
  %36 = trunc i64 %35 to i32
  %37 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %38 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %40 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @grub_afs_to_cpu64(i32 %41)
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %45 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %47 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @grub_afs_to_cpu64(i32 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %52 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %54 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @grub_afs_to_cpu32(i32 %55)
  %57 = trunc i64 %56 to i32
  %58 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %59 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %61 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @grub_afs_to_cpu32(i32 %62)
  %64 = trunc i64 %63 to i32
  %65 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %66 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 4
  %67 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %68 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %67, i32 0, i32 9
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @grub_afs_to_cpu32(i32 %69)
  %71 = trunc i64 %70 to i32
  %72 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %73 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %72, i32 0, i32 9
  store i32 %71, i32* %73, align 4
  %74 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %75 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %74, i32 0, i32 10
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @grub_afs_to_cpu32(i32 %76)
  %78 = trunc i64 %77 to i32
  %79 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %80 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %79, i32 0, i32 10
  store i32 %78, i32* %80, align 4
  %81 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %82 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @grub_afs_to_cpu32(i32 %83)
  %85 = trunc i64 %84 to i32
  %86 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %87 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %86, i32 0, i32 8
  store i32 %85, i32* %87, align 4
  %88 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %89 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %88, i32 0, i32 11
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @grub_afs_to_cpu32(i32 %90)
  %92 = trunc i64 %91 to i32
  %93 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %94 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %93, i32 0, i32 11
  store i32 %92, i32* %94, align 4
  br label %96

95:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %189

96:                                               ; preds = %10
  %97 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %98 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* @GRUB_AFS_SBLOCK_MAGIC2, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %110, label %103

103:                                              ; preds = %96
  %104 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %105 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* @GRUB_AFS_SBLOCK_MAGIC3, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %103, %96
  store i32 0, i32* %2, align 4
  br label %189

111:                                              ; preds = %103
  %112 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %113 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 1, %114
  %116 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %117 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %115, %118
  br i1 %119, label %187, label %120

120:                                              ; preds = %111
  %121 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %122 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %125 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = icmp sgt i32 %123, %126
  br i1 %127, label %187, label %128

128:                                              ; preds = %120
  %129 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %130 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %133 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %131, %134
  br i1 %135, label %187, label %136

136:                                              ; preds = %128
  %137 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %138 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 0, %139
  br i1 %140, label %187, label %141

141:                                              ; preds = %136
  %142 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %143 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %142, i32 0, i32 9
  %144 = load i32, i32* %143, align 4
  %145 = shl i32 1, %144
  %146 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %147 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %146, i32 0, i32 10
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %150 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %148, %151
  %153 = icmp ne i32 %145, %152
  br i1 %153, label %187, label %154

154:                                              ; preds = %141
  %155 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %156 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %155, i32 0, i32 8
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %159 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %158, i32 0, i32 10
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %157, %160
  %162 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %163 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 4
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %187, label %166

166:                                              ; preds = %154
  %167 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %168 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %167, i32 0, i32 13
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @grub_afs_to_cpu16(i32 %170)
  %172 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %173 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %172, i32 0, i32 11
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = icmp ne i64 %171, %175
  br i1 %176, label %187, label %177

177:                                              ; preds = %166
  %178 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %179 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %178, i32 0, i32 12
  %180 = load i32, i32* %179, align 4
  %181 = call i64 @grub_afs_to_cpu32(i32 %180)
  %182 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %3, align 8
  %183 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %182, i32 0, i32 11
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = icmp sgt i64 %181, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %177, %166, %154, %141, %136, %128, %120, %111
  store i32 0, i32* %2, align 4
  br label %189

188:                                              ; preds = %177
  store i32 1, i32* %2, align 4
  br label %189

189:                                              ; preds = %188, %187, %110, %95
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i64 @grub_afs_to_cpu32(i32) #1

declare dso_local i8* @grub_afs_to_cpu64(i32) #1

declare dso_local i64 @grub_afs_to_cpu16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
