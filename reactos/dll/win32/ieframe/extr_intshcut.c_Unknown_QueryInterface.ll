; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_intshcut.c_Unknown_QueryInterface.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_intshcut.c_Unknown_QueryInterface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"(%p, %s, %p)\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@IID_IUniformResourceLocatorA = common dso_local global i32 0, align 4
@IID_IUniformResourceLocatorW = common dso_local global i32 0, align 4
@IID_IPersistFile = common dso_local global i32 0, align 4
@IID_IPropertySetStorage = common dso_local global i32 0, align 4
@IID_IShellLinkA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"The IShellLinkA interface is not yet supported by InternetShortcut\0A\00", align 1
@E_NOINTERFACE = common dso_local global i32 0, align 4
@IID_IShellLinkW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"The IShellLinkW interface is not yet supported by InternetShortcut\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"Interface with GUID %s not yet implemented by InternetShortcut\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32**)* @Unknown_QueryInterface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Unknown_QueryInterface(%struct.TYPE_4__* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @debugstr_guid(i32 %9)
  %11 = load i32**, i32*** %7, align 8
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %8, i32 %10, i32** %11)
  %13 = load i32**, i32*** %7, align 8
  store i32* null, i32** %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @IsEqualGUID(i32* @IID_IUnknown, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load i32**, i32*** %7, align 8
  store i32* %19, i32** %20, align 8
  br label %76

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @IsEqualGUID(i32* @IID_IUniformResourceLocatorA, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i32**, i32*** %7, align 8
  store i32* %27, i32** %28, align 8
  br label %75

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @IsEqualGUID(i32* @IID_IUniformResourceLocatorW, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32**, i32*** %7, align 8
  store i32* %35, i32** %36, align 8
  br label %74

37:                                               ; preds = %29
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @IsEqualGUID(i32* @IID_IPersistFile, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32**, i32*** %7, align 8
  store i32* %43, i32** %44, align 8
  br label %73

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @IsEqualGUID(i32* @IID_IPropertySetStorage, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32**, i32*** %7, align 8
  store i32* %51, i32** %52, align 8
  br label %72

53:                                               ; preds = %45
  %54 = load i32, i32* %6, align 4
  %55 = call i64 @IsEqualGUID(i32* @IID_IShellLinkA, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %59, i32* %4, align 4
  br label %81

60:                                               ; preds = %53
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @IsEqualGUID(i32* @IID_IShellLinkW, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %66, i32* %4, align 4
  br label %81

67:                                               ; preds = %60
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @debugstr_guid(i32 %68)
  %70 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %71, i32* %4, align 4
  br label %81

72:                                               ; preds = %49
  br label %73

73:                                               ; preds = %72, %41
  br label %74

74:                                               ; preds = %73, %33
  br label %75

75:                                               ; preds = %74, %25
  br label %76

76:                                               ; preds = %75, %17
  %77 = load i32**, i32*** %7, align 8
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @IUnknown_AddRef(i32* %78)
  %80 = load i32, i32* @S_OK, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %76, %67, %64, %57
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_4__*, i32, i32**) #1

declare dso_local i32 @debugstr_guid(i32) #1

declare dso_local i64 @IsEqualGUID(i32*, i32) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @IUnknown_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
