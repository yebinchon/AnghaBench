; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_res.c_read_mapped_resources.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_res.c_read_mapped_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c".rsrc\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"found .rsrc at %08x, size %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64)* @read_mapped_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_mapped_resources(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %11, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32* @get_nt_header(i8* %13, i64 %14)
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %4, align 4
  br label %122

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call %struct.TYPE_3__* @get_section_header(i8* %21, i64 %22, i64* %11)
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %10, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %4, align 4
  br label %122

28:                                               ; preds = %20
  store i64 0, i64* %12, align 8
  br label %29

29:                                               ; preds = %43, %28
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %35 = load i64, i64* %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memcmp(i32 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 6)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  br label %46

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %12, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %12, align 8
  br label %29

46:                                               ; preds = %41, %29
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %11, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %4, align 4
  br label %122

52:                                               ; preds = %46
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %54 = load i64, i64* %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %75, label %60

60:                                               ; preds = %52
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %62 = load i64, i64* %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = add i64 %65, %71
  %73 = load i64, i64* %7, align 8
  %74 = icmp ugt i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %60, %52
  %76 = load i32, i32* @TRUE, align 4
  store i32 %76, i32* %4, align 4
  br label %122

77:                                               ; preds = %60
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %79 = load i64, i64* %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %82, i32 %87)
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %90 = load i64, i64* %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %77
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %97 = load i64, i64* %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = icmp ult i64 %101, 4
  br i1 %102, label %103, label %105

103:                                              ; preds = %95, %77
  %104 = load i32, i32* @TRUE, align 4
  store i32 %104, i32* %4, align 4
  br label %122

105:                                              ; preds = %95
  %106 = load i8*, i8** %6, align 8
  %107 = bitcast i8* %106 to i32*
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %109 = load i64, i64* %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds i32, i32* %107, i64 %112
  %114 = bitcast i32* %113 to i8*
  %115 = bitcast i8* %114 to i32*
  store i32* %115, i32** %8, align 8
  %116 = load i32*, i32** %5, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = load i64, i64* %7, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = call i32 @enumerate_mapped_resources(i32* %116, i8* %117, i64 %118, i32* %119)
  %121 = load i32, i32* @TRUE, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %105, %103, %75, %50, %26, %18
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32* @get_nt_header(i8*, i64) #1

declare dso_local %struct.TYPE_3__* @get_section_header(i8*, i64, i64*) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @TRACE(i8*, i64, i32) #1

declare dso_local i32 @enumerate_mapped_resources(i32*, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
