; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_receivelog.c_close_walfile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_receivelog.c_close_walfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 (i32*)*, i32 (i32*, i32)*, i32 (...)* }

@walfile = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [51 x i8] c"could not determine seek position in file \22%s\22: %s\00", align 1
@current_walfile_name = common dso_local global i32 0, align 4
@CLOSE_UNLINK = common dso_local global i32 0, align 4
@WalSegSz = common dso_local global i32 0, align 4
@CLOSE_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"not renaming \22%s%s\22, segment is not complete\00", align 1
@CLOSE_NO_RENAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"could not close file \22%s\22: %s\00", align 1
@lastFlushPosition = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @close_walfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @close_walfile(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** @walfile, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %110

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32 (i32*)*, i32 (i32*)** %15, align 8
  %17 = load i32*, i32** @walfile, align 8
  %18 = call i32 %16(i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %38

21:                                               ; preds = %11
  %22 = load i32, i32* @current_walfile_name, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i32 (...)*, i32 (...)** %26, align 8
  %28 = call i32 (...) %27()
  %29 = call i32 @pg_log_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32 (i32*, i32)*, i32 (i32*, i32)** %33, align 8
  %35 = load i32*, i32** @walfile, align 8
  %36 = load i32, i32* @CLOSE_UNLINK, align 4
  %37 = call i32 %34(i32* %35, i32 %36)
  store i32* null, i32** @walfile, align 8
  store i32 0, i32* %3, align 4
  br label %110

38:                                               ; preds = %11
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @WalSegSz, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32 (i32*, i32)*, i32 (i32*, i32)** %51, align 8
  %53 = load i32*, i32** @walfile, align 8
  %54 = load i32, i32* @CLOSE_NORMAL, align 4
  %55 = call i32 %52(i32* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %70

56:                                               ; preds = %43
  %57 = load i32, i32* @current_walfile_name, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @pg_log_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %57, i64 %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32 (i32*, i32)*, i32 (i32*, i32)** %65, align 8
  %67 = load i32*, i32** @walfile, align 8
  %68 = load i32, i32* @CLOSE_NO_RENAME, align 4
  %69 = call i32 %66(i32* %67, i32 %68)
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %56, %47
  br label %80

71:                                               ; preds = %38
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32 (i32*, i32)*, i32 (i32*, i32)** %75, align 8
  %77 = load i32*, i32** @walfile, align 8
  %78 = load i32, i32* @CLOSE_NORMAL, align 4
  %79 = call i32 %76(i32* %77, i32 %78)
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %71, %70
  store i32* null, i32** @walfile, align 8
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load i32, i32* @current_walfile_name, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i32 (...)*, i32 (...)** %88, align 8
  %90 = call i32 (...) %89()
  %91 = call i32 @pg_log_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %90)
  store i32 0, i32* %3, align 4
  br label %110

92:                                               ; preds = %80
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @WalSegSz, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %92
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %103 = load i32, i32* @current_walfile_name, align 4
  %104 = call i32 @mark_file_as_archived(%struct.TYPE_6__* %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %110

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107, %96, %92
  %109 = load i32, i32* %5, align 4
  store i32 %109, i32* @lastFlushPosition, align 4
  store i32 1, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %106, %83, %21, %10
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @pg_log_error(i8*, i32, i32) #1

declare dso_local i32 @pg_log_info(i8*, i32, i64) #1

declare dso_local i32 @mark_file_as_archived(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
