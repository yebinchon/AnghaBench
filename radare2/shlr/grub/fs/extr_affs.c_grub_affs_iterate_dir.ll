; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_affs.c_grub_affs_iterate_dir.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_affs.c_grub_affs_iterate_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, %struct.grub_affs_data* }
%struct.grub_affs_data = type { i32, i32, i32 }
%struct.grub_affs_file = type { i8*, i64, i32, i32, i32 }
%struct.grub_affs_iterate_dir_closure = type { i32 (i8*, i32, %struct.TYPE_5__*, i8*)*, i32*, i32*, %struct.grub_affs_file*, %struct.grub_affs_data*, i8* }

@GRUB_AFFS_HASHTABLE_OFFSET = common dso_local global i64 0, align 8
@grub_errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@GRUB_FSHELP_DIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@GRUB_DISK_SECTOR_SIZE = common dso_local global i32 0, align 4
@GRUB_AFFS_FILE_LOCATION = common dso_local global i64 0, align 8
@GRUB_AFFS_FILETYPE_DIR = common dso_local global i32 0, align 4
@GRUB_FSHELP_REG = common dso_local global i32 0, align 4
@GRUB_AFFS_FILETYPE_REG = common dso_local global i64 0, align 8
@GRUB_AFFS_FILETYPE_SYMLINK = common dso_local global i64 0, align 8
@GRUB_FSHELP_SYMLINK = common dso_local global i32 0, align 4
@GRUB_FSHELP_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32 (i8*, i32, %struct.TYPE_5__*, i8*)*, i8*)* @grub_affs_iterate_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_affs_iterate_dir(%struct.TYPE_5__* %0, i32 (i8*, i32, %struct.TYPE_5__*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32 (i8*, i32, %struct.TYPE_5__*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.grub_affs_file, align 8
  %10 = alloca %struct.grub_affs_data*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.grub_affs_iterate_dir_closure, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 (i8*, i32, %struct.TYPE_5__*, i8*)* %1, i32 (i8*, i32, %struct.TYPE_5__*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 3
  %17 = load %struct.grub_affs_data*, %struct.grub_affs_data** %16, align 8
  store %struct.grub_affs_data* %17, %struct.grub_affs_data** %10, align 8
  %18 = load i32 (i8*, i32, %struct.TYPE_5__*, i8*)*, i32 (i8*, i32, %struct.TYPE_5__*, i8*)** %6, align 8
  %19 = getelementptr inbounds %struct.grub_affs_iterate_dir_closure, %struct.grub_affs_iterate_dir_closure* %12, i32 0, i32 0
  store i32 (i8*, i32, %struct.TYPE_5__*, i8*)* %18, i32 (i8*, i32, %struct.TYPE_5__*, i8*)** %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds %struct.grub_affs_iterate_dir_closure, %struct.grub_affs_iterate_dir_closure* %12, i32 0, i32 5
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds %struct.grub_affs_iterate_dir_closure, %struct.grub_affs_iterate_dir_closure* %12, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load %struct.grub_affs_data*, %struct.grub_affs_data** %10, align 8
  %24 = getelementptr inbounds %struct.grub_affs_iterate_dir_closure, %struct.grub_affs_iterate_dir_closure* %12, i32 0, i32 4
  store %struct.grub_affs_data* %23, %struct.grub_affs_data** %24, align 8
  %25 = getelementptr inbounds %struct.grub_affs_iterate_dir_closure, %struct.grub_affs_iterate_dir_closure* %12, i32 0, i32 3
  store %struct.grub_affs_file* %9, %struct.grub_affs_file** %25, align 8
  %26 = load %struct.grub_affs_data*, %struct.grub_affs_data** %10, align 8
  %27 = getelementptr inbounds %struct.grub_affs_data, %struct.grub_affs_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = call i32* @grub_malloc(i32 %31)
  store i32* %32, i32** %11, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = getelementptr inbounds %struct.grub_affs_iterate_dir_closure, %struct.grub_affs_iterate_dir_closure* %12, i32 0, i32 2
  store i32* %33, i32** %34, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %202

38:                                               ; preds = %3
  %39 = load %struct.grub_affs_data*, %struct.grub_affs_data** %10, align 8
  %40 = getelementptr inbounds %struct.grub_affs_data, %struct.grub_affs_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @GRUB_AFFS_HASHTABLE_OFFSET, align 8
  %46 = load %struct.grub_affs_data*, %struct.grub_affs_data** %10, align 8
  %47 = getelementptr inbounds %struct.grub_affs_data, %struct.grub_affs_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = load i32*, i32** %11, align 8
  %53 = bitcast i32* %52 to i8*
  %54 = call i32 @grub_disk_read(i32 %41, i64 %44, i64 %45, i32 %51, i8* %53)
  %55 = load i64, i64* @grub_errno, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %38
  br label %196

58:                                               ; preds = %38
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @GRUB_FSHELP_DIR, align 4
  %66 = call i64 @grub_affs_create_node(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %61, i64 %64, i32 %65, %struct.grub_affs_iterate_dir_closure* %12)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  store i32 1, i32* %4, align 4
  br label %202

69:                                               ; preds = %58
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  br label %82

78:                                               ; preds = %69
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  br label %82

82:                                               ; preds = %78, %74
  %83 = phi i64 [ %77, %74 ], [ %81, %78 ]
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @GRUB_FSHELP_DIR, align 4
  %88 = call i64 @grub_affs_create_node(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %83, i64 %86, i32 %87, %struct.grub_affs_iterate_dir_closure* %12)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i32 1, i32* %4, align 4
  br label %202

91:                                               ; preds = %82
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %190, %91
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.grub_affs_data*, %struct.grub_affs_data** %10, align 8
  %95 = getelementptr inbounds %struct.grub_affs_data, %struct.grub_affs_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %193

98:                                               ; preds = %92
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %98
  br label %190

106:                                              ; preds = %98
  %107 = load i32*, i32** %11, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @grub_be_to_cpu32(i32 %111)
  store i64 %112, i64* %14, align 8
  br label %113

113:                                              ; preds = %185, %106
  %114 = load i64, i64* %14, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %189

116:                                              ; preds = %113
  %117 = load %struct.grub_affs_data*, %struct.grub_affs_data** %10, align 8
  %118 = getelementptr inbounds %struct.grub_affs_data, %struct.grub_affs_data* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i64, i64* %14, align 8
  %121 = load %struct.grub_affs_data*, %struct.grub_affs_data** %10, align 8
  %122 = getelementptr inbounds %struct.grub_affs_data, %struct.grub_affs_data* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %120, %124
  %126 = sub nsw i64 %125, 1
  %127 = load %struct.grub_affs_data*, %struct.grub_affs_data** %10, align 8
  %128 = getelementptr inbounds %struct.grub_affs_data, %struct.grub_affs_data* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @GRUB_DISK_SECTOR_SIZE, align 4
  %131 = mul nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* @GRUB_AFFS_FILE_LOCATION, align 8
  %134 = sub nsw i64 %132, %133
  %135 = bitcast %struct.grub_affs_file* %9 to i8*
  %136 = call i32 @grub_disk_read(i32 %119, i64 %126, i64 %134, i32 32, i8* %135)
  %137 = load i64, i64* @grub_errno, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %116
  br label %196

140:                                              ; preds = %116
  %141 = getelementptr inbounds %struct.grub_affs_file, %struct.grub_affs_file* %9, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds %struct.grub_affs_file, %struct.grub_affs_file* %9, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  store i8 0, i8* %145, align 1
  %146 = getelementptr inbounds %struct.grub_affs_file, %struct.grub_affs_file* %9, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = call i64 @grub_be_to_cpu32(i32 %147)
  %149 = trunc i64 %148 to i32
  %150 = load i32, i32* @GRUB_AFFS_FILETYPE_DIR, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %140
  %153 = load i32, i32* @GRUB_FSHELP_REG, align 4
  store i32 %153, i32* %13, align 4
  br label %174

154:                                              ; preds = %140
  %155 = getelementptr inbounds %struct.grub_affs_file, %struct.grub_affs_file* %9, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = call i64 @grub_be_to_cpu32(i32 %156)
  %158 = load i64, i64* @GRUB_AFFS_FILETYPE_REG, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = load i32, i32* @GRUB_FSHELP_DIR, align 4
  store i32 %161, i32* %13, align 4
  br label %173

162:                                              ; preds = %154
  %163 = getelementptr inbounds %struct.grub_affs_file, %struct.grub_affs_file* %9, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = call i64 @grub_be_to_cpu32(i32 %164)
  %166 = load i64, i64* @GRUB_AFFS_FILETYPE_SYMLINK, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = load i32, i32* @GRUB_FSHELP_SYMLINK, align 4
  store i32 %169, i32* %13, align 4
  br label %172

170:                                              ; preds = %162
  %171 = load i32, i32* @GRUB_FSHELP_UNKNOWN, align 4
  store i32 %171, i32* %13, align 4
  br label %172

172:                                              ; preds = %170, %168
  br label %173

173:                                              ; preds = %172, %160
  br label %174

174:                                              ; preds = %173, %152
  %175 = getelementptr inbounds %struct.grub_affs_file, %struct.grub_affs_file* %9, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = load i64, i64* %14, align 8
  %178 = getelementptr inbounds %struct.grub_affs_file, %struct.grub_affs_file* %9, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @grub_be_to_cpu32(i32 %179)
  %181 = load i32, i32* %13, align 4
  %182 = call i64 @grub_affs_create_node(i8* %176, i64 %177, i64 %180, i32 %181, %struct.grub_affs_iterate_dir_closure* %12)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %174
  store i32 1, i32* %4, align 4
  br label %202

185:                                              ; preds = %174
  %186 = getelementptr inbounds %struct.grub_affs_file, %struct.grub_affs_file* %9, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i64 @grub_be_to_cpu32(i32 %187)
  store i64 %188, i64* %14, align 8
  br label %113

189:                                              ; preds = %113
  br label %190

190:                                              ; preds = %189, %105
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %8, align 4
  br label %92

193:                                              ; preds = %92
  %194 = load i32*, i32** %11, align 8
  %195 = call i32 @grub_free(i32* %194)
  store i32 0, i32* %4, align 4
  br label %202

196:                                              ; preds = %139, %57
  %197 = getelementptr inbounds %struct.grub_affs_iterate_dir_closure, %struct.grub_affs_iterate_dir_closure* %12, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 @grub_free(i32* %198)
  %200 = load i32*, i32** %11, align 8
  %201 = call i32 @grub_free(i32* %200)
  store i32 0, i32* %4, align 4
  br label %202

202:                                              ; preds = %196, %193, %184, %90, %68, %37
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local i32* @grub_malloc(i32) #1

declare dso_local i32 @grub_disk_read(i32, i64, i64, i32, i8*) #1

declare dso_local i64 @grub_affs_create_node(i8*, i64, i64, i32, %struct.grub_affs_iterate_dir_closure*) #1

declare dso_local i64 @grub_be_to_cpu32(i32) #1

declare dso_local i32 @grub_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
