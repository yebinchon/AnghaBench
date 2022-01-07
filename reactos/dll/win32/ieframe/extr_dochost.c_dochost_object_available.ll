; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_dochost.c_dochost_object_available.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_dochost.c_dochost_object_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32* }

@IID_IOleObject = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Got clsid %s\0A\00", align 1
@CLSID_HTMLDocument = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"CLSID_HTMLDocument\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"SetClientSite failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Could not get IOleObject iface: %08x\0A\00", align 1
@object_available_proc = common dso_local global i32 0, align 4
@object_available_task_destr = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@READYSTATE_COMPLETE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dochost_object_available(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @IUnknown_AddRef(i32* %10)
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  store i32* %12, i32** %14, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = bitcast i32** %7 to i8**
  %17 = call i32 @IUnknown_QueryInterface(i32* %15, i32* @IID_IOleObject, i8** %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @SUCCEEDED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %2
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @IOleObject_GetUserClassID(i32* %22, i32* %9)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @SUCCEEDED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = call i64 @IsEqualGUID(i32* %9, i32* @CLSID_HTMLDocument)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %33

31:                                               ; preds = %27
  %32 = call i8* @debugstr_guid(i32* %9)
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %30 ], [ %32, %31 ]
  %35 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %33, %21
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = call i32 @IOleObject_SetClientSite(i32* %37, i32* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @FAILED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %36
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @IOleObject_Release(i32* %48)
  br label %53

50:                                               ; preds = %2
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @FIXME(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = call i32* @heap_alloc(i32 4)
  store i32* %54, i32** %6, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* @object_available_proc, align 4
  %58 = load i32, i32* @object_available_task_destr, align 4
  %59 = load i32, i32* @FALSE, align 4
  %60 = call i32 @push_dochost_task(%struct.TYPE_7__* %55, i32* %56, i32 %57, i32 %58, i32 %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = call i32 @get_doc_ready_state(%struct.TYPE_7__* %61, i64* %5)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i64 @SUCCEEDED(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %53
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @READYSTATE_COMPLETE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = load i64, i64* @READYSTATE_COMPLETE, align 8
  %73 = call i32 @push_ready_state_task(%struct.TYPE_7__* %71, i64 %72)
  br label %74

74:                                               ; preds = %70, %66
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* @READYSTATE_COMPLETE, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78, %74
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %85 = load i32, i32* @TRUE, align 4
  %86 = call i32 @advise_prop_notif(%struct.TYPE_7__* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %78
  br label %98

88:                                               ; preds = %53
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %95 = load i64, i64* @READYSTATE_COMPLETE, align 8
  %96 = call i32 @push_ready_state_task(%struct.TYPE_7__* %94, i64 %95)
  br label %97

97:                                               ; preds = %93, %88
  br label %98

98:                                               ; preds = %97, %87
  %99 = load i32, i32* @S_OK, align 4
  ret i32 %99
}

declare dso_local i32 @IUnknown_AddRef(i32*) #1

declare dso_local i32 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IOleObject_GetUserClassID(i32*, i32*) #1

declare dso_local i32 @TRACE(i8*, i8*) #1

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

declare dso_local i8* @debugstr_guid(i32*) #1

declare dso_local i32 @IOleObject_SetClientSite(i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @IOleObject_Release(i32*) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i32 @push_dochost_task(%struct.TYPE_7__*, i32*, i32, i32, i32) #1

declare dso_local i32 @get_doc_ready_state(%struct.TYPE_7__*, i64*) #1

declare dso_local i32 @push_ready_state_task(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @advise_prop_notif(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
