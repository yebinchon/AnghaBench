; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_apprentice_1.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_apprentice_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i64 }
%struct.mlist = type { i32, %struct.mlist*, %struct.mlist*, i32, %struct.r_magic* }
%struct.r_magic = type { i32 }

@magicsize = common dso_local global i64 0, align 8
@FILE_MAGICSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"magic element size %lu != %lu\00", align 1
@FILE_COMPILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32, %struct.mlist*)* @apprentice_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apprentice_1(%struct.TYPE_8__* %0, i8* %1, i32 %2, %struct.mlist* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlist*, align 8
  %10 = alloca %struct.r_magic*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mlist* %3, %struct.mlist** %9, align 8
  store %struct.r_magic* null, %struct.r_magic** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %13, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %109

18:                                               ; preds = %4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load i64, i64* @magicsize, align 8
  %22 = load i64, i64* @FILE_MAGICSIZE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = load i64, i64* @FILE_MAGICSIZE, align 8
  %27 = call i32 @file_error(%struct.TYPE_8__* %25, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 4, i64 %26)
  store i32 -1, i32* %5, align 4
  br label %109

28:                                               ; preds = %18
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @FILE_COMPILE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %28
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @apprentice_load(%struct.TYPE_8__* %36, %struct.r_magic** %10, i32* %11, i8* %37, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 -1, i32* %5, align 4
  br label %109

43:                                               ; preds = %35
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @apprentice_compile(%struct.TYPE_8__* %44, %struct.r_magic** %10, i32* %11, i8* %45)
  store i32 %46, i32* %13, align 4
  %47 = load %struct.r_magic*, %struct.r_magic** %10, align 8
  %48 = call i32 @free(%struct.r_magic* %47)
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %5, align 4
  br label %109

50:                                               ; preds = %28
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @apprentice_map(%struct.TYPE_8__* %51, %struct.r_magic** %10, i32* %11, i8* %52)
  store i32 %53, i32* %13, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @apprentice_load(%struct.TYPE_8__* %56, %struct.r_magic** %10, i32* %11, i8* %57, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 -1, i32* %5, align 4
  br label %109

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %50
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %14, align 4
  %66 = load %struct.r_magic*, %struct.r_magic** %10, align 8
  %67 = icmp ne %struct.r_magic* %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = load %struct.r_magic*, %struct.r_magic** %10, align 8
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @file_delmagic(%struct.r_magic* %69, i32 %70, i32 %71)
  store i32 -1, i32* %5, align 4
  br label %109

73:                                               ; preds = %64
  %74 = call %struct.mlist* @malloc(i32 40)
  store %struct.mlist* %74, %struct.mlist** %12, align 8
  %75 = icmp ne %struct.mlist* %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = load %struct.r_magic*, %struct.r_magic** %10, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @file_delmagic(%struct.r_magic* %77, i32 %78, i32 %79)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = call i32 @file_oomem(%struct.TYPE_8__* %81, i32 40)
  store i32 -1, i32* %5, align 4
  br label %109

83:                                               ; preds = %73
  %84 = load %struct.r_magic*, %struct.r_magic** %10, align 8
  %85 = load %struct.mlist*, %struct.mlist** %12, align 8
  %86 = getelementptr inbounds %struct.mlist, %struct.mlist* %85, i32 0, i32 4
  store %struct.r_magic* %84, %struct.r_magic** %86, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.mlist*, %struct.mlist** %12, align 8
  %89 = getelementptr inbounds %struct.mlist, %struct.mlist* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %14, align 4
  %91 = load %struct.mlist*, %struct.mlist** %12, align 8
  %92 = getelementptr inbounds %struct.mlist, %struct.mlist* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.mlist*, %struct.mlist** %12, align 8
  %94 = load %struct.mlist*, %struct.mlist** %9, align 8
  %95 = getelementptr inbounds %struct.mlist, %struct.mlist* %94, i32 0, i32 1
  %96 = load %struct.mlist*, %struct.mlist** %95, align 8
  %97 = getelementptr inbounds %struct.mlist, %struct.mlist* %96, i32 0, i32 2
  store %struct.mlist* %93, %struct.mlist** %97, align 8
  %98 = load %struct.mlist*, %struct.mlist** %9, align 8
  %99 = getelementptr inbounds %struct.mlist, %struct.mlist* %98, i32 0, i32 1
  %100 = load %struct.mlist*, %struct.mlist** %99, align 8
  %101 = load %struct.mlist*, %struct.mlist** %12, align 8
  %102 = getelementptr inbounds %struct.mlist, %struct.mlist* %101, i32 0, i32 1
  store %struct.mlist* %100, %struct.mlist** %102, align 8
  %103 = load %struct.mlist*, %struct.mlist** %9, align 8
  %104 = load %struct.mlist*, %struct.mlist** %12, align 8
  %105 = getelementptr inbounds %struct.mlist, %struct.mlist* %104, i32 0, i32 2
  store %struct.mlist* %103, %struct.mlist** %105, align 8
  %106 = load %struct.mlist*, %struct.mlist** %12, align 8
  %107 = load %struct.mlist*, %struct.mlist** %9, align 8
  %108 = getelementptr inbounds %struct.mlist, %struct.mlist* %107, i32 0, i32 1
  store %struct.mlist* %106, %struct.mlist** %108, align 8
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %83, %76, %68, %62, %43, %42, %24, %17
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @file_error(%struct.TYPE_8__*, i32, i8*, i64, i64) #1

declare dso_local i32 @apprentice_load(%struct.TYPE_8__*, %struct.r_magic**, i32*, i8*, i32) #1

declare dso_local i32 @apprentice_compile(%struct.TYPE_8__*, %struct.r_magic**, i32*, i8*) #1

declare dso_local i32 @free(%struct.r_magic*) #1

declare dso_local i32 @apprentice_map(%struct.TYPE_8__*, %struct.r_magic**, i32*, i8*) #1

declare dso_local i32 @file_delmagic(%struct.r_magic*, i32, i32) #1

declare dso_local %struct.mlist* @malloc(i32) #1

declare dso_local i32 @file_oomem(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
