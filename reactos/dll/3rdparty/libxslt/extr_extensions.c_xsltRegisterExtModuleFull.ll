; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_extensions.c_xsltRegisterExtModuleFull.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_extensions.c_xsltRegisterExtModuleFull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@xsltExtensionsHash = common dso_local global i32* null, align 8
@xsltExtMutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xsltRegisterExtModuleFull(i32* %0, i32* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load i32*, i32** %8, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %5
  store i32 -1, i32* %6, align 4
  br label %71

20:                                               ; preds = %16
  %21 = load i32*, i32** @xsltExtensionsHash, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32* @xmlHashCreate(i32 10)
  store i32* %24, i32** @xsltExtensionsHash, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32*, i32** @xsltExtensionsHash, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 -1, i32* %6, align 4
  br label %71

29:                                               ; preds = %25
  %30 = load i32, i32* @xsltExtMutex, align 4
  %31 = call i32 @xmlMutexLock(i32 %30)
  %32 = load i32*, i32** @xsltExtensionsHash, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call %struct.TYPE_4__* @xmlHashLookup(i32* %32, i32* %33)
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %13, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %29
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = icmp eq i32* %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  br label %51

50:                                               ; preds = %43, %37
  store i32 -1, i32* %12, align 4
  br label %51

51:                                               ; preds = %50, %49
  br label %67

52:                                               ; preds = %29
  %53 = load i32*, i32** %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call %struct.TYPE_4__* @xsltNewExtModule(i32* %53, i64 %54, i32 %55, i32 %56)
  store %struct.TYPE_4__* %57, %struct.TYPE_4__** %13, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %59 = icmp eq %struct.TYPE_4__* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 -1, i32* %12, align 4
  br label %67

61:                                               ; preds = %52
  %62 = load i32*, i32** @xsltExtensionsHash, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %65 = bitcast %struct.TYPE_4__* %64 to i8*
  %66 = call i32 @xmlHashAddEntry(i32* %62, i32* %63, i8* %65)
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %61, %60, %51
  %68 = load i32, i32* @xsltExtMutex, align 4
  %69 = call i32 @xmlMutexUnlock(i32 %68)
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %67, %28, %19
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32* @xmlHashCreate(i32) #1

declare dso_local i32 @xmlMutexLock(i32) #1

declare dso_local %struct.TYPE_4__* @xmlHashLookup(i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @xsltNewExtModule(i32*, i64, i32, i32) #1

declare dso_local i32 @xmlHashAddEntry(i32*, i32*, i8*) #1

declare dso_local i32 @xmlMutexUnlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
