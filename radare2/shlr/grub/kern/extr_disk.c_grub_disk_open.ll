; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_disk.c_grub_disk_open.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_disk.c_grub_disk_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 (i8*, %struct.TYPE_8__*)*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__*, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"disk\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Opening `%s'...\0A\00", align 1
@grub_disk_dev_list = common dso_local global %struct.TYPE_9__* null, align 8
@GRUB_ERR_NONE = common dso_local global i64 0, align 8
@grub_errno = common dso_local global i64 0, align 8
@GRUB_ERR_UNKNOWN_DEVICE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"no such disk\00", align 1
@GRUB_ERR_BAD_DEVICE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"no partition on this disk\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"no such partition\00", align 1
@grub_last_time = common dso_local global i64 0, align 8
@GRUB_CACHE_TIMEOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Opening `%s' failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @grub_disk_open(i8* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @grub_dprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  %13 = call i64 @grub_zalloc(i32 24)
  %14 = inttoptr i64 %13 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %5, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %157

18:                                               ; preds = %1
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @grub_strdup(i8* %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %134

28:                                               ; preds = %18
  %29 = load i8*, i8** %3, align 8
  %30 = call i8* @find_part_sep(i8* %29)
  store i8* %30, i8** %4, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %55

33:                                               ; preds = %28
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i8* @grub_malloc(i32 %41)
  store i8* %42, i8** %7, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %33
  br label %134

46:                                               ; preds = %33
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @grub_memcpy(i8* %47, i8* %48, i32 %49)
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8 0, i8* %54, align 1
  br label %55

55:                                               ; preds = %46, %28
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** @grub_disk_dev_list, align 8
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %6, align 8
  br label %57

57:                                               ; preds = %79, %55
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = icmp ne %struct.TYPE_9__* %58, null
  br i1 %59, label %60, label %83

60:                                               ; preds = %57
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64 (i8*, %struct.TYPE_8__*)*, i64 (i8*, %struct.TYPE_8__*)** %62, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = call i64 %63(i8* %64, %struct.TYPE_8__* %65)
  %67 = load i64, i64* @GRUB_ERR_NONE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %83

70:                                               ; preds = %60
  %71 = load i64, i64* @grub_errno, align 8
  %72 = load i64, i64* @GRUB_ERR_UNKNOWN_DEVICE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i64, i64* @GRUB_ERR_NONE, align 8
  store i64 %75, i64* @grub_errno, align 8
  br label %77

76:                                               ; preds = %70
  br label %134

77:                                               ; preds = %74
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  store %struct.TYPE_9__* %82, %struct.TYPE_9__** %6, align 8
  br label %57

83:                                               ; preds = %69, %57
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = icmp ne %struct.TYPE_9__* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i64, i64* @GRUB_ERR_UNKNOWN_DEVICE, align 8
  %88 = call i32 @grub_error(i64 %87, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %134

89:                                               ; preds = %83
  %90 = load i8*, i8** %4, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = load i64, i64* @GRUB_ERR_BAD_DEVICE, align 8
  %99 = call i32 @grub_error(i64 %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %134

100:                                              ; preds = %92, %89
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  store %struct.TYPE_9__* %101, %struct.TYPE_9__** %103, align 8
  %104 = load i8*, i8** %4, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %121

106:                                              ; preds = %100
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = call i32 @grub_partition_probe(%struct.TYPE_8__* %107, i8* %109)
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %106
  %118 = load i64, i64* @GRUB_ERR_UNKNOWN_DEVICE, align 8
  %119 = call i32 @grub_error(i64 %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %134

120:                                              ; preds = %106
  br label %121

121:                                              ; preds = %120, %100
  %122 = call i64 (...) @grub_get_time_ms()
  store i64 %122, i64* %8, align 8
  %123 = load i64, i64* %8, align 8
  %124 = load i64, i64* @grub_last_time, align 8
  %125 = load i32, i32* @GRUB_CACHE_TIMEOUT, align 4
  %126 = mul nsw i32 %125, 1000
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %124, %127
  %129 = icmp sgt i64 %123, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %121
  %131 = call i32 (...) @grub_disk_cache_invalidate_all()
  br label %132

132:                                              ; preds = %130, %121
  %133 = load i64, i64* %8, align 8
  store i64 %133, i64* @grub_last_time, align 8
  br label %134

134:                                              ; preds = %132, %117, %97, %86, %76, %45, %27
  %135 = load i8*, i8** %7, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = load i8*, i8** %7, align 8
  %139 = load i8*, i8** %3, align 8
  %140 = icmp ne i8* %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i8*, i8** %7, align 8
  %143 = call i32 @grub_free(i8* %142)
  br label %144

144:                                              ; preds = %141, %137, %134
  %145 = load i64, i64* @grub_errno, align 8
  %146 = load i64, i64* @GRUB_ERR_NONE, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %144
  %149 = call i32 (...) @grub_error_push()
  %150 = load i8*, i8** %3, align 8
  %151 = call i32 @grub_dprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %150)
  %152 = call i32 (...) @grub_error_pop()
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %154 = call i32 @grub_disk_close(%struct.TYPE_8__* %153)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %157

155:                                              ; preds = %144
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %156, %struct.TYPE_8__** %2, align 8
  br label %157

157:                                              ; preds = %155, %148, %17
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %158
}

declare dso_local i32 @grub_dprintf(i8*, i8*, i8*) #1

declare dso_local i64 @grub_zalloc(i32) #1

declare dso_local i32 @grub_strdup(i8*) #1

declare dso_local i8* @find_part_sep(i8*) #1

declare dso_local i8* @grub_malloc(i32) #1

declare dso_local i32 @grub_memcpy(i8*, i8*, i32) #1

declare dso_local i32 @grub_error(i64, i8*) #1

declare dso_local i32 @grub_partition_probe(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @grub_get_time_ms(...) #1

declare dso_local i32 @grub_disk_cache_invalidate_all(...) #1

declare dso_local i32 @grub_free(i8*) #1

declare dso_local i32 @grub_error_push(...) #1

declare dso_local i32 @grub_error_pop(...) #1

declare dso_local i32 @grub_disk_close(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
