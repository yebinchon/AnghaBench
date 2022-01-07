; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_navigate.c_bind_to_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_navigate.c_bind_to_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"GetDisplayName failed: %08x\0A\00", align 1
@SZ_HTML_CLIENTSITE_OBJECTPARAM = common dso_local global i64 0, align 8
@IID_IUnknown = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"BindToObject failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32, i32*, i32*)* @bind_to_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_to_object(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @IMoniker_AddRef(i32* %18)
  br label %29

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @create_moniker(i32 %21, i32** %8)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = call i64 @FAILED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %6, align 4
  br label %90

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %17
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @IMoniker_GetDisplayName(i32* %30, i32 0, i32* null, i32** %13)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call i64 @FAILED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @FIXME(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @IMoniker_Release(i32* %38)
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %6, align 4
  br label %90

41:                                               ; preds = %29
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @set_dochost_url(%struct.TYPE_4__* %42, i32* %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 @CoTaskMemFree(i32* %45)
  %47 = load i32, i32* %14, align 4
  %48 = call i64 @FAILED(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @IMoniker_Release(i32* %51)
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %6, align 4
  br label %90

54:                                               ; preds = %41
  %55 = load i32*, i32** %10, align 8
  %56 = load i64, i64* @SZ_HTML_CLIENTSITE_OBJECTPARAM, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = call i32 @IBindCtx_RegisterObjectParam(i32* %55, i32 %57, i32* %59)
  %61 = load i32*, i32** %8, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = bitcast i32** %12 to i8**
  %64 = call i32 @IMoniker_BindToObject(i32* %61, i32* %62, i32* null, i32* @IID_IUnknown, i8** %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call i64 @SUCCEEDED(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %54
  %69 = load i32, i32* @S_OK, align 4
  store i32 %69, i32* %14, align 4
  %70 = load i32*, i32** %12, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @IUnknown_Release(i32* %73)
  br label %75

75:                                               ; preds = %72, %68
  br label %86

76:                                               ; preds = %54
  %77 = load i32, i32* %9, align 4
  %78 = call i64 @try_application_url(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @S_OK, align 4
  store i32 %81, i32* %14, align 4
  br label %85

82:                                               ; preds = %76
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %82, %80
  br label %86

86:                                               ; preds = %85, %75
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @IMoniker_Release(i32* %87)
  %89 = load i32, i32* @S_OK, align 4
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %86, %50, %35, %26
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @IMoniker_AddRef(i32*) #1

declare dso_local i32 @create_moniker(i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IMoniker_GetDisplayName(i32*, i32, i32*, i32**) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @IMoniker_Release(i32*) #1

declare dso_local i32 @set_dochost_url(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

declare dso_local i32 @IBindCtx_RegisterObjectParam(i32*, i32, i32*) #1

declare dso_local i32 @IMoniker_BindToObject(i32*, i32*, i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i64 @try_application_url(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
