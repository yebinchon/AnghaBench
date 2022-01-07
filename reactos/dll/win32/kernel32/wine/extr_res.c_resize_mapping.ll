; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_res.c_resize_mapping.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_res.c_resize_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapping_info = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@FILE_BEGIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to set file size to %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mapping_info*, i32)* @resize_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resize_mapping(%struct.mapping_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mapping_info*, align 8
  %5 = alloca i32, align 4
  store %struct.mapping_info* %0, %struct.mapping_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.mapping_info*, %struct.mapping_info** %4, align 8
  %7 = call i32 @unmap_file_from_memory(%struct.mapping_info* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %3, align 4
  br label %33

11:                                               ; preds = %2
  %12 = load %struct.mapping_info*, %struct.mapping_info** %4, align 8
  %13 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @FILE_BEGIN, align 4
  %17 = call i32 @SetFilePointer(i32 %14, i32 %15, i32* null, i32 %16)
  %18 = load %struct.mapping_info*, %struct.mapping_info** %4, align 8
  %19 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @SetEndOfFile(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %11
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %11
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.mapping_info*, %struct.mapping_info** %4, align 8
  %30 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.mapping_info*, %struct.mapping_info** %4, align 8
  %32 = call i32 @map_file_into_memory(%struct.mapping_info* %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %23, %9
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @unmap_file_from_memory(%struct.mapping_info*) #1

declare dso_local i32 @SetFilePointer(i32, i32, i32*, i32) #1

declare dso_local i32 @SetEndOfFile(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @map_file_into_memory(%struct.mapping_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
