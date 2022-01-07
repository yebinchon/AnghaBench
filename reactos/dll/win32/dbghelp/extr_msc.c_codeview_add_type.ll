; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_add_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_add_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.symt** }
%struct.symt = type { i32 }

@FIRST_DEFINABLE_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"What the heck\0A\00", align 1
@cv_current_module = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Adding %x to non allowed module\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"No module index while inserting type-id assumption is wrong %x\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Overwriting at %x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.symt*)* @codeview_add_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codeview_add_type(i32 %0, %struct.symt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.symt*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.symt* %1, %struct.symt** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @FIRST_DEFINABLE_TYPE, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cv_current_module, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %3, align 4
  br label %131

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = lshr i32 %19, 24
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @FIRST_DEFINABLE_TYPE, align 4
  %28 = sub i32 %26, %27
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cv_current_module, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp uge i32 %28, %31
  br i1 %32, label %33, label %93

33:                                               ; preds = %25
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cv_current_module, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.symt**, %struct.symt*** %35, align 8
  %37 = icmp ne %struct.symt** %36, null
  br i1 %37, label %38, label %65

38:                                               ; preds = %33
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cv_current_module, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul i32 %41, 2
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @FIRST_DEFINABLE_TYPE, align 4
  %45 = sub i32 %43, %44
  %46 = add i32 %45, 1
  %47 = call i8* @max(i32 %42, i32 %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cv_current_module, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = call i32 (...) @GetProcessHeap()
  %52 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cv_current_module, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load %struct.symt**, %struct.symt*** %54, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cv_current_module, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = zext i32 %58 to i64
  %60 = mul i64 %59, 8
  %61 = trunc i64 %60 to i32
  %62 = call %struct.symt** @HeapReAlloc(i32 %51, i32 %52, %struct.symt** %55, i32 %61)
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cv_current_module, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store %struct.symt** %62, %struct.symt*** %64, align 8
  br label %85

65:                                               ; preds = %33
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @FIRST_DEFINABLE_TYPE, align 4
  %68 = sub i32 %66, %67
  %69 = add i32 %68, 1
  %70 = call i8* @max(i32 256, i32 %69)
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cv_current_module, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = call i32 (...) @GetProcessHeap()
  %75 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cv_current_module, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = zext i32 %78 to i64
  %80 = mul i64 %79, 8
  %81 = trunc i64 %80 to i32
  %82 = call %struct.symt** @HeapAlloc(i32 %74, i32 %75, i32 %81)
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cv_current_module, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store %struct.symt** %82, %struct.symt*** %84, align 8
  br label %85

85:                                               ; preds = %65, %38
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cv_current_module, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load %struct.symt**, %struct.symt*** %87, align 8
  %89 = icmp eq %struct.symt** %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @FALSE, align 4
  store i32 %91, i32* %3, align 4
  br label %131

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %25
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cv_current_module, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load %struct.symt**, %struct.symt*** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @FIRST_DEFINABLE_TYPE, align 4
  %99 = sub i32 %97, %98
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.symt*, %struct.symt** %96, i64 %100
  %102 = load %struct.symt*, %struct.symt** %101, align 8
  %103 = icmp ne %struct.symt* %102, null
  br i1 %103, label %104, label %120

104:                                              ; preds = %93
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cv_current_module, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load %struct.symt**, %struct.symt*** %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @FIRST_DEFINABLE_TYPE, align 4
  %110 = sub i32 %108, %109
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.symt*, %struct.symt** %107, i64 %111
  %113 = load %struct.symt*, %struct.symt** %112, align 8
  %114 = load %struct.symt*, %struct.symt** %5, align 8
  %115 = icmp ne %struct.symt* %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %104
  %117 = load i32, i32* %4, align 4
  %118 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %116, %104
  br label %120

120:                                              ; preds = %119, %93
  %121 = load %struct.symt*, %struct.symt** %5, align 8
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cv_current_module, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load %struct.symt**, %struct.symt*** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @FIRST_DEFINABLE_TYPE, align 4
  %127 = sub i32 %125, %126
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.symt*, %struct.symt** %124, i64 %128
  store %struct.symt* %121, %struct.symt** %129, align 8
  %130 = load i32, i32* @TRUE, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %120, %90, %14
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local %struct.symt** @HeapReAlloc(i32, i32, %struct.symt**, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local %struct.symt** @HeapAlloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
