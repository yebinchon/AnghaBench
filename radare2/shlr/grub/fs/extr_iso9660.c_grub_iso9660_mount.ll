; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_iso9660.c_grub_iso9660_mount.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_iso9660.c_grub_iso9660_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_iso9660_data = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.grub_iso9660_dir = type { i32, i32 }
%struct.grub_iso9660_susp_entry = type { i32, i64 }
%struct.grub_iso9660_primary_voldesc = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@GRUB_ISO9660_LOG2_BLKSZ = common dso_local global i32 0, align 4
@GRUB_ERR_BAD_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"not a ISO9660 filesystem\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"CD001\00", align 1
@GRUB_ISO9660_VOLDESC_PRIMARY = common dso_local global i64 0, align 8
@GRUB_ISO9660_VOLDESC_SUPP = common dso_local global i64 0, align 8
@GRUB_ISO9660_VOLDESC_END = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"SP\00", align 1
@susp_iterate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.grub_iso9660_data* (i32)* @grub_iso9660_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.grub_iso9660_data* @grub_iso9660_mount(i32 %0) #0 {
  %2 = alloca %struct.grub_iso9660_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.grub_iso9660_data*, align 8
  %5 = alloca %struct.grub_iso9660_dir, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.grub_iso9660_susp_entry*, align 8
  %10 = alloca %struct.grub_iso9660_primary_voldesc, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.grub_iso9660_data* null, %struct.grub_iso9660_data** %4, align 8
  %14 = call %struct.grub_iso9660_data* @grub_zalloc(i32 16)
  store %struct.grub_iso9660_data* %14, %struct.grub_iso9660_data** %4, align 8
  %15 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %4, align 8
  %16 = icmp ne %struct.grub_iso9660_data* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store %struct.grub_iso9660_data* null, %struct.grub_iso9660_data** %2, align 8
  br label %211

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %4, align 8
  %21 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  store i32 16, i32* %11, align 4
  br label %22

