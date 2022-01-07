; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_navigate.c_navigate_hlink.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_navigate.c_navigate_hlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32, i64, %struct.TYPE_17__, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"GetDisplayName failed: %08x\0A\00", align 1
@IID_IHttpNegotiate = common dso_local global i32 0, align 4
@navigate_hlink.null_string = internal constant [1 x i32] zeroinitializer, align 4
@BINDVERB_POST = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32*, i32*, i32*)* @navigate_hlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @navigate_hlink(%struct.TYPE_18__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_20__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %11, align 8
  store i64 0, i64* %12, align 8
  store i32* null, i32** %13, align 8
  store i32 0, i32* %16, align 4
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @IMoniker_GetDisplayName(i32* %19, i32 0, i32* null, i32** %14)
  store i32 %20, i32* %17, align 4
  %21 = load i32, i32* %17, align 4
  %22 = call i64 @FAILED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* %17, align 4
  %26 = call i32 @FIXME(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %24, %4
  %28 = load i32*, i32** %8, align 8
  %29 = bitcast i32** %9 to i8**
  %30 = call i32 @IBindStatusCallback_QueryInterface(i32* %28, i32* @IID_IHttpNegotiate, i8** %29)
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %17, align 4
  %32 = call i64 @SUCCEEDED(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @IHttpNegotiate_BeginningTransaction(i32* %35, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @navigate_hlink.null_string, i64 0, i64 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @navigate_hlink.null_string, i64 0, i64 0), i32 0, i32** %13)
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @IHttpNegotiate_Release(i32* %37)
  br label %39

39:                                               ; preds = %34, %27
  %40 = call i32 @memset(%struct.TYPE_20__* %15, i32 0, i32 32)
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  store i32 32, i32* %41, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @IBindStatusCallback_GetBindInfo(i32* %42, i32* %16, %struct.TYPE_20__* %15)
  store i32 %43, i32* %17, align 4
  %44 = call i32 @dump_BINDINFO(%struct.TYPE_20__* %15)
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BINDVERB_POST, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %12, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %11, align 8
  br label %59

59:                                               ; preds = %54, %49
  br label %60

60:                                               ; preds = %59, %39
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i32, i32* @FALSE, align 4
  %72 = call i32 @async_doc_navigate(%struct.TYPE_18__* %66, i32* %67, i32* %68, i32* %69, i64 %70, i32 %71)
  store i32 %72, i32* %17, align 4
  br label %87

73:                                               ; preds = %60
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i32*, i32** %13, align 8
  %79 = call %struct.TYPE_19__* @create_callback(%struct.TYPE_18__* %74, i32* %75, i32* %76, i64 %77, i32* %78)
  store %struct.TYPE_19__* %79, %struct.TYPE_19__** %10, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @navigate_bsc(%struct.TYPE_18__* %80, %struct.TYPE_19__* %81, i32* %82)
  store i32 %83, i32* %17, align 4
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = call i32 @IBindStatusCallback_Release(i32* %85)
  br label %87

87:                                               ; preds = %73, %65
  %88 = load i32*, i32** %14, align 8
  %89 = call i32 @CoTaskMemFree(i32* %88)
  %90 = load i32*, i32** %13, align 8
  %91 = call i32 @CoTaskMemFree(i32* %90)
  %92 = call i32 @ReleaseBindInfo(%struct.TYPE_20__* %15)
  %93 = load i32, i32* %17, align 4
  ret i32 %93
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @IMoniker_GetDisplayName(i32*, i32, i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @IBindStatusCallback_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IHttpNegotiate_BeginningTransaction(i32*, i32*, i32*, i32, i32**) #1

declare dso_local i32 @IHttpNegotiate_Release(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @IBindStatusCallback_GetBindInfo(i32*, i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @dump_BINDINFO(%struct.TYPE_20__*) #1

declare dso_local i32 @async_doc_navigate(%struct.TYPE_18__*, i32*, i32*, i32*, i64, i32) #1

declare dso_local %struct.TYPE_19__* @create_callback(%struct.TYPE_18__*, i32*, i32*, i64, i32*) #1

declare dso_local i32 @navigate_bsc(%struct.TYPE_18__*, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @IBindStatusCallback_Release(i32*) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

declare dso_local i32 @ReleaseBindInfo(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
