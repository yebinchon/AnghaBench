; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_AllocLink.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_AllocLink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32, i32, i32, i32, %struct.TYPE_4__*, i8*, i8* }
%struct.RtfData = type { %struct.TYPE_4__*, i32, i8*, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [14 x i8] c"Pending link\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Link[%d] to %s@%08x:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (%struct.RtfData*, i32, i8*, i32, i32, i8*, i8*, i32)* @HLPFILE_AllocLink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @HLPFILE_AllocLink(%struct.RtfData* %0, i32 %1, i8* %2, i32 %3, i32 %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.RtfData*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_4__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.RtfData* %0, %struct.RtfData** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %21 = load i8*, i8** %16, align 8
  %22 = icmp ne i8* %21, null
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i64 4, i64 56
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %20, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %8
  %29 = load i8*, i8** %12, align 8
  %30 = call i32 @strlen(i8* %29)
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %28, %8
  %32 = call i32 (...) @GetProcessHeap()
  %33 = load i32, i32* %20, align 4
  %34 = load i32, i32* %13, align 4
  %35 = add i32 %33, %34
  %36 = add i32 %35, 1
  %37 = call %struct.TYPE_4__* @HeapAlloc(i32 %32, i32 0, i32 %36)
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %18, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  br label %123

41:                                               ; preds = %31
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %46 = bitcast %struct.TYPE_4__* %45 to i8*
  %47 = load i32, i32* %20, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8* %49, i8** %19, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** %19, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @memcpy(i8* %52, i8* %53, i32 %54)
  %56 = load i8*, i8** %19, align 8
  %57 = load i32, i32* %13, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8 0, i8* %59, align 1
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load i8*, i8** %15, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 8
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** %16, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 7
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* %17, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.RtfData*, %struct.RtfData** %10, align 8
  %73 = getelementptr inbounds %struct.RtfData, %struct.RtfData* %72, i32 0, i32 3
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 6
  store %struct.TYPE_4__* %74, %struct.TYPE_4__** %76, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %78 = load %struct.RtfData*, %struct.RtfData** %10, align 8
  %79 = getelementptr inbounds %struct.RtfData, %struct.RtfData* %78, i32 0, i32 3
  store %struct.TYPE_4__* %77, %struct.TYPE_4__** %79, align 8
  %80 = load %struct.RtfData*, %struct.RtfData** %10, align 8
  %81 = getelementptr inbounds %struct.RtfData, %struct.RtfData* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = load i8*, i8** %15, align 8
  %86 = load %struct.RtfData*, %struct.RtfData** %10, align 8
  %87 = getelementptr inbounds %struct.RtfData, %struct.RtfData* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  %88 = load %struct.RtfData*, %struct.RtfData** %10, align 8
  %89 = getelementptr inbounds %struct.RtfData, %struct.RtfData* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = icmp ne %struct.TYPE_4__* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %41
  %93 = call i32 @WINE_FIXME(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %41
  %95 = load i8*, i8** %16, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load %struct.RtfData*, %struct.RtfData** %10, align 8
  %99 = getelementptr inbounds %struct.RtfData, %struct.RtfData* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  br label %107

103:                                              ; preds = %94
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %105 = load %struct.RtfData*, %struct.RtfData** %10, align 8
  %106 = getelementptr inbounds %struct.RtfData, %struct.RtfData* %105, i32 0, i32 0
  store %struct.TYPE_4__* %104, %struct.TYPE_4__** %106, align 8
  br label %107

107:                                              ; preds = %103, %97
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @debugstr_a(i8* %113)
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @WINE_TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %114, i32 %117, i32 %120)
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %122, %struct.TYPE_4__** %9, align 8
  br label %123

123:                                              ; preds = %107, %40
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  ret %struct.TYPE_4__* %124
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_4__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @WINE_FIXME(i8*) #1

declare dso_local i32 @WINE_TRACE(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @debugstr_a(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
