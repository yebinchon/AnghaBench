; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_search.c_SearchCHM_Storage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_search.c_SearchCHM_Storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i8*, i32 }

@SearchCHM_Storage.szHTMext = internal constant [5 x i8] c".htm\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Could not enumerate '/' storage elements: %08x\0A\00", align 1
@NOERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Unhandled IStorage stream element.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_9__*, i32*, i8*)* @SearchCHM_Storage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @SearchCHM_Storage(%struct.TYPE_9__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %8, align 8
  store i8* null, i8** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i64 @IStorage_EnumElements(i32* %14, i32 0, i32* null, i32 0, i32** %8)
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* @S_OK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i64, i64* %11, align 8
  %21 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %20)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %78

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %73, %22
  %24 = load i32*, i32** %8, align 8
  %25 = call i64 @IEnumSTATSTG_Next(i32* %24, i32 1, %struct.TYPE_10__* %10, i32* %12)
  %26 = load i64, i64* @NOERROR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %74

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %9, align 8
  br label %31

31:                                               ; preds = %35, %28
  %32 = load i8*, i8** %9, align 8
  %33 = call i8* @wcschr(i8* %32, i8 signext 47)
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i8*, i8** %9, align 8
  %37 = call i8* @wcschr(i8* %36, i8 signext 47)
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  store i8* %38, i8** %9, align 8
  br label %31

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %71 [
    i32 129, label %42
    i32 128, label %48
  ]

42:                                               ; preds = %39
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call %struct.TYPE_9__* @SearchCHM_Folder(%struct.TYPE_9__* %43, i32* %44, i8* %45, i8* %46)
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %5, align 8
  br label %73

48:                                               ; preds = %39
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @wcsstr(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @SearchCHM_Storage.szHTMext, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %48
  %53 = load i32*, i32** %6, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i8* @SearchCHM_File(i32* %53, i8* %54, i8* %55)
  store i8* %56, i8** %13, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = load i8*, i8** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call %struct.TYPE_9__* @alloc_search_item(i8* %60, i8* %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %65, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %5, align 8
  br label %69

69:                                               ; preds = %59, %52
  br label %70

70:                                               ; preds = %69, %48
  br label %73

71:                                               ; preds = %39
  %72 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %70, %42
  br label %23

74:                                               ; preds = %23
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @IEnumSTATSTG_Release(i32* %75)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %77, %struct.TYPE_9__** %4, align 8
  br label %78

78:                                               ; preds = %74, %19
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %79
}

declare dso_local i64 @IStorage_EnumElements(i32*, i32, i32*, i32, i32**) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i64 @IEnumSTATSTG_Next(i32*, i32, %struct.TYPE_10__*, i32*) #1

declare dso_local i8* @wcschr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_9__* @SearchCHM_Folder(%struct.TYPE_9__*, i32*, i8*, i8*) #1

declare dso_local i32 @wcsstr(i8*, i8*) #1

declare dso_local i8* @SearchCHM_File(i32*, i8*, i8*) #1

declare dso_local %struct.TYPE_9__* @alloc_search_item(i8*, i8*) #1

declare dso_local i32 @IEnumSTATSTG_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
