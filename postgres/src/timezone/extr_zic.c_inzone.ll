; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_inzone.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_inzone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i32 }

@ZONE_MINFIELDS = common dso_local global i32 0, align 4
@ZONE_MAXFIELDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"wrong number of fields on Zone line\00", align 1
@lcltime = common dso_local global i32* null, align 8
@ZF_NAME = common dso_local global i64 0, align 8
@tzdefault = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"\22Zone %s\22 line and -l option are mutually exclusive\00", align 1
@TZDEFRULES = common dso_local global i8* null, align 8
@psxrules = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"\22Zone %s\22 line and -p option are mutually exclusive\00", align 1
@nzones = common dso_local global i64 0, align 8
@zones = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"duplicate zone name %s (file \22%s\22, line %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32)* @inzone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inzone(i8** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @ZONE_MINFIELDS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @ZONE_MAXFIELDS, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10, %2
  %15 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 (i32, ...) @error(i32 %15)
  store i32 0, i32* %3, align 4
  br label %96

17:                                               ; preds = %10
  %18 = load i32*, i32** @lcltime, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load i8**, i8*** %4, align 8
  %22 = load i64, i64* @ZF_NAME, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** @tzdefault, align 8
  %26 = call i64 @strcmp(i8* %24, i8* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i8*, i8** @tzdefault, align 8
  %31 = call i32 (i32, ...) @error(i32 %29, i8* %30)
  store i32 0, i32* %3, align 4
  br label %96

32:                                               ; preds = %20, %17
  %33 = load i8**, i8*** %4, align 8
  %34 = load i64, i64* @ZF_NAME, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** @TZDEFRULES, align 8
  %38 = call i64 @strcmp(i8* %36, i8* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load i32*, i32** @psxrules, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i8*, i8** @TZDEFRULES, align 8
  %46 = call i32 (i32, ...) @error(i32 %44, i8* %45)
  store i32 0, i32* %3, align 4
  br label %96

47:                                               ; preds = %40, %32
  store i64 0, i64* %6, align 8
  br label %48

48:                                               ; preds = %89, %47
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @nzones, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %92

52:                                               ; preds = %48
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @zones, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %88

59:                                               ; preds = %52
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @zones, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i8**, i8*** %4, align 8
  %66 = load i64, i64* @ZF_NAME, align 8
  %67 = getelementptr inbounds i8*, i8** %65, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @strcmp(i8* %64, i8* %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %59
  %72 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i8**, i8*** %4, align 8
  %74 = load i64, i64* @ZF_NAME, align 8
  %75 = getelementptr inbounds i8*, i8** %73, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @zones, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @zones, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i32, ...) @error(i32 %72, i8* %76, i8* %81, i32 %86)
  store i32 0, i32* %3, align 4
  br label %96

88:                                               ; preds = %59, %52
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %6, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %6, align 8
  br label %48

92:                                               ; preds = %48
  %93 = load i8**, i8*** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @inzsub(i8** %93, i32 %94, i32 0)
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %92, %71, %43, %28, %14
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @error(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @inzsub(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
