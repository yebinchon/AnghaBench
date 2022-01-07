; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_freepage.c_FreePageManagerDumpBtree.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_freepage.c_FreePageManagerDumpBtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_16__ }

@.str = private unnamed_addr constant [12 x i8] c"  %zu@%d %c\00", align 1
@FREE_PAGE_INTERNAL_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c" [actual parent %zu, expected %zu]\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" %zu->%zu\00", align 1
@FPM_PAGE_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c" %zu(%zu)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32, i32)* @FreePageManagerDumpBtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FreePageManagerDumpBtree(i32* %0, %struct.TYPE_15__* %1, %struct.TYPE_15__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i8* @fpm_segment_base(i32* %16)
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %20 = call i64 @fpm_pointer_to_page(i8* %18, %struct.TYPE_15__* %19)
  store i64 %20, i64* %12, align 8
  %21 = call i32 (...) @check_stack_depth()
  %22 = load i8*, i8** %11, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.TYPE_15__* @relptr_access(i8* %22, i64 %27)
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %14, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i64, i64* %12, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @FREE_PAGE_INTERNAL_MAGIC, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 105, i32 108
  %41 = call i32 (i32, i8*, i64, i64, ...) @appendStringInfo(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %32, i32 %40)
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %44 = icmp ne %struct.TYPE_15__* %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %5
  %46 = load i32, i32* %10, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %49 = call i64 @fpm_pointer_to_page(i8* %47, %struct.TYPE_15__* %48)
  %50 = load i8*, i8** %11, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %52 = call i64 @fpm_pointer_to_page(i8* %50, %struct.TYPE_15__* %51)
  %53 = call i32 (i32, i8*, i64, i64, ...) @appendStringInfo(i32 %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %49, i64 %52)
  br label %54

54:                                               ; preds = %45, %5
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @appendStringInfoChar(i32 %55, i8 signext 58)
  store i64 0, i64* %13, align 8
  br label %57

57:                                               ; preds = %113, %54
  %58 = load i64, i64* %13, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ult i64 %58, %62
  br i1 %63, label %64, label %116

64:                                               ; preds = %57
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @FREE_PAGE_INTERNAL_MAGIC, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %93

71:                                               ; preds = %64
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = load i64, i64* %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = load i64, i64* %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @FPM_PAGE_SIZE, align 8
  %91 = udiv i64 %89, %90
  %92 = call i32 (i32, i8*, i64, i64, ...) @appendStringInfo(i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %80, i64 %91)
  br label %112

93:                                               ; preds = %64
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = load i64, i64* %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = load i64, i64* %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 (i32, i8*, i64, i64, ...) @appendStringInfo(i32 %94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 %102, i64 %110)
  br label %112

112:                                              ; preds = %93, %71
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %13, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %13, align 8
  br label %57

116:                                              ; preds = %57
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @appendStringInfoChar(i32 %117, i8 signext 10)
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @FREE_PAGE_INTERNAL_MAGIC, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %155

125:                                              ; preds = %116
  store i64 0, i64* %13, align 8
  br label %126

126:                                              ; preds = %151, %125
  %127 = load i64, i64* %13, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ult i64 %127, %131
  br i1 %132, label %133, label %154

133:                                              ; preds = %126
  %134 = load i8*, i8** %11, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %137, align 8
  %139 = load i64, i64* %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call %struct.TYPE_15__* @relptr_access(i8* %134, i64 %143)
  store %struct.TYPE_15__* %144, %struct.TYPE_15__** %15, align 8
  %145 = load i32*, i32** %6, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  %150 = load i32, i32* %10, align 4
  call void @FreePageManagerDumpBtree(i32* %145, %struct.TYPE_15__* %146, %struct.TYPE_15__* %147, i32 %149, i32 %150)
  br label %151

151:                                              ; preds = %133
  %152 = load i64, i64* %13, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %13, align 8
  br label %126

154:                                              ; preds = %126
  br label %155

155:                                              ; preds = %154, %116
  ret void
}

declare dso_local i8* @fpm_segment_base(i32*) #1

declare dso_local i64 @fpm_pointer_to_page(i8*, %struct.TYPE_15__*) #1

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local %struct.TYPE_15__* @relptr_access(i8*, i64) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i64, i64, ...) #1

declare dso_local i32 @appendStringInfoChar(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
