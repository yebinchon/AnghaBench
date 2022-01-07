; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_dl.c_grub_dl_load_segments.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_dl.c_grub_dl_load_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { void (%struct.TYPE_5__*)*, void (...)*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_6__*, i32, i8* }
%struct.grub_obj_header = type { i64, i64, %struct.grub_obj_segment* }
%struct.grub_obj_segment = type { i64, i32, i32, i32 }

@GRUB_OBJ_SEGMENT_END = common dso_local global i64 0, align 8
@grub_errno = common dso_local global i32 0, align 4
@GRUB_OBJ_FUNC_NONE = common dso_local global i64 0, align 8
@GRUB_ERR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.grub_obj_header*)* @grub_dl_load_segments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_dl_load_segments(%struct.TYPE_5__* %0, %struct.grub_obj_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.grub_obj_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.grub_obj_segment*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.grub_obj_header* %1, %struct.grub_obj_header** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.grub_obj_header*, %struct.grub_obj_header** %5, align 8
  %11 = getelementptr inbounds %struct.grub_obj_header, %struct.grub_obj_header* %10, i32 0, i32 2
  %12 = load %struct.grub_obj_segment*, %struct.grub_obj_segment** %11, align 8
  %13 = getelementptr inbounds %struct.grub_obj_segment, %struct.grub_obj_segment* %12, i64 0
  store %struct.grub_obj_segment* %13, %struct.grub_obj_segment** %7, align 8
  br label %14

14:                                               ; preds = %118, %2
  %15 = load %struct.grub_obj_segment*, %struct.grub_obj_segment** %7, align 8
  %16 = getelementptr inbounds %struct.grub_obj_segment, %struct.grub_obj_segment* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @GRUB_OBJ_SEGMENT_END, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %123

20:                                               ; preds = %14
  %21 = call i64 @grub_malloc(i32 32)
  %22 = inttoptr i64 %21 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %8, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @grub_errno, align 4
  store i32 %26, i32* %3, align 4
  br label %125

27:                                               ; preds = %20
  %28 = load %struct.grub_obj_segment*, %struct.grub_obj_segment** %7, align 8
  %29 = getelementptr inbounds %struct.grub_obj_segment, %struct.grub_obj_segment* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.grub_obj_segment*, %struct.grub_obj_segment** %7, align 8
  %32 = getelementptr inbounds %struct.grub_obj_segment, %struct.grub_obj_segment* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @grub_memalign(i32 %30, i32 %33)
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %27
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = call i32 @grub_free(%struct.TYPE_6__* %38)
  %40 = load i32, i32* @grub_errno, align 4
  store i32 %40, i32* %3, align 4
  br label %125

41:                                               ; preds = %27
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.grub_obj_segment*, %struct.grub_obj_segment** %7, align 8
  %44 = getelementptr inbounds %struct.grub_obj_segment, %struct.grub_obj_segment* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @grub_memset(i8* %42, i32 0, i32 %45)
  %47 = load i8*, i8** %9, align 8
  %48 = load %struct.grub_obj_header*, %struct.grub_obj_header** %5, align 8
  %49 = bitcast %struct.grub_obj_header* %48 to i8*
  %50 = load %struct.grub_obj_segment*, %struct.grub_obj_segment** %7, align 8
  %51 = getelementptr inbounds %struct.grub_obj_segment, %struct.grub_obj_segment* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %49, i64 %53
  %55 = load %struct.grub_obj_segment*, %struct.grub_obj_segment** %7, align 8
  %56 = getelementptr inbounds %struct.grub_obj_segment, %struct.grub_obj_segment* %55, i64 1
  %57 = getelementptr inbounds %struct.grub_obj_segment, %struct.grub_obj_segment* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.grub_obj_segment*, %struct.grub_obj_segment** %7, align 8
  %60 = getelementptr inbounds %struct.grub_obj_segment, %struct.grub_obj_segment* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %58, %61
  %63 = call i32 @grub_memcpy(i8* %47, i8* %54, i32 %62)
  %64 = load i8*, i8** %9, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load %struct.grub_obj_segment*, %struct.grub_obj_segment** %7, align 8
  %68 = getelementptr inbounds %struct.grub_obj_segment, %struct.grub_obj_segment* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store %struct.TYPE_6__* %77, %struct.TYPE_6__** %79, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  store %struct.TYPE_6__* %80, %struct.TYPE_6__** %82, align 8
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %117, label %85

85:                                               ; preds = %41
  %86 = load %struct.grub_obj_header*, %struct.grub_obj_header** %5, align 8
  %87 = getelementptr inbounds %struct.grub_obj_header, %struct.grub_obj_header* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @GRUB_OBJ_FUNC_NONE, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %85
  %92 = load i8*, i8** %9, align 8
  %93 = load %struct.grub_obj_header*, %struct.grub_obj_header** %5, align 8
  %94 = getelementptr inbounds %struct.grub_obj_header, %struct.grub_obj_header* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  %97 = bitcast i8* %96 to void (%struct.TYPE_5__*)*
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store void (%struct.TYPE_5__*)* %97, void (%struct.TYPE_5__*)** %99, align 8
  br label %100

100:                                              ; preds = %91, %85
  %101 = load %struct.grub_obj_header*, %struct.grub_obj_header** %5, align 8
  %102 = getelementptr inbounds %struct.grub_obj_header, %struct.grub_obj_header* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @GRUB_OBJ_FUNC_NONE, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %100
  %107 = load i8*, i8** %9, align 8
  %108 = load %struct.grub_obj_header*, %struct.grub_obj_header** %5, align 8
  %109 = getelementptr inbounds %struct.grub_obj_header, %struct.grub_obj_header* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i8, i8* %107, i64 %110
  %112 = bitcast i8* %111 to void ()*
  %113 = bitcast void ()* %112 to void (...)*
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  store void (...)* %113, void (...)** %115, align 8
  br label %116

116:                                              ; preds = %106, %100
  br label %117

117:                                              ; preds = %116, %41
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %6, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %6, align 4
  %121 = load %struct.grub_obj_segment*, %struct.grub_obj_segment** %7, align 8
  %122 = getelementptr inbounds %struct.grub_obj_segment, %struct.grub_obj_segment* %121, i32 1
  store %struct.grub_obj_segment* %122, %struct.grub_obj_segment** %7, align 8
  br label %14

123:                                              ; preds = %14
  %124 = load i32, i32* @GRUB_ERR_NONE, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %123, %37, %25
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i64 @grub_malloc(i32) #1

declare dso_local i8* @grub_memalign(i32, i32) #1

declare dso_local i32 @grub_free(%struct.TYPE_6__*) #1

declare dso_local i32 @grub_memset(i8*, i32, i32) #1

declare dso_local i32 @grub_memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
