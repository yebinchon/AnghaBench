; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_sfs.c_grub_sfs_iterate_dir.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_sfs.c_grub_sfs_iterate_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.grub_sfs_data* }
%struct.grub_sfs_data = type { i32, i32 }
%struct.grub_sfs_objc = type { i32, i32* }
%struct.grub_sfs_obj = type { i32, %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@grub_errno = common dso_local global i64 0, align 8
@GRUB_SFS_TYPE_DELETED = common dso_local global i32 0, align 4
@GRUB_SFS_TYPE_SYMLINK = common dso_local global i32 0, align 4
@GRUB_FSHELP_SYMLINK = common dso_local global i32 0, align 4
@GRUB_SFS_TYPE_DIR = common dso_local global i32 0, align 4
@GRUB_FSHELP_DIR = common dso_local global i32 0, align 4
@GRUB_FSHELP_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32 (i8*, i32, %struct.TYPE_12__*, i8*)*, i8*)* @grub_sfs_iterate_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_sfs_iterate_dir(%struct.TYPE_12__* %0, i32 (i8*, i32, %struct.TYPE_12__*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32 (i8*, i32, %struct.TYPE_12__*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.grub_sfs_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.grub_sfs_objc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.grub_sfs_obj*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 (i8*, i32, %struct.TYPE_12__*, i8*)* %1, i32 (i8*, i32, %struct.TYPE_12__*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load %struct.grub_sfs_data*, %struct.grub_sfs_data** %19, align 8
  store %struct.grub_sfs_data* %20, %struct.grub_sfs_data** %8, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %11, align 4
  %24 = load %struct.grub_sfs_data*, %struct.grub_sfs_data** %8, align 8
  %25 = getelementptr inbounds %struct.grub_sfs_data, %struct.grub_sfs_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @grub_malloc(i32 %26)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  br label %180

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %174, %31
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %179

35:                                               ; preds = %32
  %36 = load %struct.grub_sfs_data*, %struct.grub_sfs_data** %8, align 8
  %37 = getelementptr inbounds %struct.grub_sfs_data, %struct.grub_sfs_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.grub_sfs_data*, %struct.grub_sfs_data** %8, align 8
  %41 = getelementptr inbounds %struct.grub_sfs_data, %struct.grub_sfs_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @grub_disk_read(i32 %38, i32 %39, i32 0, i32 %42, i8* %43)
  %45 = load i64, i64* @grub_errno, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %180

48:                                               ; preds = %35
  %49 = load i8*, i8** %9, align 8
  %50 = bitcast i8* %49 to %struct.grub_sfs_objc*
  store %struct.grub_sfs_objc* %50, %struct.grub_sfs_objc** %10, align 8
  %51 = load %struct.grub_sfs_objc*, %struct.grub_sfs_objc** %10, align 8
  %52 = getelementptr inbounds %struct.grub_sfs_objc, %struct.grub_sfs_objc* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = bitcast i32* %54 to i8*
  %56 = load %struct.grub_sfs_objc*, %struct.grub_sfs_objc** %10, align 8
  %57 = bitcast %struct.grub_sfs_objc* %56 to i8*
  %58 = ptrtoint i8* %55 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %173, %114, %106, %48
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 %64, 24
  %66 = load %struct.grub_sfs_data*, %struct.grub_sfs_data** %8, align 8
  %67 = getelementptr inbounds %struct.grub_sfs_data, %struct.grub_sfs_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = icmp ult i64 %65, %69
  br i1 %70, label %71, label %174

71:                                               ; preds = %62
  %72 = load %struct.grub_sfs_objc*, %struct.grub_sfs_objc** %10, align 8
  %73 = bitcast %struct.grub_sfs_objc* %72 to i8*
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = bitcast i8* %76 to %struct.grub_sfs_obj*
  store %struct.grub_sfs_obj* %77, %struct.grub_sfs_obj** %13, align 8
  %78 = load %struct.grub_sfs_obj*, %struct.grub_sfs_obj** %13, align 8
  %79 = getelementptr inbounds %struct.grub_sfs_obj, %struct.grub_sfs_obj* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i8*
  store i8* %81, i8** %14, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = call i32 @grub_strlen(i8* %82)
  store i32 %83, i32* %15, align 4
  %84 = load i8*, i8** %14, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = call i32 @grub_strlen(i8* %88)
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = add i64 24, %93
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = add i64 %96, %94
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  %101 = ashr i32 %100, 1
  %102 = shl i32 %101, 1
  store i32 %102, i32* %12, align 4
  %103 = load i8*, i8** %14, align 8
  %104 = call i32 @grub_strlen(i8* %103)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %71
  br label %62

107:                                              ; preds = %71
  %108 = load %struct.grub_sfs_obj*, %struct.grub_sfs_obj** %13, align 8
  %109 = getelementptr inbounds %struct.grub_sfs_obj, %struct.grub_sfs_obj* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @GRUB_SFS_TYPE_DELETED, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %62

115:                                              ; preds = %107
  %116 = load %struct.grub_sfs_obj*, %struct.grub_sfs_obj** %13, align 8
  %117 = getelementptr inbounds %struct.grub_sfs_obj, %struct.grub_sfs_obj* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @GRUB_SFS_TYPE_SYMLINK, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = load i32, i32* @GRUB_FSHELP_SYMLINK, align 4
  store i32 %123, i32* %16, align 4
  br label %136

124:                                              ; preds = %115
  %125 = load %struct.grub_sfs_obj*, %struct.grub_sfs_obj** %13, align 8
  %126 = getelementptr inbounds %struct.grub_sfs_obj, %struct.grub_sfs_obj* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @GRUB_SFS_TYPE_DIR, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = load i32, i32* @GRUB_FSHELP_DIR, align 4
  store i32 %132, i32* %16, align 4
  br label %135

133:                                              ; preds = %124
  %134 = load i32, i32* @GRUB_FSHELP_REG, align 4
  store i32 %134, i32* %16, align 4
  br label %135

135:                                              ; preds = %133, %131
  br label %136

136:                                              ; preds = %135, %122
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* @GRUB_FSHELP_DIR, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %137
  %142 = load %struct.grub_sfs_obj*, %struct.grub_sfs_obj** %13, align 8
  %143 = getelementptr inbounds %struct.grub_sfs_obj, %struct.grub_sfs_obj* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @grub_be_to_cpu32(i32 %146)
  store i32 %147, i32* %17, align 4
  br label %155

148:                                              ; preds = %137
  %149 = load %struct.grub_sfs_obj*, %struct.grub_sfs_obj** %13, align 8
  %150 = getelementptr inbounds %struct.grub_sfs_obj, %struct.grub_sfs_obj* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @grub_be_to_cpu32(i32 %153)
  store i32 %154, i32* %17, align 4
  br label %155

155:                                              ; preds = %148, %141
  %156 = load i8*, i8** %14, align 8
  %157 = load i32, i32* %17, align 4
  %158 = load %struct.grub_sfs_obj*, %struct.grub_sfs_obj** %13, align 8
  %159 = getelementptr inbounds %struct.grub_sfs_obj, %struct.grub_sfs_obj* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @grub_be_to_cpu32(i32 %162)
  %164 = load i32, i32* %16, align 4
  %165 = load %struct.grub_sfs_data*, %struct.grub_sfs_data** %8, align 8
  %166 = load i32 (i8*, i32, %struct.TYPE_12__*, i8*)*, i32 (i8*, i32, %struct.TYPE_12__*, i8*)** %6, align 8
  %167 = load i8*, i8** %7, align 8
  %168 = call i64 @grub_sfs_create_node(i8* %156, i32 %157, i32 %163, i32 %164, %struct.grub_sfs_data* %165, i32 (i8*, i32, %struct.TYPE_12__*, i8*)* %166, i8* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %155
  %171 = load i8*, i8** %9, align 8
  %172 = call i32 @grub_free(i8* %171)
  store i32 1, i32* %4, align 4
  br label %183

173:                                              ; preds = %155
  br label %62

174:                                              ; preds = %62
  %175 = load %struct.grub_sfs_objc*, %struct.grub_sfs_objc** %10, align 8
  %176 = getelementptr inbounds %struct.grub_sfs_objc, %struct.grub_sfs_objc* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @grub_be_to_cpu32(i32 %177)
  store i32 %178, i32* %11, align 4
  br label %32

179:                                              ; preds = %32
  br label %180

180:                                              ; preds = %179, %47, %30
  %181 = load i8*, i8** %9, align 8
  %182 = call i32 @grub_free(i8* %181)
  store i32 0, i32* %4, align 4
  br label %183

183:                                              ; preds = %180, %170
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i8* @grub_malloc(i32) #1

declare dso_local i32 @grub_disk_read(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @grub_strlen(i8*) #1

declare dso_local i32 @grub_be_to_cpu32(i32) #1

declare dso_local i64 @grub_sfs_create_node(i8*, i32, i32, i32, %struct.grub_sfs_data*, i32 (i8*, i32, %struct.TYPE_12__*, i8*)*, i8*) #1

declare dso_local i32 @grub_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