22:                                               ; preds = %102, %18
  store i32 0, i32* %12, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @GRUB_ISO9660_LOG2_BLKSZ, align 4
  %26 = shl i32 %24, %25
  %27 = bitcast %struct.grub_iso9660_primary_voldesc* %10 to i8*
  %28 = call i64 @grub_disk_read(i32 %23, i32 %26, i32 0, i32 24, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %32 = call i32 @grub_error(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %208

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.grub_iso9660_primary_voldesc, %struct.grub_iso9660_primary_voldesc* %10, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = call i64 @grub_strncmp(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %42 = call i32 @grub_error(i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %208

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.grub_iso9660_primary_voldesc, %struct.grub_iso9660_primary_voldesc* %10, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @GRUB_ISO9660_VOLDESC_PRIMARY, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 1, i32* %12, align 4
  br label %90

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.grub_iso9660_primary_voldesc, %struct.grub_iso9660_primary_voldesc* %10, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @GRUB_ISO9660_VOLDESC_SUPP, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %89

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.grub_iso9660_primary_voldesc, %struct.grub_iso9660_primary_voldesc* %10, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 37
  br i1 %61, label %62, label %89

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.grub_iso9660_primary_voldesc, %struct.grub_iso9660_primary_voldesc* %10, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 47
  br i1 %67, label %68, label %89

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.grub_iso9660_primary_voldesc, %struct.grub_iso9660_primary_voldesc* %10, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 64
  br i1 %73, label %86, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.grub_iso9660_primary_voldesc, %struct.grub_iso9660_primary_voldesc* %10, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 67
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.grub_iso9660_primary_voldesc, %struct.grub_iso9660_primary_voldesc* %10, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 69
  br i1 %85, label %86, label %89

86:                                               ; preds = %80, %74, %68
  store i32 1, i32* %12, align 4
  %87 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %4, align 8
  %88 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %87, i32 0, i32 0
  store i32 1, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %80, %62, %56, %50
  br label %90

90:                                               ; preds = %89, %49
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %4, align 8
  %95 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %94, i32 0, i32 1
  %96 = bitcast %struct.TYPE_6__* %95 to i8*
  %97 = bitcast %struct.grub_iso9660_primary_voldesc* %10 to i8*
  %98 = call i32 @grub_memcpy(i8* %96, i8* %97, i32 24)
  br label %99

99:                                               ; preds = %93, %90
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.grub_iso9660_primary_voldesc, %struct.grub_iso9660_primary_voldesc* %10, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @GRUB_ISO9660_VOLDESC_END, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %22, label %108

108:                                              ; preds = %102
  %109 = load i32, i32* %3, align 4
  %110 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %4, align 8
  %111 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @grub_le_to_cpu32(i32 %114)
  %116 = load i32, i32* @GRUB_ISO9660_LOG2_BLKSZ, align 4
  %117 = shl i32 %115, %116
  %118 = bitcast %struct.grub_iso9660_dir* %5 to i8*
  %119 = call i64 @grub_disk_read(i32 %109, i32 %117, i32 0, i32 8, i8* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %108
  %122 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %123 = call i32 @grub_error(i32 %122, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %208

124:                                              ; preds = %108
  %125 = getelementptr inbounds %struct.grub_iso9660_dir, %struct.grub_iso9660_dir* %5, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = add i64 8, %127
  %129 = getelementptr inbounds %struct.grub_iso9660_dir, %struct.grub_iso9660_dir* %5, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = srem i32 %130, 2
  %132 = sext i32 %131 to i64
  %133 = add i64 %128, %132
  %134 = sub i64 %133, 1
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %6, align 4
  %136 = getelementptr inbounds %struct.grub_iso9660_dir, %struct.grub_iso9660_dir* %5, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %6, align 4
  %139 = sub nsw i32 %137, %138
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1024
  %142 = call i8* @calloc(i32 1, i32 %141)
  store i8* %142, i8** %8, align 8
  %143 = load i8*, i8** %8, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %124
  br label %208

146:                                              ; preds = %124
  %147 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %4, align 8
  %148 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @grub_le_to_cpu32(i32 %151)
  %153 = load i32, i32* @GRUB_ISO9660_LOG2_BLKSZ, align 4
  %154 = shl i32 %152, %153
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %3, align 4
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* %7, align 4
  %159 = load i8*, i8** %8, align 8
  %160 = call i64 @grub_disk_read(i32 %155, i32 %156, i32 %157, i32 %158, i8* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %146
  %163 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %164 = call i32 @grub_error(i32 %163, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %208

165:                                              ; preds = %146
  %166 = load i8*, i8** %8, align 8
  %167 = bitcast i8* %166 to %struct.grub_iso9660_susp_entry*
  store %struct.grub_iso9660_susp_entry* %167, %struct.grub_iso9660_susp_entry** %9, align 8
  %168 = load %struct.grub_iso9660_susp_entry*, %struct.grub_iso9660_susp_entry** %9, align 8
  %169 = getelementptr inbounds %struct.grub_iso9660_susp_entry, %struct.grub_iso9660_susp_entry* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = inttoptr i64 %170 to i8*
  %172 = call i64 @grub_strncmp(i8* %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %206

174:                                              ; preds = %165
  %175 = load %struct.grub_iso9660_susp_entry*, %struct.grub_iso9660_susp_entry** %9, align 8
  %176 = call i32* @ENTRY_DATA(%struct.grub_iso9660_susp_entry* %175)
  %177 = getelementptr inbounds i32, i32* %176, i64 2
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %4, align 8
  %180 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 4
  %181 = load %struct.grub_iso9660_susp_entry*, %struct.grub_iso9660_susp_entry** %9, align 8
  %182 = bitcast %struct.grub_iso9660_susp_entry* %181 to i8*
  %183 = load %struct.grub_iso9660_susp_entry*, %struct.grub_iso9660_susp_entry** %9, align 8
  %184 = getelementptr inbounds %struct.grub_iso9660_susp_entry, %struct.grub_iso9660_susp_entry* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %182, i64 %186
  %188 = bitcast i8* %187 to %struct.grub_iso9660_susp_entry*
  store %struct.grub_iso9660_susp_entry* %188, %struct.grub_iso9660_susp_entry** %9, align 8
  %189 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %4, align 8
  %190 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %4, align 8
  %191 = getelementptr inbounds %struct.grub_iso9660_data, %struct.grub_iso9660_data* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @grub_le_to_cpu32(i32 %194)
  %196 = load i32, i32* @GRUB_ISO9660_LOG2_BLKSZ, align 4
  %197 = shl i32 %195, %196
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* @susp_iterate, align 4
  %201 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %4, align 8
  %202 = call i64 @grub_iso9660_susp_iterate(%struct.grub_iso9660_data* %189, i32 %197, i32 %198, i32 %199, i32 %200, %struct.grub_iso9660_data* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %174
  br label %208

205:                                              ; preds = %174
  br label %206

206:                                              ; preds = %205, %165
  %207 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %4, align 8
  store %struct.grub_iso9660_data* %207, %struct.grub_iso9660_data** %2, align 8
  br label %211

208:                                              ; preds = %204, %162, %145, %121, %40, %30
  %209 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %4, align 8
  %210 = call i32 @grub_free(%struct.grub_iso9660_data* %209)
  store %struct.grub_iso9660_data* null, %struct.grub_iso9660_data** %2, align 8
  br label %211

211:                                              ; preds = %208, %206, %17
  %212 = load %struct.grub_iso9660_data*, %struct.grub_iso9660_data** %2, align 8
  ret %struct.grub_iso9660_data* %212
}

declare dso_local %struct.grub_iso9660_data* @grub_zalloc(i32) #1

declare dso_local i64 @grub_disk_read(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @grub_error(i32, i8*) #1

declare dso_local i64 @grub_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @grub_memcpy(i8*, i8*, i32) #1

declare dso_local i32 @grub_le_to_cpu32(i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32* @ENTRY_DATA(%struct.grub_iso9660_susp_entry*) #1

declare dso_local i64 @grub_iso9660_susp_iterate(%struct.grub_iso9660_data*, i32, i32, i32, i32, %struct.grub_iso9660_data*) #1

declare dso_local i32 @grub_free(%struct.grub_iso9660_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
