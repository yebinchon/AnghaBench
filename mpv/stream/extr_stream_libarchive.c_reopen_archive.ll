; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_libarchive.c_reopen_archive.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_libarchive.c_reopen_archive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, %struct.priv* }
%struct.priv = type { i32, i32, %struct.mp_archive*, i32 }
%struct.mp_archive = type { i32, i32, i32 }

@MP_ARCHIVE_FLAG_UNSAFE = common dso_local global i32 0, align 4
@STREAM_ERROR = common dso_local global i32 0, align 4
@STREAM_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"archive entry not found. '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @reopen_archive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reopen_archive(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.mp_archive*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load %struct.priv*, %struct.priv** %8, align 8
  store %struct.priv* %9, %struct.priv** %4, align 8
  %10 = load %struct.priv*, %struct.priv** %4, align 8
  %11 = getelementptr inbounds %struct.priv, %struct.priv* %10, i32 0, i32 2
  %12 = load %struct.mp_archive*, %struct.mp_archive** %11, align 8
  %13 = call i32 @mp_archive_free(%struct.mp_archive* %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.priv*, %struct.priv** %4, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MP_ARCHIVE_FLAG_UNSAFE, align 4
  %23 = call %struct.mp_archive* @mp_archive_new(i32 %18, i32 %21, i32 %22)
  %24 = load %struct.priv*, %struct.priv** %4, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 2
  store %struct.mp_archive* %23, %struct.mp_archive** %25, align 8
  %26 = load %struct.priv*, %struct.priv** %4, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 2
  %28 = load %struct.mp_archive*, %struct.mp_archive** %27, align 8
  %29 = icmp ne %struct.mp_archive* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @STREAM_ERROR, align 4
  store i32 %31, i32* %2, align 4
  br label %86

32:                                               ; preds = %1
  %33 = load %struct.priv*, %struct.priv** %4, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 2
  %35 = load %struct.mp_archive*, %struct.mp_archive** %34, align 8
  store %struct.mp_archive* %35, %struct.mp_archive** %5, align 8
  br label %36

36:                                               ; preds = %72, %32
  %37 = load %struct.mp_archive*, %struct.mp_archive** %5, align 8
  %38 = call i64 @mp_archive_next_entry(%struct.mp_archive* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %73

40:                                               ; preds = %36
  %41 = load %struct.priv*, %struct.priv** %4, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mp_archive*, %struct.mp_archive** %5, align 8
  %45 = getelementptr inbounds %struct.mp_archive, %struct.mp_archive* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @strcmp(i32 %43, i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %40
  %50 = load %struct.mp_archive*, %struct.mp_archive** %5, align 8
  %51 = getelementptr inbounds %struct.mp_archive, %struct.mp_archive* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @uselocale(i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load %struct.priv*, %struct.priv** %4, align 8
  %55 = getelementptr inbounds %struct.priv, %struct.priv* %54, i32 0, i32 0
  store i32 -1, i32* %55, align 8
  %56 = load %struct.mp_archive*, %struct.mp_archive** %5, align 8
  %57 = getelementptr inbounds %struct.mp_archive, %struct.mp_archive* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @archive_entry_size_is_set(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %49
  %62 = load %struct.mp_archive*, %struct.mp_archive** %5, align 8
  %63 = getelementptr inbounds %struct.mp_archive, %struct.mp_archive* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @archive_entry_size(i32 %64)
  %66 = load %struct.priv*, %struct.priv** %4, align 8
  %67 = getelementptr inbounds %struct.priv, %struct.priv* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %61, %49
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @uselocale(i32 %69)
  %71 = load i32, i32* @STREAM_OK, align 4
  store i32 %71, i32* %2, align 4
  br label %86

72:                                               ; preds = %40
  br label %36

73:                                               ; preds = %36
  %74 = load %struct.priv*, %struct.priv** %4, align 8
  %75 = getelementptr inbounds %struct.priv, %struct.priv* %74, i32 0, i32 2
  %76 = load %struct.mp_archive*, %struct.mp_archive** %75, align 8
  %77 = call i32 @mp_archive_free(%struct.mp_archive* %76)
  %78 = load %struct.priv*, %struct.priv** %4, align 8
  %79 = getelementptr inbounds %struct.priv, %struct.priv* %78, i32 0, i32 2
  store %struct.mp_archive* null, %struct.mp_archive** %79, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = load %struct.priv*, %struct.priv** %4, align 8
  %82 = getelementptr inbounds %struct.priv, %struct.priv* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @MP_ERR(%struct.TYPE_4__* %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @STREAM_ERROR, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %73, %68, %30
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @mp_archive_free(%struct.mp_archive*) #1

declare dso_local %struct.mp_archive* @mp_archive_new(i32, i32, i32) #1

declare dso_local i64 @mp_archive_next_entry(%struct.mp_archive*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @uselocale(i32) #1

declare dso_local i64 @archive_entry_size_is_set(i32) #1

declare dso_local i32 @archive_entry_size(i32) #1

declare dso_local i32 @MP_ERR(%struct.TYPE_4__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
