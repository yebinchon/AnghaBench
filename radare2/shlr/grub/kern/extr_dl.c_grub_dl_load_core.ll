; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_dl.c_grub_dl_load_core.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_dl.c_grub_dl_load_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_12__*, i64, i64, i64 }
%struct.grub_obj_header = type { i64, i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"modules\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"module at %p, size 0x%lx\0A\00", align 1
@GRUB_OBJ_HEADER_MAGIC = common dso_local global i64 0, align 8
@GRUB_OBJ_HEADER_VERSION = common dso_local global i64 0, align 8
@GRUB_ERR_BAD_OS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"invalid object file\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"relocating to %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"module name: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"init function: %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @grub_dl_load_core(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.grub_obj_header*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_12__*
  %11 = load i64, i64* %5, align 8
  %12 = call i32 (i8*, i8*, %struct.TYPE_12__*, ...) @grub_dprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %10, i64 %11)
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.grub_obj_header*
  store %struct.grub_obj_header* %14, %struct.grub_obj_header** %6, align 8
  %15 = load %struct.grub_obj_header*, %struct.grub_obj_header** %6, align 8
  %16 = getelementptr inbounds %struct.grub_obj_header, %struct.grub_obj_header* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @GRUB_OBJ_HEADER_MAGIC, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.grub_obj_header*, %struct.grub_obj_header** %6, align 8
  %22 = getelementptr inbounds %struct.grub_obj_header, %struct.grub_obj_header* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @GRUB_OBJ_HEADER_VERSION, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %2
  %27 = load i32, i32* @GRUB_ERR_BAD_OS, align 4
  %28 = call i32 @grub_error(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %98

29:                                               ; preds = %20
  %30 = call i64 @grub_malloc(i32 48)
  %31 = inttoptr i64 %30 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %7, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %33 = icmp ne %struct.TYPE_12__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %98

35:                                               ; preds = %29
  %36 = load i8*, i8** %4, align 8
  %37 = load %struct.grub_obj_header*, %struct.grub_obj_header** %6, align 8
  %38 = getelementptr inbounds %struct.grub_obj_header, %struct.grub_obj_header* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %36, i64 %40
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call %struct.TYPE_12__* @grub_strdup(i8* %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %45, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 5
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %53, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %57 = call i32 (i8*, i8*, %struct.TYPE_12__*, ...) @grub_dprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_12__* %56)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i64 @grub_dl_resolve_dependencies(%struct.TYPE_12__* %58, i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %35
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %64 = load %struct.grub_obj_header*, %struct.grub_obj_header** %6, align 8
  %65 = call i64 @grub_dl_load_segments(%struct.TYPE_12__* %63, %struct.grub_obj_header* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %69 = load %struct.grub_obj_header*, %struct.grub_obj_header** %6, align 8
  %70 = call i64 @grub_dl_resolve_symbols(%struct.TYPE_12__* %68, %struct.grub_obj_header* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67, %62, %35
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 3
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = call i32 @grub_dl_unload(%struct.TYPE_12__* %75)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %98

77:                                               ; preds = %67
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %79 = call i32 @grub_dl_flush_cache(%struct.TYPE_12__* %78)
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = call i32 (i8*, i8*, %struct.TYPE_12__*, ...) @grub_dprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_12__* %82)
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = call i32 (i8*, i8*, %struct.TYPE_12__*, ...) @grub_dprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_12__* %86)
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %89 = call i32 @grub_dl_call_init(%struct.TYPE_12__* %88)
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %91 = call i64 @grub_dl_add(%struct.TYPE_12__* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %77
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %95 = call i32 @grub_dl_unload(%struct.TYPE_12__* %94)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %98

96:                                               ; preds = %77
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %97, %struct.TYPE_12__** %3, align 8
  br label %98

98:                                               ; preds = %96, %93, %72, %34, %26
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %99
}

declare dso_local i32 @grub_dprintf(i8*, i8*, %struct.TYPE_12__*, ...) #1

declare dso_local i32 @grub_error(i32, i8*) #1

declare dso_local i64 @grub_malloc(i32) #1

declare dso_local %struct.TYPE_12__* @grub_strdup(i8*) #1

declare dso_local i64 @grub_dl_resolve_dependencies(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @grub_dl_load_segments(%struct.TYPE_12__*, %struct.grub_obj_header*) #1

declare dso_local i64 @grub_dl_resolve_symbols(%struct.TYPE_12__*, %struct.grub_obj_header*) #1

declare dso_local i32 @grub_dl_unload(%struct.TYPE_12__*) #1

declare dso_local i32 @grub_dl_flush_cache(%struct.TYPE_12__*) #1

declare dso_local i32 @grub_dl_call_init(%struct.TYPE_12__*) #1

declare dso_local i64 @grub_dl_add(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
