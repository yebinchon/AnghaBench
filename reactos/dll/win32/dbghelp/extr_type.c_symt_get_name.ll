; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_type.c_symt_get_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_type.c_symt_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symt = type { i32 }
%struct.symt_data = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8* }
%struct.symt_function = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8* }
%struct.symt_public = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }
%struct.symt_basic = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }
%struct.symt_hierarchy_point = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8* }
%struct.symt_thunk = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8* }
%struct.symt_enum = type { i8* }
%struct.symt_typedef = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8* }
%struct.symt_udt = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8* }

@.str = private unnamed_addr constant [24 x i8] c"Unsupported sym-tag %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @symt_get_name(%struct.symt* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.symt*, align 8
  store %struct.symt* %0, %struct.symt** %3, align 8
  %4 = load %struct.symt*, %struct.symt** %3, align 8
  %5 = getelementptr inbounds %struct.symt, %struct.symt* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %60 [
    i32 137, label %7
    i32 135, label %13
    i32 131, label %19
    i32 138, label %25
    i32 133, label %31
    i32 130, label %37
    i32 136, label %43
    i32 129, label %48
    i32 128, label %54
    i32 139, label %66
    i32 132, label %66
    i32 134, label %66
  ]

7:                                                ; preds = %1
  %8 = load %struct.symt*, %struct.symt** %3, align 8
  %9 = bitcast %struct.symt* %8 to %struct.symt_data*
  %10 = getelementptr inbounds %struct.symt_data, %struct.symt_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %2, align 8
  br label %67

13:                                               ; preds = %1
  %14 = load %struct.symt*, %struct.symt** %3, align 8
  %15 = bitcast %struct.symt* %14 to %struct.symt_function*
  %16 = getelementptr inbounds %struct.symt_function, %struct.symt_function* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %2, align 8
  br label %67

19:                                               ; preds = %1
  %20 = load %struct.symt*, %struct.symt** %3, align 8
  %21 = bitcast %struct.symt* %20 to %struct.symt_public*
  %22 = getelementptr inbounds %struct.symt_public, %struct.symt_public* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %2, align 8
  br label %67

25:                                               ; preds = %1
  %26 = load %struct.symt*, %struct.symt** %3, align 8
  %27 = bitcast %struct.symt* %26 to %struct.symt_basic*
  %28 = getelementptr inbounds %struct.symt_basic, %struct.symt_basic* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %2, align 8
  br label %67

31:                                               ; preds = %1
  %32 = load %struct.symt*, %struct.symt** %3, align 8
  %33 = bitcast %struct.symt* %32 to %struct.symt_hierarchy_point*
  %34 = getelementptr inbounds %struct.symt_hierarchy_point, %struct.symt_hierarchy_point* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %2, align 8
  br label %67

37:                                               ; preds = %1
  %38 = load %struct.symt*, %struct.symt** %3, align 8
  %39 = bitcast %struct.symt* %38 to %struct.symt_thunk*
  %40 = getelementptr inbounds %struct.symt_thunk, %struct.symt_thunk* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %2, align 8
  br label %67

43:                                               ; preds = %1
  %44 = load %struct.symt*, %struct.symt** %3, align 8
  %45 = bitcast %struct.symt* %44 to %struct.symt_enum*
  %46 = getelementptr inbounds %struct.symt_enum, %struct.symt_enum* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %2, align 8
  br label %67

48:                                               ; preds = %1
  %49 = load %struct.symt*, %struct.symt** %3, align 8
  %50 = bitcast %struct.symt* %49 to %struct.symt_typedef*
  %51 = getelementptr inbounds %struct.symt_typedef, %struct.symt_typedef* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %2, align 8
  br label %67

54:                                               ; preds = %1
  %55 = load %struct.symt*, %struct.symt** %3, align 8
  %56 = bitcast %struct.symt* %55 to %struct.symt_udt*
  %57 = getelementptr inbounds %struct.symt_udt, %struct.symt_udt* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %2, align 8
  br label %67

60:                                               ; preds = %1
  %61 = load %struct.symt*, %struct.symt** %3, align 8
  %62 = getelementptr inbounds %struct.symt, %struct.symt* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @symt_get_tag_str(i32 %63)
  %65 = call i32 @FIXME(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %1, %1, %1, %60
  store i8* null, i8** %2, align 8
  br label %67

67:                                               ; preds = %66, %54, %48, %43, %37, %31, %25, %19, %13, %7
  %68 = load i8*, i8** %2, align 8
  ret i8* %68
}

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @symt_get_tag_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
