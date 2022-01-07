; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_iso9660.c_susp_iterate_dir.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_iso9660.c_susp_iterate_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_iso9660_susp_entry = type { i32, i64 }
%struct.grub_iso9660_iterate_dir_closure = type { i8**, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"NM\00", align 1
@GRUB_ISO9660_RR_DOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@GRUB_ISO9660_RR_DOTDOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"PX\00", align 1
@GRUB_ISO9660_FSTYPE_MASK = common dso_local global i32 0, align 4
@GRUB_FSHELP_DIR = common dso_local global i32 0, align 4
@GRUB_FSHELP_REG = common dso_local global i32 0, align 4
@GRUB_FSHELP_SYMLINK = common dso_local global i32 0, align 4
@GRUB_FSHELP_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_iso9660_susp_entry*, i8*)* @susp_iterate_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @susp_iterate_dir(%struct.grub_iso9660_susp_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.grub_iso9660_susp_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.grub_iso9660_iterate_dir_closure*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.grub_iso9660_susp_entry* %0, %struct.grub_iso9660_susp_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.grub_iso9660_iterate_dir_closure*
  store %struct.grub_iso9660_iterate_dir_closure* %12, %struct.grub_iso9660_iterate_dir_closure** %5, align 8
  %13 = load %struct.grub_iso9660_iterate_dir_closure*, %struct.grub_iso9660_iterate_dir_closure** %5, align 8
  %14 = getelementptr inbounds %struct.grub_iso9660_iterate_dir_closure, %struct.grub_iso9660_iterate_dir_closure* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %6, align 8
  %17 = load %struct.grub_iso9660_susp_entry*, %struct.grub_iso9660_susp_entry** %3, align 8
  %18 = getelementptr inbounds %struct.grub_iso9660_susp_entry, %struct.grub_iso9660_susp_entry* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i64 @grub_strncmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %20, i32 2)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %83

23:                                               ; preds = %2
  %24 = load %struct.grub_iso9660_susp_entry*, %struct.grub_iso9660_susp_entry** %3, align 8
  %25 = call i32* @ENTRY_DATA(%struct.grub_iso9660_susp_entry* %24)
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @GRUB_ISO9660_RR_DOT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %82

33:                                               ; preds = %23
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @GRUB_ISO9660_RR_DOTDOT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %81

41:                                               ; preds = %33
  store i32 1, i32* %8, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @grub_strlen(i8* %45)
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %8, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i64 @grub_strlen(i8* %52)
  %54 = load %struct.grub_iso9660_susp_entry*, %struct.grub_iso9660_susp_entry** %3, align 8
  %55 = getelementptr inbounds %struct.grub_iso9660_susp_entry, %struct.grub_iso9660_susp_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %53, %57
  %59 = call i32 @grub_realloc(i8* %51, i64 %58)
  br label %68

60:                                               ; preds = %41
  %61 = load %struct.grub_iso9660_susp_entry*, %struct.grub_iso9660_susp_entry** %3, align 8
  %62 = getelementptr inbounds %struct.grub_iso9660_susp_entry, %struct.grub_iso9660_susp_entry* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 5
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  %67 = call i8* @grub_zalloc(i32 %66)
  store i8* %67, i8** %6, align 8
  br label %68

68:                                               ; preds = %60, %44
  %69 = load %struct.grub_iso9660_iterate_dir_closure*, %struct.grub_iso9660_iterate_dir_closure** %5, align 8
  %70 = getelementptr inbounds %struct.grub_iso9660_iterate_dir_closure, %struct.grub_iso9660_iterate_dir_closure* %69, i32 0, i32 1
  store i32 1, i32* %70, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = bitcast i32* %72 to i8*
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @grub_strncpy(i8* %71, i8* %74, i32 %75)
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  store i8 0, i8* %80, align 1
  br label %81

81:                                               ; preds = %68, %40
  br label %82

82:                                               ; preds = %81, %32
  br label %122

83:                                               ; preds = %2
  %84 = load %struct.grub_iso9660_susp_entry*, %struct.grub_iso9660_susp_entry** %3, align 8
  %85 = getelementptr inbounds %struct.grub_iso9660_susp_entry, %struct.grub_iso9660_susp_entry* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i8*
  %88 = call i64 @grub_strncmp(i8* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %121

90:                                               ; preds = %83
  %91 = load %struct.grub_iso9660_susp_entry*, %struct.grub_iso9660_susp_entry** %3, align 8
  %92 = call i32* @ENTRY_DATA(%struct.grub_iso9660_susp_entry* %91)
  store i32* %92, i32** %9, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 8
  %100 = add nsw i32 %95, %99
  %101 = load i32, i32* @GRUB_ISO9660_FSTYPE_MASK, align 4
  %102 = and i32 %100, %101
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  switch i32 %103, label %116 [
    i32 130, label %104
    i32 129, label %108
    i32 128, label %112
  ]

104:                                              ; preds = %90
  %105 = load i32, i32* @GRUB_FSHELP_DIR, align 4
  %106 = load %struct.grub_iso9660_iterate_dir_closure*, %struct.grub_iso9660_iterate_dir_closure** %5, align 8
  %107 = getelementptr inbounds %struct.grub_iso9660_iterate_dir_closure, %struct.grub_iso9660_iterate_dir_closure* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  br label %120

108:                                              ; preds = %90
  %109 = load i32, i32* @GRUB_FSHELP_REG, align 4
  %110 = load %struct.grub_iso9660_iterate_dir_closure*, %struct.grub_iso9660_iterate_dir_closure** %5, align 8
  %111 = getelementptr inbounds %struct.grub_iso9660_iterate_dir_closure, %struct.grub_iso9660_iterate_dir_closure* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  br label %120

112:                                              ; preds = %90
  %113 = load i32, i32* @GRUB_FSHELP_SYMLINK, align 4
  %114 = load %struct.grub_iso9660_iterate_dir_closure*, %struct.grub_iso9660_iterate_dir_closure** %5, align 8
  %115 = getelementptr inbounds %struct.grub_iso9660_iterate_dir_closure, %struct.grub_iso9660_iterate_dir_closure* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  br label %120

116:                                              ; preds = %90
  %117 = load i32, i32* @GRUB_FSHELP_UNKNOWN, align 4
  %118 = load %struct.grub_iso9660_iterate_dir_closure*, %struct.grub_iso9660_iterate_dir_closure** %5, align 8
  %119 = getelementptr inbounds %struct.grub_iso9660_iterate_dir_closure, %struct.grub_iso9660_iterate_dir_closure* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  br label %120

120:                                              ; preds = %116, %112, %108, %104
  br label %121

121:                                              ; preds = %120, %83
  br label %122

122:                                              ; preds = %121, %82
  %123 = load i8*, i8** %6, align 8
  %124 = load %struct.grub_iso9660_iterate_dir_closure*, %struct.grub_iso9660_iterate_dir_closure** %5, align 8
  %125 = getelementptr inbounds %struct.grub_iso9660_iterate_dir_closure, %struct.grub_iso9660_iterate_dir_closure* %124, i32 0, i32 0
  %126 = load i8**, i8*** %125, align 8
  store i8* %123, i8** %126, align 8
  ret i32 0
}

declare dso_local i64 @grub_strncmp(i8*, i8*, i32) #1

declare dso_local i32* @ENTRY_DATA(%struct.grub_iso9660_susp_entry*) #1

declare dso_local i64 @grub_strlen(i8*) #1

declare dso_local i32 @grub_realloc(i8*, i64) #1

declare dso_local i8* @grub_zalloc(i32) #1

declare dso_local i32 @grub_strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
