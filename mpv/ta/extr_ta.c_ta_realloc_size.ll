; ModuleID = '/home/carl/AnghaBench/mpv/ta/extr_ta.c_ta_realloc_size.c'
source_filename = "/home/carl/AnghaBench/mpv/ta/extr_ta.c_ta_realloc_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ta_header = type { i64, %struct.TYPE_12__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.ta_header* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_8__ = type { %struct.ta_header* }
%struct.TYPE_7__ = type { %struct.ta_header* }

@MAX_ALLOC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ta_realloc_size(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ta_header*, align 8
  %9 = alloca %struct.ta_header*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @MAX_ALLOC, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %118

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @ta_free(i8* %18)
  store i8* null, i8** %4, align 8
  br label %118

20:                                               ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i8* @ta_alloc_size(i8* %24, i64 %25)
  store i8* %26, i8** %4, align 8
  br label %118

27:                                               ; preds = %20
  %28 = load i8*, i8** %6, align 8
  %29 = call %struct.ta_header* @get_header(i8* %28)
  store %struct.ta_header* %29, %struct.ta_header** %8, align 8
  %30 = load %struct.ta_header*, %struct.ta_header** %8, align 8
  store %struct.ta_header* %30, %struct.ta_header** %9, align 8
  %31 = load %struct.ta_header*, %struct.ta_header** %8, align 8
  %32 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i8*, i8** %6, align 8
  store i8* %37, i8** %4, align 8
  br label %118

38:                                               ; preds = %27
  %39 = load %struct.ta_header*, %struct.ta_header** %8, align 8
  %40 = call i32 @ta_dbg_remove(%struct.ta_header* %39)
  %41 = load %struct.ta_header*, %struct.ta_header** %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add i64 4, %42
  %44 = trunc i64 %43 to i32
  %45 = call %struct.ta_header* @realloc(%struct.ta_header* %41, i32 %44)
  store %struct.ta_header* %45, %struct.ta_header** %8, align 8
  %46 = load %struct.ta_header*, %struct.ta_header** %8, align 8
  %47 = icmp ne %struct.ta_header* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load %struct.ta_header*, %struct.ta_header** %8, align 8
  br label %52

50:                                               ; preds = %38
  %51 = load %struct.ta_header*, %struct.ta_header** %9, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi %struct.ta_header* [ %49, %48 ], [ %51, %50 ]
  %54 = call i32 @ta_dbg_add(%struct.ta_header* %53)
  %55 = load %struct.ta_header*, %struct.ta_header** %8, align 8
  %56 = icmp ne %struct.ta_header* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store i8* null, i8** %4, align 8
  br label %118

58:                                               ; preds = %52
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.ta_header*, %struct.ta_header** %8, align 8
  %61 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.ta_header*, %struct.ta_header** %8, align 8
  %63 = load %struct.ta_header*, %struct.ta_header** %9, align 8
  %64 = icmp ne %struct.ta_header* %62, %63
  br i1 %64, label %65, label %115

65:                                               ; preds = %58
  %66 = load %struct.ta_header*, %struct.ta_header** %8, align 8
  %67 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %66, i32 0, i32 3
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = icmp ne %struct.TYPE_7__* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load %struct.ta_header*, %struct.ta_header** %8, align 8
  %72 = load %struct.ta_header*, %struct.ta_header** %8, align 8
  %73 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %72, i32 0, i32 3
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  store %struct.ta_header* %71, %struct.ta_header** %75, align 8
  %76 = load %struct.ta_header*, %struct.ta_header** %8, align 8
  %77 = load %struct.ta_header*, %struct.ta_header** %8, align 8
  %78 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %77, i32 0, i32 2
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store %struct.ta_header* %76, %struct.ta_header** %80, align 8
  br label %81

81:                                               ; preds = %70, %65
  %82 = load %struct.ta_header*, %struct.ta_header** %8, align 8
  %83 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %82, i32 0, i32 1
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = icmp ne %struct.TYPE_12__* %84, null
  br i1 %85, label %86, label %114

86:                                               ; preds = %81
  %87 = load %struct.ta_header*, %struct.ta_header** %8, align 8
  %88 = load %struct.ta_header*, %struct.ta_header** %8, align 8
  %89 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %88, i32 0, i32 1
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  store %struct.ta_header* %87, %struct.ta_header** %91, align 8
  %92 = load %struct.ta_header*, %struct.ta_header** %8, align 8
  %93 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %92, i32 0, i32 1
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load %struct.ta_header*, %struct.ta_header** %8, align 8
  %97 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %96, i32 0, i32 1
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  store %struct.TYPE_11__* %95, %struct.TYPE_11__** %102, align 8
  %103 = load %struct.ta_header*, %struct.ta_header** %8, align 8
  %104 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %103, i32 0, i32 1
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load %struct.ta_header*, %struct.ta_header** %8, align 8
  %108 = getelementptr inbounds %struct.ta_header, %struct.ta_header* %107, i32 0, i32 1
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  store %struct.TYPE_11__* %106, %struct.TYPE_11__** %113, align 8
  br label %114

114:                                              ; preds = %86, %81
  br label %115

115:                                              ; preds = %114, %58
  %116 = load %struct.ta_header*, %struct.ta_header** %8, align 8
  %117 = call i8* @PTR_FROM_HEADER(%struct.ta_header* %116)
  store i8* %117, i8** %4, align 8
  br label %118

118:                                              ; preds = %115, %57, %36, %23, %17, %13
  %119 = load i8*, i8** %4, align 8
  ret i8* %119
}

declare dso_local i32 @ta_free(i8*) #1

declare dso_local i8* @ta_alloc_size(i8*, i64) #1

declare dso_local %struct.ta_header* @get_header(i8*) #1

declare dso_local i32 @ta_dbg_remove(%struct.ta_header*) #1

declare dso_local %struct.ta_header* @realloc(%struct.ta_header*, i32) #1

declare dso_local i32 @ta_dbg_add(%struct.ta_header*) #1

declare dso_local i8* @PTR_FROM_HEADER(%struct.ta_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
