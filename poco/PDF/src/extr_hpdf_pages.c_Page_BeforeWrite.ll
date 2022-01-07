; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pages.c_Page_BeforeWrite.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pages.c_Page_BeforeWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c" HPDF_Page_BeforeWrite\0A\00", align 1
@HPDF_GMODE_PATH_OBJECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c" HPDF_Page_BeforeWrite warning path object is not end\0A\00", align 1
@HPDF_OK = common dso_local global i32 0, align 4
@HPDF_GMODE_TEXT_OBJECT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c" HPDF_Page_BeforeWrite warning text block is not end\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @Page_BeforeWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Page_BeforeWrite(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = ptrtoint %struct.TYPE_7__* %7 to i32
  store i32 %8, i32* %5, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %6, align 8
  %14 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HPDF_GMODE_PATH_OBJECT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @HPDF_Page_EndPath(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @HPDF_OK, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %68

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @HPDF_GMODE_TEXT_OBJECT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @HPDF_Page_EndText(i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @HPDF_OK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %68

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %29
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = icmp ne %struct.TYPE_5__* %47, null
  br i1 %48, label %49, label %66

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %64, %49
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @HPDF_Page_GRestore(i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* @HPDF_OK, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %68

64:                                               ; preds = %57
  br label %50

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65, %44
  %67 = load i32, i32* @HPDF_OK, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %62, %41, %26
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32 @HPDF_Page_EndPath(i32) #1

declare dso_local i32 @HPDF_Page_EndText(i32) #1

declare dso_local i32 @HPDF_Page_GRestore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
