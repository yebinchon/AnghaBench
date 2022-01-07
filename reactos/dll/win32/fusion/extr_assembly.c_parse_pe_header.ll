; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/fusion/extr_assembly.c_parse_pe_header.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/fusion/extr_assembly.c_parse_pe_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }

@E_FAIL = common dso_local global i32 0, align 4
@IMAGE_NT_OPTIONAL_HDR64_MAGIC = common dso_local global i64 0, align 8
@IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @parse_pe_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_pe_header(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_14__* @ImageNtHeader(i32 %9)
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %12, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = icmp ne %struct.TYPE_14__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @E_FAIL, align 4
  store i32 %18, i32* %2, align 4
  br label %90

19:                                               ; preds = %1
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IMAGE_NT_OPTIONAL_HDR64_MAGIC, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %19
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = bitcast %struct.TYPE_9__* %32 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %5, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %4, align 8
  br label %46

37:                                               ; preds = %19
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = bitcast %struct.TYPE_9__* %41 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %6, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %4, align 8
  br label %46

46:                                               ; preds = %37, %28
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = icmp ne %struct.TYPE_12__* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @E_FAIL, align 4
  store i32 %50, i32* %2, align 4
  br label %90

51:                                               ; preds = %46
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = load i64, i64* @IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = load i64, i64* @IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %58, %51
  %66 = load i32, i32* @E_FAIL, align 4
  store i32 %66, i32* %2, align 4
  br label %90

67:                                               ; preds = %58
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %75 = load i64, i64* @IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ImageRvaToVa(%struct.TYPE_14__* %70, i32 %73, i32 %78, i32* null)
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %67
  %87 = load i32, i32* @E_FAIL, align 4
  store i32 %87, i32* %2, align 4
  br label %90

88:                                               ; preds = %67
  %89 = load i32, i32* @S_OK, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %86, %65, %49, %17
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_14__* @ImageNtHeader(i32) #1

declare dso_local i32 @ImageRvaToVa(%struct.TYPE_14__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
