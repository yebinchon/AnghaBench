; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_find_section.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_find_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_file_map = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.image_section_map = type { i32, %struct.image_file_map* }

@IMAGE_SIZEOF_SHORT_NAME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pe_find_section(%struct.image_file_map* %0, i8* %1, %struct.image_section_map* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.image_file_map*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.image_section_map*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.image_file_map* %0, %struct.image_file_map** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.image_section_map* %2, %struct.image_section_map** %7, align 8
  %13 = load i32, i32* @IMAGE_SIZEOF_SHORT_NAME, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %85, %3
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.image_file_map*, %struct.image_file_map** %5, align 8
  %21 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %19, %26
  br i1 %27, label %28, label %88

28:                                               ; preds = %18
  %29 = load %struct.image_file_map*, %struct.image_file_map** %5, align 8
  %30 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 47
  br i1 %45, label %46, label %64

46:                                               ; preds = %28
  %47 = load %struct.image_file_map*, %struct.image_file_map** %5, align 8
  %48 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %46
  %54 = load %struct.image_file_map*, %struct.image_file_map** %5, align 8
  %55 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = call i32 @atoi(i8* %60)
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  store i8* %63, i8** %8, align 8
  br label %71

64:                                               ; preds = %46, %28
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* @IMAGE_SIZEOF_SHORT_NAME, align 4
  %67 = call i8* @memcpy(i8* %17, i8* %65, i32 %66)
  store i8* %67, i8** %8, align 8
  %68 = load i32, i32* @IMAGE_SIZEOF_SHORT_NAME, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %17, i64 %69
  store i8 0, i8* %70, align 1
  br label %71

71:                                               ; preds = %64, %53
  %72 = load i8*, i8** %8, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @strcasecmp(i8* %72, i8* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %71
  %77 = load %struct.image_file_map*, %struct.image_file_map** %5, align 8
  %78 = load %struct.image_section_map*, %struct.image_section_map** %7, align 8
  %79 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %78, i32 0, i32 1
  store %struct.image_file_map* %77, %struct.image_file_map** %79, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.image_section_map*, %struct.image_section_map** %7, align 8
  %82 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @TRUE, align 4
  store i32 %83, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %94

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %9, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %18

88:                                               ; preds = %18
  %89 = load %struct.image_section_map*, %struct.image_section_map** %7, align 8
  %90 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %89, i32 0, i32 1
  store %struct.image_file_map* null, %struct.image_file_map** %90, align 8
  %91 = load %struct.image_section_map*, %struct.image_section_map** %7, align 8
  %92 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %91, i32 0, i32 0
  store i32 -1, i32* %92, align 8
  %93 = load i32, i32* @FALSE, align 4
  store i32 %93, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %94

94:                                               ; preds = %88, %76
  %95 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @atoi(i8*) #2

declare dso_local i8* @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
